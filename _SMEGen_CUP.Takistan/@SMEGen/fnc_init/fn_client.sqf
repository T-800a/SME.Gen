/*
 =======================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	INIT Client
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================
*/ 

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


// check slots restrictions
[] call T8SME_client_fnc_checkSlots;


// INIT Arsenal
[ "INIT" ] call T8SME_client_fnc_updateArsenal;


// add key presses
[] spawn T8SME_client_fnc_keysAdd;


// add diary entries
[] call T8SME_client_fnc_addDiary;


// start map markers if enabled
if ( T8SME_server_var_allowMapMarker ) then
{
	waitUntil {sleep 0.1; !(isNull (findDisplay 12))};
	( ( findDisplay 12 ) displayCtrl 51 ) ctrlAddEventHandler [ "Draw", T8SME_client_fnc_drawMapIcons ];
};


// debug add keys for missionSites export
if !( isMultiplayer ) exitWith { waitUntil { !isNil "T8SME_server_var_arraycleanup" }; [] spawn T8C_fnc_debugKeysAdd; [] spawn T8C_fnc_debugSiteMarkers; };