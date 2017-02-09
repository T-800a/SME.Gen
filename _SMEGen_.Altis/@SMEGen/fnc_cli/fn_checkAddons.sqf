/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_checkAddons.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

private _efa = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8SME_param_enemyFaction >> "addon" );
private _pfa = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "addon" );

private _isLoadedEFA = if ( isClass ( configFile >> "CfgPatches" >> _efa ) OR { _efa isEqualTo "" }) then { true } else { false };
private _isLoadedPFA = if ( isClass ( configFile >> "CfgPatches" >> _pfa ) OR { _pfa isEqualTo "" }) then { true } else { false };

private _return = if ( !_isLoadedEFA OR !_isLoadedPFA ) then { true } else { false };


__DEBUG( __FILE__, "+------------------------------", "" );
__DEBUG( __FILE__, "| ADDON CHECK - CLIENT", "" );
__DEBUG( __FILE__, "| ADDON ERROR", _return );
__DEBUG( __FILE__, "+------------------------------", "" );


// end mission for Players is addon missing
if ( _return ) then { [ "MissingAddon", false, 2 ] call BIS_fnc_endMission; };


// Return
_return
