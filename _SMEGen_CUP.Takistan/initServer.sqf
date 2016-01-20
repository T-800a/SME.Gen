/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initServer.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

waitUntil { !isNil "bis_fnc_init" };


#include <initParams.sqf>


// initialize SME.Gen server
[] spawn T8SME_INIT_fnc_server;


// initialize locations ( mostly build BLUFOR HQ structures )
[] execVM "locations\init.sqf";


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
[] execVM "scripts\garbageCollector.sqf";


// initialize BIS Dynamic Groups
[ "Initialize" ] spawn BIS_fnc_dynamicGroups; 