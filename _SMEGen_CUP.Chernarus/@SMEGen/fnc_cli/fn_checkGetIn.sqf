/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_checkGetIn.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	vehicle: Object - Vehicle the event handler is assigned to
	position: String - Can be either "driver", "gunner", "commander" or "cargo"
	unit: Object - Unit that entered the vehicle

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


private [ "_type", "_classes", "_whiteListCheck", "_msg" ];

params [
	[ "_vehicle", objNull, [ objNull ]],
	[ "_position", "driver", [""]],
	[ "_unit", objNull, [ objNull ]]
];

if ( isNull _unit ) exitWith {};
if ( isNull _vehicle ) exitWith {};
if !( _unit isEqualTo player ) exitWith {};
if ( toLower _position isEqualTo "cargo" ) exitWith {};

_position = assignedVehicleRole player;
if ( toLower ( _position select 0 ) isEqualTo "turret" AND {(( _position select 1 ) select 0 ) > 0 }) exitWith {};

_type = _vehicle getVariable [ "T8SME_client_var_isRestrictedVehicle", "" ];
if ( _type isEqualTo "" ) exitWith {};
_classes = getArray	( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> _type );
if ( count _classes < 1 ) exitWith {};

_whiteListCheck = false; 
{ if ( player isKindOf _x ) exitWith { _whiteListCheck = true; }; false } count _classes;
if ( _whiteListCheck ) exitWith {};

_msg = localize "STR_SMEGen_vehicleRestricted";
[ 1, _msg, 0 ] spawn T8C_fnc_hintProcess;

player action [ "GetOut", vehicle player ];
