/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_getVehicleGroup.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

params [[ "_type", "ERROR", [""]], [ "_group", "ERROR", [""]]];

if ( _type isEqualTo "ERROR" ) exitWith { nil };
if ( _group isEqualTo "ERROR" ) exitWith { nil };

private _return			= true;
private _vehicleGroup	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _group >> "vehicleGroup" );

if ( _type isEqualTo "ERROR" ) exitWith { _return };

switch ( _vehicleGroup ) do
{
	case 0 :	{ _return = true; };
	case 1 :	{ _return = false; };
	default		{ _return = true; };
};

// return
_return
