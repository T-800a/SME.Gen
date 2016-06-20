/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	onPlayerRespawn.sqf
	Author:		T-800a

 =======================================================================================================================
*/

params [
	[ "_newUnit", objNull, [ objNull ]],
	[ "_oldUnit", objNull, [ objNull ]]
];

if ( !isNull _oldUnit ) then { deleteVehicle _oldUnit; };

if ( isMultiplayer ) then 
{
	if ( T8SME_param_keepRespawnLoadout AND { !isNil "T8SME_client_var_playerLoadout" }) then 
	{
		[ _newUnit, T8SME_client_var_playerLoadout ] call T8C_fnc_setGear;
		T8SME_client_var_playerLoadout = nil;
		
	} else {
	
		// clear players inventory
		removeVest _newUnit;
		removeHeadgear _newUnit;
		removeBackpack _newUnit;
		removeAllWeapons _newUnit:
		removeAllItems _newUnit;
		_newUnit unlinkItem "NVGoggles";
		_newUnit unlinkItem "NVGoggles_OPFOR";
		_newUnit unlinkItem "NVGoggles_INDEP";		
	};
};


// no shooting in base
if ( _newUnit getVariable [ "mission_var_firedEH", true ]) then 
{
	_newUnit setVariable [ "mission_var_firedEH", false ];
	_newUnit addEventHandler [ "fired", {
		private [ "_safeZonePosition", "_range" ];
		_safeZonePosition = ( getMarkerPos "mission_marker_arsenal" );
		_range = 150;
		if (((_this select 0) distance _safeZonePosition <= _range) || ((screenToWorld [0.5, 0.5]) distance _safeZonePosition <= _range)) exitWith { deleteVehicle (_this select 6 );};
	}];
};


// preset taskforce radio channel
private _swRadioArray =  [[ 1, "100.1" ], [ 2, "120.3" ], [ 3, "140.5" ], [ 4, "160.7" ], [ 5, "180.9" ], [ 6, "200.1" ], [ 7, "220.3" ], [ 8, "240.5" ], [ 9, "260.5" ]];
private _lrRadioArray =  [[ 1, "40.1" ],  [ 2, "45.3" ],  [ 3, "50.5" ],  [ 4, "55.7" ],  [ 5, "60.9" ],  [ 6, "65.1" ],  [ 7, "70.3" ],  [ 8, "75.5" ],  [ 9, "80.5" ]];

if ( !isNil "TFAR_fnc_haveSwRadio" ) then 
{
	waitUntil { sleep 5; call TFAR_fnc_haveSwRadio };
	{[( [] call TFAR_fnc_activeSwRadio ), ( _x select 0 ), ( _x select 1 )] call TFAR_fnc_SetChannelFrequency; } count _swRadioArray;
	if ( call TFAR_fnc_haveLrRadio ) then { {[( [] call TFAR_fnc_activeLrRadio ), ( _x select 0 ), ( _x select 1 )] call TFAR_fnc_SetChannelFrequency; } count _lrRadioArray; };
};