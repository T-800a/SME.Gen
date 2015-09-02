/*
 =======================================================================================================================

	@client
	
	File:		fn_checkSwitchSeat.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	vehicle: Object - Vehicle to which the event handler is assigned.
    unit1: Object - Unit switching seat.
    unit2: Object - Unit switching seat.

=======================================================================================================================
*/

private [ "_vehicle", "_position", "_unit", "_type", "_classes", "_whiteListCheck", "_msg" ];

_vehicle	= param [ 0, objNull, [ objNull ]];
_unit1		= param [ 1, objNull, [ objNull ]];
_unit2		= param [ 2, objNull, [ objNull ]];

hint str _this;

if ( isNull _unit1 AND isNull _unit2 ) exitWith {};
if ( isNull _vehicle ) exitWith {};

_type = _vehicle getVariable [ "T8C_var_isRestrictedVehicle", "" ];
if ( _type isEqualTo "" ) exitWith {};
_classes = getArray	( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> _type );
if ( count _classes < 1 ) exitWith {};

if (( _unit1 isEqualTo player ) OR ( _unit2 isEqualTo player )) then
{
	_whiteListCheck = false; 
	{ if ( player isKindOf _x ) exitWith { _whiteListCheck = true; }; false } count _classes;
	if ( _whiteListCheck ) exitWith {};

	_position = assignedVehicleRole player;
	if ( _position isEqualTo "cargo" ) exitWith {};

	_msg = localize "STR_SMEGen_vehicleRestricted";
	[ 1, _msg, 0 ] spawn T8C_fnc_hintProcess;
	player action [ "GetOut", vehicle player ];
};









