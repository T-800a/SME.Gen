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

if ( isMultiplayer ) then 
{
	if ( isNil "T8SME_client_var_welcomeOnFirstSpawn" ) then
	{
		[] spawn T8SME_client_fnc_welcome;
		T8SME_client_var_welcomeOnFirstSpawn = true;
			
		// clear players inventory
		removeVest player;
		removeHeadgear player;
		removeBackpack player;
		removeAllWeapons player:
		removeAllItems player;
		player unlinkItem "NVGoggles";
		player unlinkItem "NVGoggles_OPFOR";
		player unlinkItem "NVGoggles_INDEP";
	};
};