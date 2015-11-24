/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	onPlayerRespawn.sqf
	Author:		T-800a

 =======================================================================================================================
*/

private [ "_newUnit", "_oldUnit", "_swRadioArray", "_lrRadioArray" ];

_newUnit = _this select 0;
_oldUnit = _this select 1;

_swRadioArray =  [[ 1, "100.1" ], [ 2, "120.3" ], [ 3, "140.5" ], [ 4, "160.7" ], [ 5, "180.9" ], [ 6, "200.1" ], [ 7, "220.3" ], [ 8, "240.5" ], [ 9, "260.5" ]];
_lrRadioArray =  [[ 1, "40.1" ],  [ 2, "45.3" ],  [ 3, "50.5" ],  [ 4, "55.7" ],  [ 5, "60.9" ],  [ 6, "65.1" ],  [ 7, "70.3" ],  [ 8, "75.5" ],  [ 9, "80.5" ]];

if ( !isNil "_oldUnit" AND { !isNull _oldUnit }) then { deleteVehicle _oldUnit; };

if ( isMultiplayer AND { isNil "T8C_var_welcomeOnFirstSpawn" }) then { [] spawn T8C_fnc_welcome; T8C_var_welcomeOnFirstSpawn = true; };

// no shooting in base
if ( _newUnit getVariable [ "mission_var_firedEH", true ]) then 
{
	_newUnit setVariable [ "mission_var_firedEH", false ];
	_newUnit addEventHandler [ "fired", {
		private [ "_safeZonePosition", "_range" ];
		_safeZonePosition = ( getMarkerPos "mission_marker_west" );
		_range = 150;
		if (((_this select 0) distance _safeZonePosition <= _range) || ((screenToWorld [0.5, 0.5]) distance _safeZonePosition <= _range)) exitWith { deleteVehicle (_this select 6 );};
	}];
};

if ( !isNil "TFAR_fnc_haveSwRadio" ) then 
{
	waitUntil { sleep 5; call TFAR_fnc_haveSwRadio };
	{[( [] call TFAR_fnc_activeSwRadio ), ( _x select 0 ), ( _x select 1 )] call TFAR_fnc_SetChannelFrequency; } count _swRadioArray;
	if ( call TFAR_fnc_haveLrRadio ) then { {[( [] call TFAR_fnc_activeLrRadio ), ( _x select 0 ), ( _x select 1 )] call TFAR_fnc_SetChannelFrequency; } count _lrRadioArray; };
};