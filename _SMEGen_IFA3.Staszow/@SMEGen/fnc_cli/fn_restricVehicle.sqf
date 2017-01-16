/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_restricVehicle.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

params [
	[ "_vehicle", objNull, [ objNull ]],
	[ "_type", "", [""]]
];

if ( isNull _vehicle ) exitWith {};
if ( _type isEqualTo "" ) exitWith {};

_vehicle setVariable [ "T8SME_client_var_isRestrictedVehicle", _type, false ];

_vehicle addEventHandler [ "GetIn",				{ _this call T8SME_client_fnc_checkGetIn; }];
_vehicle addEventHandler [ "SeatSwitched",		{ _this call T8SME_client_fnc_checkSwitchSeat; }];
 
