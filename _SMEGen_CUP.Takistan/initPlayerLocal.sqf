/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initPlayerLocal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <initParams.sqf>


// initialize BIS Dynamic Groups
waitUntil { !isNil "bis_fnc_init" };
waitUntil { !isNull player AND { isPlayer player } AND { alive player }};
[ "InitializePlayer", [ player ]] call BIS_fnc_dynamicGroups;  



