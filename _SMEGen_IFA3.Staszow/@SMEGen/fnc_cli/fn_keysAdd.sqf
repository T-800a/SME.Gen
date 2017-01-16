/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_keysAdd.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

if ( isNil "T8SME_client_var_inAction" ) then { T8SME_client_var_inAction = false; };

waitUntil { sleep 1; !isNull ( findDisplay 46 ) };
( findDisplay 46 ) displayAddEventHandler [ "KeyDown", "_this call T8SME_client_fnc_keysPress" ];

