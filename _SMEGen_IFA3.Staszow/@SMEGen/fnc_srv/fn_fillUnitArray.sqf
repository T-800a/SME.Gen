/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_fillUnitArray.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

params [
	[ "_unitsArray", [], [[]]],
	[ "_fillerArray", [], [[]]]
];

// if filler units available adjust groupsize on playercount
if ( count _fillerArray > 0 ) then 
{
	private [ "_playerCount", "_groupCount", "_mod" ];
	_playerCount = if ( isMultiplayer ) then { count allPlayers } else { count ( units ( group player ))};
	_groupCount = count _units;
	_mod = ceil(((( _playerCount /_modPlayer ) * 2 ) * (( _groupCount / _modGroup ) * 2 )) * 2 );
	
	__DEBUG( __FILE__, "MOD GROUP SIZE: _playerCount", _playerCount );
	__DEBUG( __FILE__, "MOD GROUP SIZE: _modPlayer", _modPlayer );
	__DEBUG( __FILE__, "MOD GROUP SIZE: _groupCount", _groupCount );
	__DEBUG( __FILE__, "MOD GROUP SIZE: _modGroup", _modGroup );
	__DEBUG( __FILE__, "MOD GROUP SIZE: _mod", _mod );
	
	for "_i" from 1 to _mod do
	{
		if ( _i > 32 ) exitWith {};
		private [ "_filler" ];
		_filler = _fillerArray call BIS_fnc_selectRandom;
		_unitsArray pushBack _filler;
		__DEBUG( __FILE__, "ADD UNIT TO GROUP", _filler );
	};
	
	__DEBUG( __FILE__, "____________NEW GROUP SIZE: _groupCount", count _unitsArray );
};

// return
_unitsArray
