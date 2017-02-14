/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleVehicles.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private _arrayVehicles	= [];
private _players		= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};
private _configArray	= "true" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionVehicles" );

{ _arrayVehicles pushback ( configName _x ); false } count _configArray;

{
	private _respawn		= false;
	private _vehicle		= _x;
	private _type			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionVehicles" >> _vehicle >> "type" );
	private _spawn			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionVehicles" >> _vehicle >> "spawn" );
	private _whiteList		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionVehicles" >> _vehicle >> "whiteList" );
	private _mobileRespawn	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionVehicles" >> _vehicle >> "mobileRespawn" );
	private _mobileArsenal	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionVehicles" >> _vehicle >> "mobileArsenal" );

	_mobileRespawn = if ( _mobileRespawn > 0 ) then { true } else { false };
	_mobileArsenal = if ( _mobileArsenal > 0 ) then { true } else { false };
	
	private _missionVehicle = __GetMVAR( _vehicle, objNull );

	// various basic checks
	private _nearPlayer1000 = ({( _missionVehicle distance2D ( getPos _x )) < 1000 } count _players );
	private _nearPlayer2000 = ({( _missionVehicle distance2D ( getPos _x )) < 2000 } count _players );
	private _nearBase = if ( _missionVehicle distance2D mission_homebase < 1000 ) then { true } else { false };
		
	__DEBUG( __FILE__, "CHECK", _vehicle );
	__DEBUG( __FILE__, "CHECK 1000", _nearPlayer1000 );
	__DEBUG( __FILE__, "CHECK 2000", _nearPlayer2000 );
	__DEBUG( __FILE__, "CHECK _nearBase", _nearBase );


	// check if left behind
	if ( ! _nearBase AND { _nearPlayer2000 < 1 }) then 
	{
		__DEBUG( __FILE__, "CHECK T8SME_object_var_leftBehindTime", __GetOVAR( _missionVehicle, "T8SME_object_var_leftBehindTime", -1 ));
		
		if ( __GetOVAR( _missionVehicle, "T8SME_object_var_leftBehindTime", -1 ) < 0 ) then { __SetOVAR( _missionVehicle, "T8SME_object_var_leftBehindTime", time ); };
		if ( __GetOVAR( _missionVehicle, "T8SME_object_var_leftBehindTime", -1 ) < ( time - 60 )) then { _respawn = true };

	} else {
		__SetOVAR( _missionVehicle, "T8SME_object_var_leftBehindTime", -1 );
	};

	// check if "disabled and left behind"
	if ( !( canMove _missionVehicle ) AND { _nearPlayer1000 < 1 }) then { _respawn = true };

	// check if "no fuel and left behind"
	if (( fuel _missionVehicle ) isEqualTo 0 AND { _nearPlayer1000 < 1 }) then { _respawn = true };

	// check if "dead"
	if ( !alive _missionVehicle ) then { _respawn = true; };

	// try to re-spawn the vehicle
	if ( _respawn ) then
	{
		if !( isNull _missionVehicle ) then { deleteVehicle _missionVehicle; sleep 0.5; };
				
		if ( !( getMarkerPos _spawn isEqualTo [0,0,0]) AND { count (( getMarkerPos _spawn ) nearObjects [ "AllVehicles", 7 ] ) < 1 }) then
		{
			private _vehicleObj = createVehicle [ _type, getMarkerPos _spawn, [], 0, "NONE" ];
			_vehicleObj setdir ( markerDir _spawn );
			{ _x addCuratorEditableObjects [ [ _vehicleObj ], true ]; false } count allCurators;

			if ( _mobileRespawn ) then { [ T8SME_param_playerSide, _vehicleObj, "" ] call BIS_fnc_addRespawnPosition; };
			if ( _mobileArsenal ) then { __SetOVARG( _vehicleObj, "T8SME_object_var_isArsenal", true );};

			__SetMVAR( _vehicle, _vehicleObj );
			
			[ __GetMVAR( _vehicle, objNull ), _whiteList ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, format [ "JIPID_%1", _vehicle ]];

			// parse hint
			private _displayName = getText ( configfile >> "CfgVehicles" >> _type >> "displayName" );
			private _text = "";

			switch true do
			{
				case ( _mobileRespawn AND !_mobileArsenal ):	{ _text = localize "STR_SMEGen_hint_vehicleRespawn_HQ"; };
				case ( !_mobileRespawn AND _mobileArsenal ):	{ _text = localize "STR_SMEGen_hint_vehicleRespawn_AR" };
				case ( _mobileRespawn AND _mobileArsenal ):		{ _text = localize "STR_SMEGen_hint_vehicleRespawn_HQAR" };
				default											{ _text = localize "STR_SMEGen_hint_vehicleRespawn"; };
			};

			private _hint = format [ _text, _displayName ];	
			[ 1, _hint, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
			
			__DEBUG( __FILE__, "SPAWNED", _vehicle );
		} else { [ 1, "##### ERROR #####<br/>RESPAWNING a VEHICLE!<br/>Respawn Position may be blocked!", 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; };
	};

	false
} count _arrayVehicles;


// 
true
