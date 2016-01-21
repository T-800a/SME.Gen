/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_checkSwitchSeat.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	vehicle: Object - Vehicle to which the event handler is assigned.
    unit1: Object - Unit switching seat.
    unit2: Object - Unit switching seat.

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


private [ "_position", "_type", "_classes", "_whiteListCheck", "_msg" ];

params [
	[ "_vehicle",	objNull, [ objNull ]],
	[ "_unit1",		objNull, [ objNull ]],
	[ "_unit2",		objNull, [ objNull ]]
];

if ( isNull _unit1 AND isNull _unit2 ) exitWith {};
if ( isNull _vehicle ) exitWith {};

_type		= _vehicle getVariable [ "T8SME_client_var_isRestrictedVehicle", "" ];
_classes	= getArray	( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> _type );

if ( _type isEqualTo "" ) exitWith {};
if (( count _classes ) isEqualTo 0 ) exitWith {};

if (( _unit1 isEqualTo player ) OR ( _unit2 isEqualTo player )) then
{
	_whiteListCheck = false; 
	{ if ( player isKindOf _x ) exitWith { _whiteListCheck = true; }; false } count _classes;
	if ( _whiteListCheck ) exitWith {};

	_position = assignedVehicleRole player;
		
	if ( toLower ( _position select 0 ) isEqualTo "cargo" ) exitWith {};
	if ( toLower ( _position select 0 ) isEqualTo "turret" AND {(( _position select 1 ) select 0 ) > 0 }) exitWith {};

	_msg = localize "STR_SMEGen_vehicleRestricted";
	[ 1, _msg, 0 ] spawn T8C_fnc_hintProcess;

	_vehicle spawn 
	{
		player allowDamage false;
		player action [ "GetOut", _this ];
		sleep 0.5;
		player action [ "GetInCargo", _this, 0 ];
		player allowDamage true;
	};
};









