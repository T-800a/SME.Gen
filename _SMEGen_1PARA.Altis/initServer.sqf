/*
 =======================================================================================================

		File:		init_server.sqf
 
 =======================================================================================================
*/

waitUntil { !isNil "bis_fnc_init" };

// BIS Dynamic Groups 
["Initialize"] call BIS_fnc_dynamicGroups; 


// ASC @server starten
[] execVM "@server\init.sqf";

waitUntil { !isNil "T8S_var_initDONE" };

[] execVM "@randomMission\init.sqf";
[] execVM "T8_missionEXEC.sqf";


// Delete Bodies and Items after some time
sleep 60;

[] execVM "scripts\garbageCollector.sqf";

