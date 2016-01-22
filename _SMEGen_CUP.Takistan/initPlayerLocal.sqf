/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initPlayerLocal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


#include <initParams.sqf>


// initialize SME.Gen client
[] spawn T8SME_INIT_fnc_client;

// initialize FAR revive
[] spawn FAR_fnc_INIT;