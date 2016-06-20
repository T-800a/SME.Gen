/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_unlockUGV.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_var", "_ugv" ];
__DEBUG( __FILE__, "INIT", _this );

params [ "_siteMkr" ];

_var = format [ "OBJECTIVE_recoverUGV_%1", _siteMkr ];

_ugv = missionNamespace getVariable [ _var, objNull ];

if ( isNull _ugv ) exitWith {};

createVehicleCrew _ugv;
_ugv setCaptive true;

[ 1, 6, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 

// or bool
false
