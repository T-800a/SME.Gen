/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initPlayerLocal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

waitUntil { !isNil "bis_fnc_init" };
waitUntil { !isNull player AND { isPlayer player } AND { alive player }};


#include <initParams.sqf>


// initialize SME.Gen client
[] spawn T8SME_INIT_fnc_client;


// initialize BIS Dynamic Groups
[ "InitializePlayer", [ player ]] spawn BIS_fnc_dynamicGroups;  

