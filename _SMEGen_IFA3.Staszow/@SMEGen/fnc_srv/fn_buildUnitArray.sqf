/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_buildUnitArray.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_returnArray" ];

params [[ "_originArray", [], [[]]]];
_returnArray	= [];

{
	private [ "_class" ];
	_class = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8SME_param_enemyFaction >> "units" >> _x );
	_returnArray pushBack _class;
	false
} count _originArray;

__DEBUG( __FILE__, "_originArray", _originArray );
__DEBUG( __FILE__, "_returnArray", _returnArray );

// return
_returnArray
