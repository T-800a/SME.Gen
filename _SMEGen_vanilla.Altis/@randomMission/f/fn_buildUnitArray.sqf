/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_buildUnitArray.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) // [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_returnArray" ];

params [[ "_originArray", [], [[]]]];
_returnArray	= [];

{
	private [ "_class" ];
	_class = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8RMG_var_enemyFaction >> "units" >> _x );
	_returnArray pushBack _class;
	false
} count _originArray;

__DEBUG( __FILE__, "_originArray", _originArray );
__DEBUG( __FILE__, "_returnArray", _returnArray );

// return
_returnArray
