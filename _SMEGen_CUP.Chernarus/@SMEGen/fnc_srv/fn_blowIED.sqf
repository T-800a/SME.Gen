/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_blowIED.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_var", "_obj" ];

params [[ "_site", "", [""]]];

if ( _site isEqualTo "" ) exitWith {};

_var = format [ "OBJECTIVE_roadIEDintel_IED_%1", _site ];	
_obj = missionNamespace getVariable [ _var, objNull ];

__DEBUG( __FILE__, "_var", _var );
__DEBUG( __FILE__, "_obj", _obj );

_obj setDamage 1;
