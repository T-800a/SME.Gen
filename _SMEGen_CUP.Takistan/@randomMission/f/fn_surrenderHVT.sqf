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

private [ "_var", "_objs", "_unit" ];

DEBUG( __FILE__, "INIT", _this );

params [[ "_site", "", [""]]];

if ( _site isEqualTo "" ) exitWith {};

_var = format [ "OBJECTIVE_intelHVT_%1", _site ];	
_objs = missionNamespace getVariable [ _var, []];
_unit = ( _objs select 0 );

if ( !isNil "ACE_captives_fnc_setSurrendered" ) then 
{
	[ _unit, true ] call ACE_captives_fnc_setSurrendered;
	
} else {

	if ( local _unit ) then
	{
		_unit setCaptive true;
		[ _unit ] join grpNull;		
		_unit disableAI "ANIM";
		_unit disableAI "TARGET";
		_unit disableAI "AUTOTARGET";
	};
	
	_unit switchMove "";
	_unit playActionNow "Surrender";
};
