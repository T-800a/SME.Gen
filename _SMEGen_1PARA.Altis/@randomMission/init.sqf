/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define ROOTDIR "@RandomMission\f\"
#define CFPPFLN compileFinal preProcessFileLineNumbers
#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

waitUntil { !isNil "T8U_var_InitDONE" };

// init functions
if ( isnil "T8RMG_fnc_buildUnitArray" )		then { T8RMG_fnc_buildUnitArray		= CFPPFLN ( ROOTDIR + "fn_buildUnitArray.sqf" ); };
if ( isnil "T8RMG_fnc_checkFlatGround" )	then { T8RMG_fnc_checkFlatGround	= CFPPFLN ( ROOTDIR + "fn_checkFlatGround.sqf" ); };
if ( isnil "T8RMG_fnc_checkOutside" )		then { T8RMG_fnc_checkOutside		= CFPPFLN ( ROOTDIR + "fn_checkOutside.sqf" ); };
if ( isnil "T8RMG_fnc_cleanUP" )			then { T8RMG_fnc_cleanUP			= CFPPFLN ( ROOTDIR + "fn_cleanUP.sqf" ); };
if ( isnil "T8RMG_fnc_createMarker" )		then { T8RMG_fnc_createMarker		= CFPPFLN ( ROOTDIR + "fn_createMarker.sqf" ); };
if ( isnil "T8RMG_fnc_createAO" )			then { T8RMG_fnc_createAO			= CFPPFLN ( ROOTDIR + "fn_createAO.sqf" ); };
if ( isnil "T8RMG_fnc_createGetIntel" )		then { T8RMG_fnc_createGetIntel		= CFPPFLN ( ROOTDIR + "fn_createGetIntel.sqf" ); };
if ( isnil "T8RMG_fnc_createHVT" )			then { T8RMG_fnc_createHVT			= CFPPFLN ( ROOTDIR + "fn_createHVT.sqf" ); };
if ( isnil "T8RMG_fnc_createAttack" )		then { T8RMG_fnc_createAttack		= CFPPFLN ( ROOTDIR + "fn_createAttack.sqf" ); };
if ( isnil "T8RMG_fnc_createConvoy" )		then { T8RMG_fnc_createConvoy		= CFPPFLN ( ROOTDIR + "fn_createConvoy.sqf" ); };
if ( isnil "T8RMG_fnc_createAmmoDump" )		then { T8RMG_fnc_createAmmoDump		= CFPPFLN ( ROOTDIR + "fn_createAmmoDump.sqf" ); };
if ( isnil "T8RMG_fnc_createFuelDump" )		then { T8RMG_fnc_createFuelDump		= CFPPFLN ( ROOTDIR + "fn_createFuelDump.sqf" ); };
if ( isnil "T8RMG_fnc_createRadioTower" )	then { T8RMG_fnc_createRadioTower	= CFPPFLN ( ROOTDIR + "fn_createRadioTower.sqf" ); };
if ( isnil "T8RMG_fnc_createRecoverUGV" )	then { T8RMG_fnc_createRecoverUGV	= CFPPFLN ( ROOTDIR + "fn_createRecoverUGV.sqf" ); };
if ( isnil "T8RMG_fnc_createRoadblock" )	then { T8RMG_fnc_createRoadblock	= CFPPFLN ( ROOTDIR + "fn_createRoadblock.sqf" ); };
if ( isnil "T8RMG_fnc_createMortarPos" )	then { T8RMG_fnc_createMortarPos	= CFPPFLN ( ROOTDIR + "fn_createMortarPos.sqf" ); };
if ( isnil "T8RMG_fnc_findObjectivePos" )	then { T8RMG_fnc_findObjectivePos	= CFPPFLN ( ROOTDIR + "fn_findObjectivePos.sqf" ); };
if ( isnil "T8RMG_fnc_handleReward" )		then { T8RMG_fnc_handleReward		= CFPPFLN ( ROOTDIR + "fn_handleReward.sqf" ); };
if ( isnil "T8RMG_fnc_handleConditions" )	then { T8RMG_fnc_handleConditions	= CFPPFLN ( ROOTDIR + "fn_handleConditions.sqf" ); };
if ( isnil "T8RMG_fnc_handleNewTasks" )		then { T8RMG_fnc_handleNewTasks		= CFPPFLN ( ROOTDIR + "fn_handleNewTasks.sqf" ); };
if ( isnil "T8RMG_fnc_handleDisplays" )		then { T8RMG_fnc_handleDisplays		= CFPPFLN ( ROOTDIR + "fn_handleDisplays.sqf" ); };

// for temp testing
if ( isnil "T8RMG_fnc_testFnc" )			then { T8RMG_fnc_testFnc			= CFPPFLN ( ROOTDIR + "fn_testFnc.sqf" ); };
if ( isnil "T8RMG_fnc_debug" )				then { T8RMG_fnc_debug				= CFPPFLN ( ROOTDIR + "fn_debug.sqf" ); };

// init variables
if ( isNil "T8RMG_var_arraySitesBlacklist" )	then { T8RMG_var_arraySitesBlacklist = []; };
if ( isNil "T8RMG_var_objectReward01" )			then { T8RMG_var_objectReward01 = objNull; };
if ( isNil "T8RMG_var_objectReward02" )			then { T8RMG_var_objectReward02 = objNull; };
if ( isNil "T8RMG_var_objectReward03" )			then { T8RMG_var_objectReward03 = objNull; };

T8RMG_var_amountSites		= getNumber	( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesCount" );
T8RMG_var_arrayConditions	= [];
T8RMG_var_arraySites		= [];
T8RMG_var_arrayCleanup		= [];
T8RMG_var_arrayTypes		= [];

DEBUG( __FILE__, "=======================================================================================================================", "" );
DEBUG( __FILE__, "MAIN INIT", "SEM.Gen" );
DEBUG( __FILE__, "=======================================================================================================================", "" );


// handle textures for signs / billboards
[] spawn T8RMG_fnc_handleDisplays;


// spawn loop to handle conditions of created tasks
[] spawn T8RMG_fnc_handleConditions;


// start initial tasks set
[] call T8RMG_fnc_handleNewTasks;


T8RMG_var_INITDONE = true;
publicVariable "T8RMG_var_INITDONE";






