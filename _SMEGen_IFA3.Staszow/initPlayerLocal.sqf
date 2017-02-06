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


// load SME.Gen mission params
[] call T8SME_INIT_fnc_params;


// switch player side according to reward set
private _newGroup = createGroup T8SME_param_playerSide;
[ player ] joinSilent _newGroup;


// initialize SME.Gen client
[] spawn T8SME_INIT_fnc_client;


// initialize FAR revive
[] spawn FAR_fnc_INIT;


// roll the intro
if ( isMultiplayer ) then 
{
	if ( isNil "T8SME_client_var_welcomeOnFirstSpawn" ) then
	{
		[] spawn T8SME_client_fnc_welcome;
		T8SME_client_var_welcomeOnFirstSpawn = true;
			
		// clear players inventory
		removeVest player;
		removeUniform player;
		removeHeadgear player;
		removeGoggles player;
		removeBackpack player;
		removeAllWeapons player:
		removeAllItems player;
		removeAllAssignedItems player;

		player forceAddUniform "U_LIB_GER_Schutze";
	};
};


// republish tasks 
if ( _JIP ) then { sleep 5; };
remoteExec [ "T8SME_server_fnc_publishTasks", 2 ];





// END