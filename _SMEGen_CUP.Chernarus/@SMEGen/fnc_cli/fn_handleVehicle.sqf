/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
 
	File:		fn_handleVehicle.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

private [ "_vehicles"  ];

params [
	[ "_vehicle", objNull, [ objNull ]],
	[ "_restric", "", [ "" ]]
];

__DEBUG( __FILE__, "INIT: _this", _this );

if ( isNull _vehicle ) exitWith {};

if ( isNil "T8SME_client_var_drawVehiclesMap" ) then { T8SME_client_var_drawVehiclesMap = []; };


if !( _restric isEqualTo "" ) then { [ _vehicle, _restric ] call T8SME_client_fnc_restricVehicle; };

_vehicles = [];
if ( !isNil "T8SME_server_var_objectReward01" ) then { _vehicles pushBack T8SME_server_var_objectReward01; };
if ( !isNil "T8SME_server_var_objectReward02" ) then { _vehicles pushBack T8SME_server_var_objectReward02; };
if ( !isNil "T8SME_server_var_objectReward03" ) then { _vehicles pushBack T8SME_server_var_objectReward03; };


if !( _vehicle in _vehicles) then { T8SME_client_var_drawVehiclesMap = T8SME_client_var_drawVehiclesMap - [objNull]; T8SME_client_var_drawVehiclesMap pushBack _vehicle; };

