/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	File:		fn_restricVehicle.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

params [
	[ "_vehicle", objNull, [ objNull ]],
	[ "_type", "", [""]]
];

if ( isNull _vehicle ) exitWith {};
if ( _type isEqualTo "" ) exitWith {};

_vehicle setVariable [ "T8C_var_isRestrictedVehicle", _type, false ];

_vehicle addEventHandler [ "GetIn",				{ _this call T8C_fnc_checkGetIn; }];
_vehicle addEventHandler [ "SeatSwitched",		{ _this call T8C_fnc_checkSwitchSeat; }];
 
