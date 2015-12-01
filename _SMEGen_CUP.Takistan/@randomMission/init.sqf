/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

waitUntil { !isNil "T8U_var_InitDONE" };

// init variables
if ( isNil "T8RMG_var_arraySitesBlacklist" )	then { T8RMG_var_arraySitesBlacklist = []; };
if ( isNil "T8RMG_var_objectReward01" )			then { T8RMG_var_objectReward01 = objNull; };
if ( isNil "T8RMG_var_objectReward02" )			then { T8RMG_var_objectReward02 = objNull; };
if ( isNil "T8RMG_var_objectReward03" )			then { T8RMG_var_objectReward03 = objNull; };

T8RMG_var_arrayConditions	= [];
T8RMG_var_arraySites		= [];
T8RMG_var_arrayCleanup		= [];
T8RMG_var_arrayTypes		= [];

if ( !isMultiplayer ) then { "debug_console" callExtension ("C"); }; 

__DEBUG( __FILE__, "=======================================================================================================================", "" );
__DEBUG( __FILE__, "MAIN INIT", "SEM.Gen" );
__DEBUG( __FILE__, "=======================================================================================================================", "" );


// handle textures for signs / billboards
[] spawn T8RMG_fnc_handleDisplays;


// spawn loop to handle conditions of created tasks
[] spawn T8RMG_fnc_handleConditions;


// start initial tasks set
[] call T8RMG_fnc_handleNewTasks;

// Init Vehicles
[ mission_veh_01 ] remoteExec [ "T8C_fnc_handleVehicle", 0, "JIPID_restrictMissionVeh01" ];
[ mission_veh_02 ] remoteExec [ "T8C_fnc_handleVehicle", 0, "JIPID_restrictMissionVeh02" ];
[ mission_veh_03 ] remoteExec [ "T8C_fnc_handleVehicle", 0, "JIPID_restrictMissionVeh03" ];
[ mission_heli_01, "whitelistHelicopter" ] remoteExec [ "T8C_fnc_handleVehicle", 0, "JIPID_restrictMissionHeli01" ];


T8RMG_var_INITDONE = true;
publicVariable "T8RMG_var_INITDONE";






