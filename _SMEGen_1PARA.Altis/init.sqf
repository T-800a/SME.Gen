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
ASC_PlayerArray		= [ "s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12","s13","s14","s15","s16","s17","s18","mission_pilot_01","mission_pilot_02" ];

SAG_respawn_west			= [ WEST,		"SAG_west" ]		call BIS_fnc_addRespawnPosition;
// SAG_respawn_east			= [ EAST,		"SAG_east" ]		call BIS_fnc_addRespawnPosition;
// SAG_respawn_indi			= [ RESISTANCE,	"SAG_indep" ]		call BIS_fnc_addRespawnPosition;
SAG_respawn_civi			= [ CIVILIAN,	"SAG_civi" ]		call BIS_fnc_addRespawnPosition;

SAG_playerLoadout	= [];


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





