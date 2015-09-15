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

private [ "_vehicle", "_restric" ];

_vehicle = param [ 0, objNull, [ objNull ]];
_restric = param [ 1, "", [ "" ]];

DEBUG( __FILE__, "INIT: _this", _this );

if ( isNull _vehicle ) exitWith {};

if !( _restric isEqualTo "" ) then { [ _vehicle, _restric ] call T8C_fnc_restricVehicle; };
if !( _vehicle in [ T8RMG_var_objectReward01, T8RMG_var_objectReward02, T8RMG_var_objectReward03 ]) then { T8C_var_drawVehiclesMap = T8C_var_drawVehiclesMap - [objNull]; T8C_var_drawVehiclesMap pushBack _vehicle; };