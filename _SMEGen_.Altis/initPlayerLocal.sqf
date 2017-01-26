/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initPlayerLocal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

params [
	[ "_player", objNull, [ objNull ]],
	[ "_JIP", false, [ true ]]
];


#include <initParams.sqf>



// initialize SME.Gen client
[] spawn T8SME_INIT_fnc_client;

// initialize FAR revive
[] spawn FAR_fnc_INIT;

// switch player side according to reward set
private _newGroup = createGroup T8SME_param_playerFaction;
[ player ] joinSilent _newGroup;

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

if ( _JIP ) then { sleep 5; };

remoteExec [ "T8SME_server_fnc_publishTasks", 2 ]; 