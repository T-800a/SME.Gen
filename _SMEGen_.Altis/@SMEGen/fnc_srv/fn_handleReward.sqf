/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleReward.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	// var to stor obj
	T8SME_server_var_objectReward01
	T8SME_server_var_objectReward02
	T8SME_server_var_objectReward03
	
	// rewards
	T8SME_server_var_classReward01
	T8SME_server_var_classReward02
	T8SME_server_var_classReward03
	
	// positions
	mission_reward_spawn_01
	mission_reward_spawn_02
	mission_reward_spawn_03
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private _amount					= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "serverRewardSuccesses" );
private _succsesses				= __GetMVAR( "T8SME_server_var_missionSuccesses", 1 );

__DEBUG( __FILE__, "_succsesses", _succsesses );
__DEBUG( __FILE__, "_amount", _amount );

if ( _succsesses < _amount ) exitWith { __SetMVAR( "T8SME_server_var_missionSuccesses", ( _succsesses + 1 )); };

__SetMVAR( "T8SME_server_var_missionSuccesses", 1 );

private _rewardSpawned	= false;
private _arrayVehicles	= [];
private _players		= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};
private _configArray	= "true" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionRewardVehicles" );

{ _arrayVehicles pushback ( configName _x ); false } count _configArray;

{
	private _respawn		= false;
	private _vehicle		= _x;
	private _type			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionRewardVehicles" >> _vehicle >> "type" );
	private _spawn			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionRewardVehicles" >> _vehicle >> "spawn" );
	private _whiteList		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionRewardVehicles" >> _vehicle >> "whiteList" );
	private _mobileRespawn	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionRewardVehicles" >> _vehicle >> "mobileRespawn" );
	private _mobileArsenal	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "missionRewardVehicles" >> _vehicle >> "mobileArsenal" );

	_mobileRespawn = if ( _mobileRespawn > 0 ) then { true } else { false };
	_mobileArsenal = if ( _mobileArsenal > 0 ) then { true } else { false };
	
	private _missionVehicle = __GetMVAR( _vehicle, objNull );

	__DEBUG( __FILE__, "CHECK", _vehicle );

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
				case ( _mobileRespawn AND !_mobileArsenal ):	{ _text = localize "STR_SMEGen_hint_vehicleRewardRespawn_HQ"; };
				case ( !_mobileRespawn AND _mobileArsenal ):	{ _text = localize "STR_SMEGen_hint_vehicleRewardRespawn_AR" };
				case ( _mobileRespawn AND _mobileArsenal ):		{ _text = localize "STR_SMEGen_hint_vehicleRewardRespawn_HQAR" };
				default											{ _text = localize "STR_SMEGen_hint_vehicleRewardRespawn"; };
			};

			private _hint = format [ _text, _displayName ];	
			[ 1, _hint, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
			
			_rewardSpawned = true;
			
			__DEBUG( __FILE__, "SPAWNED", _vehicle );
		} else { [ 1, "##### ERROR #####<br/>RESPAWNING a VEHICLE!<br/>Respawn Position may be blocked!", 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; };
	};

	if ( _rewardSpawned ) exitWith {};
	
	false
} count _arrayVehicles;


// or bool
true
