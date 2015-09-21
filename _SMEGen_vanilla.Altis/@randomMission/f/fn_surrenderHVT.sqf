/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_surrenderHVT.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_var", "_objs" ];

DEBUG( __FILE__, "INIT", _this );

params [[ "_site", "", [""]]];

if ( _site isEqualTo "" ) exitWith {};

_var = format [ "OBJECTIVE_intelHVT_%1", _site ];	
_objs = missionNamespace getVariable [ _var, []];

[( _objs select 0 ), true ] call ACE_captives_fnc_setSurrendered;
