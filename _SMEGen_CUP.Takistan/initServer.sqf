/*
 =======================================================================================================================

	@randomMission
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


// initialize  @server stuff (mostly build BLUFOR HQ)
[] execVM "@server\init.sqf";
waitUntil { !isNil "T8S_var_initDONE" };


// initialize the mission generator
[] execVM "@randomMission\init.sqf";


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
sleep 60; [] execVM "scripts\garbageCollector.sqf";

