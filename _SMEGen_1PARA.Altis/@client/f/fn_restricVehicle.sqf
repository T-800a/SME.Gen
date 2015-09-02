/*
 =======================================================================================================================

	@client
	
	File:		fn_restricVehicle.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

=======================================================================================================================
*/

private [ "_vehicle", "_type" ];

_vehicle	= param [ 0, objNull, [ objNull ]];
_type		= param [ 1, "", [""]];

if ( isNull _vehicle ) exitWith {};
if ( _type isEqualTo "" ) exitWith {};

_vehicle setVariable [ "T8C_var_isRestrictedVehicle", _type, false ];

_vehicle addEventHandler [ "GetIn",				{ _this call T8C_fnc_checkGetIn; }];
_vehicle addEventHandler [ "SeatSwitched",		{ _this call T8C_fnc_checkSwitchSeat; }];
 
