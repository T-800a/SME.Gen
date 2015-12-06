/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

// GLOBAL Settings

// TFAR Settings
tf_no_auto_long_range_radio		= true;
// set all TFAR radios to same encryption
tf_west_radio_code				= "encrypt_alliance";
tf_east_radio_code				= "encrypt_alliance";
tf_guer_radio_code				= "encrypt_alliance";

// viewDistance settings (addons / scripts)
tawvd_disablenone	= true;
CHVD_allowNoGrass	= false;		// Set 'false' if you want to disable "None" option for terrain (default: true)
CHVD_maxView		= 3500;			// Set maximum view distance (default: 12000)
CHVD_maxObj			= 2500;			// Set maximimum object view distance (default: 12000)

CIVILIAN setFriend [ WEST, 1 ];
CIVILIAN setFriend [ EAST, 1 ];
CIVILIAN setFriend [ RESISTANCE, 1 ];

// Hide markers
// { _x setMarkerAlpha 0; } count [ "opfor_kata", "opfor_poli", "opfor_ther" ];

waitUntil { !isNil "bis_fnc_init" };
waitUntil { !isNil "ASC_NH_var_initDONE" };


////// ONLY Client
//if ( ! isDedicated  ) then { [] execVM "init_client.sqf"; };
// NEW -> initPlayerLocal.sqf

////// ONLY Server
// if ( isServer ) then { [] execVM "init_server.sqf"; };
// NEW -> initServer.sqf


////// Client AND Server





