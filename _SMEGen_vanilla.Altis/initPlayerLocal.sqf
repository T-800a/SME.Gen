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


// BIS Dynamic Groups 
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;  


// initialize @client
[] execVM "@client\init.sqf";



if ( isMultiplayer ) then
{
	// clear players inventory
	removeVest player;
	removeBackpack player;
	removeAllWeapons player:
	removeAllItems player;
	removeAllAssignedItems player;
};