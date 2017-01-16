/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_checkSlots.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


private [ "_allowedUIDs" ];

switch ( true ) do
{
    case ( !isNil "mission_admin_01" AND { player isEqualTo mission_admin_01 }) : { _allowedUIDs = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "adminWhitelist" ); };
    case ( !isNil "mission_pilot_01" AND { player isEqualTo mission_pilot_01 }) : { _allowedUIDs = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "pilotWhitelist01" ); };
    case ( !isNil "mission_pilot_02" AND { player isEqualTo mission_pilot_02 }) : { _allowedUIDs = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "pilotWhitelist02" ); };
    default { _allowedUIDs = []; };
};

if ( count _allowedUIDs isEqualTo 0 ) exitWith {};
if (( getPlayerUID player ) in _allowedUIDs ) exitWith {};
if !( isMultiplayer ) exitWith {};

[ "RestrictedSlot", false, 2 ] call BIS_fnc_endMission;