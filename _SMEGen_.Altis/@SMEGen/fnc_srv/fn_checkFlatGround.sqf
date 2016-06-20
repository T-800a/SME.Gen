/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_checkFlatGround.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_check", "_return" ];

params [
	[ "_pos", [], [[]]],
	[ "_level", "FLAT", [""]]
];

_check		= (( surfaceNormal _pos ) select 2 ) * 1000;

switch ( _level ) do
{
	case "STEEP" :	{ _return = if ( _check > 900 ) then { true } else { false }; };
	case "LIGHT" :	{ _return = if ( _check > 950 ) then { true } else { false }; };
	case "FLAT" :	{ _return = if ( _check > 985 ) then { true } else { false }; };
	default			{ _return = if ( _check > 985 ) then { true } else { false }; };
};


// Return
_return
