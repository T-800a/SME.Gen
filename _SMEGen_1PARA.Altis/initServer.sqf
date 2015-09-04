/*
 =======================================================================================================

		File:		init_server.sqf
 
 =======================================================================================================
*/

waitUntil { !isNil "bis_fnc_init" };


// initialize BIS Dynamic Groups 
["Initialize"] call BIS_fnc_dynamicGroups; 


// initialize  @server stuff (mostly build BLUFOR HQ)
[] execVM "@server\init.sqf";
waitUntil { !isNil "T8S_var_initDONE" };


// initialize T8 Units Script
[] execVM "T8_UnitsINIT.sqf";


// initialize the mission generator
[] execVM "@randomMission\init.sqf";


// not really needed here ...
[] execVM "T8_missionEXEC.sqf";


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
sleep 60; [] execVM "scripts\garbageCollector.sqf";

