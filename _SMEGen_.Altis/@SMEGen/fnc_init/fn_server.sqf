/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	INIT Server
 
	File:		fn_INIT.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

// wait for Parameters
waitUntil { !isNil "T8SME_param_INIT" };

// we need T8Units to be initializes for SME.Gen
waitUntil { !isNil "T8U_var_InitDONE" };

if ( !isMultiplayer ) then { "debug_console" callExtension ("C"); }; 
__DEBUG( __FILE__, "=======================================================================================================================", "" );
__DEBUG( __FILE__, "MAIN INIT", "SEM.Gen" );
__DEBUG( __FILE__, "=======================================================================================================================", "" );


// handle textures for signs / billboards
[] spawn T8SME_server_fnc_handleDisplays;


// spawn loop to handle conditions of created tasks
[] spawn T8SME_server_fnc_handleConditions;


if ( isMultiplayer ) then { waitUntil {( count allPlayers ) > 0 }; };

// start initial tasks set
[] call T8SME_server_fnc_handleNewTasks;

// Init Vehicles
[ mission_veh_01 ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictMissionVeh01" ];
[ mission_veh_02 ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictMissionVeh02" ];
[ mission_veh_03 ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictMissionVeh03" ];
[ mission_heli_01, "whitelistHelicopter" ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictMissionHeli01" ];


// automatically register all units with all curators
[] spawn T8C_fnc_registerUnitsCurator;


// remove disco bodies
addMissionEventHandler [ "HandleDisconnect", { _this spawn { sleep 2; deleteVehicle ( _this select 0 ); }; } ];




