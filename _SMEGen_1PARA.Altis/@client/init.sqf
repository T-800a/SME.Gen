/*
=======================================================================================================

	@client
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

=======================================================================================================
*/ 

T8C_dir_ROOT = "@client\";
T8C_dir_FNCS = "f\";

// if ( isNil "T8C_fnc_execServer" ) then { T8C_fnc_execServer = compile preProcessFileLineNumbers ( T8C_dir_ROOT + T8C_dir_FNCS + "fn_execServer.sqf" ); };

if ( isNil "T8C_fnc_addMapClick" ) then {			T8C_fnc_addMapClick = compile preProcessFileLineNumbers (			T8C_dir_ROOT + T8C_dir_FNCS + "fn_addMapClick.sqf" ); };
if ( isNil "T8C_fnc_removeMapClick" ) then {		T8C_fnc_removeMapClick = compile preProcessFileLineNumbers (		T8C_dir_ROOT + T8C_dir_FNCS + "fn_removeMapClick.sqf" ); };
if ( isNil "T8C_fnc_onMapClick" ) then {			T8C_fnc_onMapClick = compile preProcessFileLineNumbers (			T8C_dir_ROOT + T8C_dir_FNCS + "fn_onMapClick.sqf" ); };
if ( isNil "T8C_fnc_switchFarSuicide" ) then {		T8C_fnc_switchFarSuicide = compile preProcessFileLineNumbers (		T8C_dir_ROOT + T8C_dir_FNCS + "fn_switchFarSuicide.sqf" ); };

if ( isNil "T8C_fnc_hintProcess" ) then {			T8C_fnc_hintProcess = compile preProcessFileLineNumbers (			T8C_dir_ROOT + T8C_dir_FNCS + "fn_hintProcess.sqf" ); };
if ( isNil "T8C_fnc_hintShow" ) then {				T8C_fnc_hintShow = compile preProcessFileLineNumbers (				T8C_dir_ROOT + T8C_dir_FNCS + "fn_hintShow.sqf" ); };

if ( isNil "T8C_fnc_drawMapIcons" ) then {			T8C_fnc_drawMapIcons = compile preProcessFileLineNumbers (			T8C_dir_ROOT + T8C_dir_FNCS + "fn_drawMapIcons.sqf" ); };

if ( isNil "T8C_fnc_checkSlots" ) then {			T8C_fnc_checkSlots = compile preProcessFileLineNumbers (			T8C_dir_ROOT + T8C_dir_FNCS + "fn_checkSlots.sqf" ); };
if ( isNil "T8C_fnc_restricVehicle" ) then {		T8C_fnc_restricVehicle = compile preProcessFileLineNumbers (		T8C_dir_ROOT + T8C_dir_FNCS + "fn_restricVehicle.sqf" ); };
if ( isNil "T8C_fnc_checkGetIn" ) then {			T8C_fnc_checkGetIn = compile preProcessFileLineNumbers (			T8C_dir_ROOT + T8C_dir_FNCS + "fn_checkGetIn.sqf" ); };
if ( isNil "T8C_fnc_checkSwitchSeat" ) then {		T8C_fnc_checkSwitchSeat = compile preProcessFileLineNumbers (		T8C_dir_ROOT + T8C_dir_FNCS + "fn_checkSwitchSeat.sqf" ); };

// hint config
#include <hintConfig.sqf>



T8C_var_initDONE = true;

///// ALL INIT DONE /////////////////////////////////////////////////////////////////////////////////////////////////////

// check slots restrictions
[] call T8C_fnc_checkSlots;

// create vehicle restrictions
[ mission_heli_01, "whitelistHelicopter" ] call T8C_fnc_restricVehicle;



#include <CIM_admin.sqf>


waitUntil {sleep 0.1; !(isNull (findDisplay 12))};
( ( findDisplay 12 ) displayCtrl 51 ) ctrlAddEventHandler [ "Draw", T8C_fnc_drawMapIcons ];