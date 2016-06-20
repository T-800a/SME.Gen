/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_debugKeysAdd.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if ( isMultiplayer ) exitWith {};
if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


waitUntil { sleep 1; !isNull ( findDisplay 46 ) };
( findDisplay 46 ) displayAddEventHandler [ "KeyDown", "_this call T8SME_client_fnc_debugKeysPress" ];

waitUntil { sleep 1; !isNull ( findDisplay 312 ) };
( findDisplay 312 ) displayAddEventHandler [ "KeyDown", "_this call T8SME_client_fnc_debugKeysPress" ];
