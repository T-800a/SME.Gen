/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initServer.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


// load SME.Gen mission params
[] call T8SME_INIT_fnc_params;


// check for missing addons
if ( call T8SME_server_fnc_checkAddons ) exitWith {};


// initialize SME.Gen server
[] spawn T8SME_INIT_fnc_server;


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
[] execVM "scripts\garbageCollector.sqf";


