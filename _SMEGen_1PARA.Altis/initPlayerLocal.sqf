/*
 =======================================================================================================

		File:		init_client.sqf

 =======================================================================================================
*/

waitUntil { !isNil "bis_fnc_init" };
waitUntil { !isNull player AND { isPlayer player } AND { alive player }};

// BIS Dynamic Groups 
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;  

// @client scripts: Admin CIM ...
[] execVM "@client\init.sqf";