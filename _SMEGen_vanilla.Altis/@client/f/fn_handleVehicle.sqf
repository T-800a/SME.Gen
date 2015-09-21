/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_handleVehicle.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_vehicles"  ];

params [
	[ "_vehicle", objNull, [ objNull ]],
	[ "_restric", "", [ "" ]]
];

DEBUG( __FILE__, "INIT: _this", _this );

if ( isNull _vehicle ) exitWith {};

if ( isNil "T8C_var_drawVehiclesMap" ) then { T8C_var_drawVehiclesMap = []; };


if !( _restric isEqualTo "" ) then { [ _vehicle, _restric ] call T8C_fnc_restricVehicle; };

_vehicles = [];
if ( !isNil "T8RMG_var_objectReward01" ) then { _vehicles pushBack T8RMG_var_objectReward01; };
if ( !isNil "T8RMG_var_objectReward02" ) then { _vehicles pushBack T8RMG_var_objectReward02; };
if ( !isNil "T8RMG_var_objectReward03" ) then { _vehicles pushBack T8RMG_var_objectReward03; };


if !( _vehicle in _vehicles) then { T8C_var_drawVehiclesMap = T8C_var_drawVehiclesMap - [objNull]; T8C_var_drawVehiclesMap pushBack _vehicle; };

