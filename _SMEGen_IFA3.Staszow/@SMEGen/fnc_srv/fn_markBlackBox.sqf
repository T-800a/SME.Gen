/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER
 
	File:		fn_markBlackBox.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

__DEBUG( __FILE__, "INIT", _this );

params [[ "_site", "", [""]]];

if ( _site isEqualTo "" ) exitWith {};

private _var = format [ "OBJECTIVE_heliCrash_%1", _site ];
private _obj = missionNamespace getVariable [ _var, objNull ];

createVehicle [ "Chemlight_red", ([ getPos _obj ,( 2 + ( random 4 )), random 360 ] call BIS_fnc_relPos ), [], 0, "NONE"];
createVehicle [ "SmokeShellRed", ([ getPos _obj ,( 2 + ( random 4 )), random 360 ] call BIS_fnc_relPos ), [], 0, "NONE"];