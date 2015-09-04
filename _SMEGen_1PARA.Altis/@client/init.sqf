/*
 =======================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================
*/ 

#define ROOTDIR "@client\f\"
#define CFPPFLN compileFinal preProcessFileLineNumbers
#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

// if ( isNil "T8C_fnc_execServer" ) then { T8C_fnc_execServer = CFPPFLN ( ROOTDIR + "fn_execServer.sqf" ); };

if ( isNil "T8C_fnc_addMapClick" )			then { T8C_fnc_addMapClick			= CFPPFLN ( ROOTDIR + "fn_addMapClick.sqf" ); };
if ( isNil "T8C_fnc_removeMapClick" )		then { T8C_fnc_removeMapClick		= CFPPFLN ( ROOTDIR + "fn_removeMapClick.sqf" ); };
if ( isNil "T8C_fnc_onMapClick" )			then { T8C_fnc_onMapClick			= CFPPFLN ( ROOTDIR + "fn_onMapClick.sqf" ); };
if ( isNil "T8C_fnc_switchFarSuicide" )		then { T8C_fnc_switchFarSuicide		= CFPPFLN ( ROOTDIR + "fn_switchFarSuicide.sqf" ); };

if ( isNil "T8C_fnc_hintProcess" )			then { T8C_fnc_hintProcess			= CFPPFLN ( ROOTDIR + "fn_hintProcess.sqf" ); };
if ( isNil "T8C_fnc_hintShow" )				then { T8C_fnc_hintShow				= CFPPFLN ( ROOTDIR + "fn_hintShow.sqf" ); };

if ( isNil "T8C_fnc_drawMapIcons" )			then { T8C_fnc_drawMapIcons			= CFPPFLN ( ROOTDIR + "fn_drawMapIcons.sqf" ); };

if ( isNil "T8C_fnc_checkSlots" )			then { T8C_fnc_checkSlots			= CFPPFLN ( ROOTDIR + "fn_checkSlots.sqf" ); };
if ( isNil "T8C_fnc_restricVehicle" )		then { T8C_fnc_restricVehicle		= CFPPFLN ( ROOTDIR + "fn_restricVehicle.sqf" ); };
if ( isNil "T8C_fnc_checkGetIn" )			then { T8C_fnc_checkGetIn			= CFPPFLN ( ROOTDIR + "fn_checkGetIn.sqf" ); };
if ( isNil "T8C_fnc_checkSwitchSeat" )		then { T8C_fnc_checkSwitchSeat		= CFPPFLN ( ROOTDIR + "fn_checkSwitchSeat.sqf" ); };

if ( isnil "T8C_fnc_handleReward" )			then { T8C_fnc_handleReward			= CFPPFLN ( ROOTDIR + "fn_handleReward.sqf" ); };
if ( isnil "T8C_fnc_debug" )				then { T8C_fnc_debug				= CFPPFLN ( ROOTDIR + "fn_debug.sqf" ); };


// hint config
#include <hintConfig.sqf>



T8C_var_initDONE = true;

///// ALL INIT DONE /////////////////////////////////////////////////////////////////////////////////////////////////////

// check slots restrictions
[] call T8C_fnc_checkSlots;

// create vehicle restrictions
[ mission_heli_01, "whitelistHelicopter" ] call T8C_fnc_restricVehicle;


// 1PARA Relic!
#include <CIM_admin.sqf>


waitUntil {sleep 0.1; !(isNull (findDisplay 12))};
( ( findDisplay 12 ) displayCtrl 51 ) ctrlAddEventHandler [ "Draw", T8C_fnc_drawMapIcons ];