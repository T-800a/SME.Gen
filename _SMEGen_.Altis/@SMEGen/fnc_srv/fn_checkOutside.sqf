/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_checkOutside.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_posGroundASL", "_posSkyASL", "_return" ];

params [ "_pos" ];

_posGroundASL	= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 0.2 ];
_posSkyASL		= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 40 ];

_return = lineIntersects [ _posGroundASL, _posSkyASL ];

// Return
_return
