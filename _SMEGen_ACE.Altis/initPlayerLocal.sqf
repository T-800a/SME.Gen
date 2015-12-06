/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		initPlayerLocal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <initParams.sqf>

waitUntil { !isNil "bis_fnc_init" };
waitUntil { !isNull player AND { isPlayer player } AND { alive player }};

// initialize @client
[] execVM "@client\init.sqf";

// BIS Dynamic Groups 
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;  




