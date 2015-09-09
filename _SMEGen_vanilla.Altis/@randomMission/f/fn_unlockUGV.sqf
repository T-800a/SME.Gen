/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_unlockUGV.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_siteMkr", "_var", "_ugv" ];
DEBUG( __FILE__, "INIT", _this );

_siteMkr = _this select 0;
_var = format [ "OBJECTIVE_recoverUGV_%1", _siteMkr ];

_ugv = missionNamespace getVariable [ _var, objNull ];

if ( isNull _ugv ) exitWith {};

createVehicleCrew _ugv;
_ugv setCaptive true;

[ 1, 6, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 

// or bool
false