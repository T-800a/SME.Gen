/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initServer.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <initParams.sqf>

waitUntil { !isNil "bis_fnc_init" };


// initialize BIS Dynamic Groups 
["Initialize"] call BIS_fnc_dynamicGroups; 


// initialize locations (mostly build BLUFOR HQ)
[] execVM "locations\init.sqf";

waitUntil { !isNil "T8_locations_var_initDONE" };


// initialize the mission generator
[] spawn T8SME_server_fnc_INIT;


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
sleep 60; [] execVM "scripts\garbageCollector.sqf";

