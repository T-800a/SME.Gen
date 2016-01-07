/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initServer.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <initParams.sqf>


// initialize BIS Dynamic Groups
waitUntil { !isNil "bis_fnc_init" };
[ "Initialize" ] call BIS_fnc_dynamicGroups; 


// initialize locations ( mostly build BLUFOR HQ structures )
[] execVM "locations\init.sqf";


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
[] execVM "scripts\garbageCollector.sqf";

