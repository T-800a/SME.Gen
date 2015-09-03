/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );


waitUntil { !isNil "T8U_var_InitDONE" };

// init functions
if ( isnil "T8RMG_fnc_checkFlatGround" )	then { T8RMG_fnc_checkFlatGround	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_checkFlatGround.sqf" ); };
if ( isnil "T8RMG_fnc_checkOutside" )		then { T8RMG_fnc_checkOutside		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_checkOutside.sqf" ); };
if ( isnil "T8RMG_fnc_cleanUP" )			then { T8RMG_fnc_cleanUP			= compile preProcessFileLineNumbers ( "@randomMission\f\fn_cleanUP.sqf" ); };
if ( isnil "T8RMG_fnc_createMarker" )		then { T8RMG_fnc_createMarker		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createMarker.sqf" ); };
if ( isnil "T8RMG_fnc_createAO" )			then { T8RMG_fnc_createAO			= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createAO.sqf" ); };
if ( isnil "T8RMG_fnc_createConvoy" )		then { T8RMG_fnc_createConvoy		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createConvoy.sqf" ); };
if ( isnil "T8RMG_fnc_createAmmoDump" )		then { T8RMG_fnc_createAmmoDump		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createAmmoDump.sqf" ); };
if ( isnil "T8RMG_fnc_createFuelDump" )		then { T8RMG_fnc_createFuelDump		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createFuelDump.sqf" ); };
if ( isnil "T8RMG_fnc_createRoadblock" )	then { T8RMG_fnc_createRoadblock	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createRoadblock.sqf" ); };
if ( isnil "T8RMG_fnc_createMortarPos" )	then { T8RMG_fnc_createMortarPos	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createMortarPos.sqf" ); };
if ( isnil "T8RMG_fnc_findObjectivePos" )	then { T8RMG_fnc_findObjectivePos	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_findObjectivePos.sqf" ); };
if ( isnil "T8RMG_fnc_handleReward" )		then { T8RMG_fnc_handleReward		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_handleReward.sqf" ); };
if ( isnil "T8RMG_fnc_handleConditions" )	then { T8RMG_fnc_handleConditions	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_handleConditions.sqf" ); };
if ( isnil "T8RMG_fnc_handleNewTasks" )		then { T8RMG_fnc_handleNewTasks		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_handleNewTasks.sqf" ); };

// for temp testing
if ( isnil "T8RMG_fnc_testFnc" )			then { T8RMG_fnc_testFnc			= compile preProcessFileLineNumbers ( "@randomMission\f\fn_testFnc.sqf" ); };
if ( isnil "T8RMG_fnc_debug" )				then { T8RMG_fnc_debug				= compile preProcessFileLineNumbers ( "@randomMission\f\fn_debug.sqf" ); };

// init variables
if ( isNil "T8RMG_var_arraySitesBlacklist" ) then { T8RMG_var_arraySitesBlacklist = []; };
if ( isNil "T8RMG_var_objectReward01" ) then { T8RMG_var_objectReward01 = objNull; };
if ( isNil "T8RMG_var_objectReward02" ) then { T8RMG_var_objectReward02 = objNull; };
if ( isNil "T8RMG_var_objectReward03" ) then { T8RMG_var_objectReward03 = objNull; };

T8RMG_var_amountSites		= getNumber	( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesCount" );
T8RMG_var_arrayConditions	= [];
T8RMG_var_arraySites		= [];
T8RMG_var_arrayCleanup		= [];
T8RMG_var_arrayTypes		= [];

DEBUG( __FILE__, "=======================================================================================================================", "" );
DEBUG( __FILE__, "MAIN INIT", "SEM.Gen" );
DEBUG( __FILE__, "=======================================================================================================================", "" );

// spawn loop to handle conditions of created tasks
[] spawn T8RMG_fnc_handleConditions;

// start initial tasks set
[] call T8RMG_fnc_handleNewTasks;

T8RMG_var_INITDONE = true;
publicVariable "T8RMG_var_INITDONE";
