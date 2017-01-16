/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER
 
	File:		fn_shuffleArray.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

params [[ "_array", [], [[]]]];
private _return = [];

while {( count _array ) > 0 } do
{
	private _e = selectRandom _array;
	_array deleteAt ( _array find _e );
	_return pushBack _e;
};

// _return deleteRange [ 0, ( 5 + floor ( random 5 ))] ;

// return
_return
