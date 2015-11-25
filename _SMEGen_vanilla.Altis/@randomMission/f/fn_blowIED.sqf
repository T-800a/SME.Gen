/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_blowIED.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_var", "_obj" ];

params [[ "_site", "", [""]]];

if ( _site isEqualTo "" ) exitWith {};

_var = format [ "OBJECTIVE_roadIEDintel_IED_%1", _site ];	
_obj = missionNamespace getVariable [ _var, objNull ];

__DEBUG( __FILE__, "_var", _var );
__DEBUG( __FILE__, "_obj", _obj );

_obj setDamage 1;
