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

private [ "_normal", "_check", "_return" ];

params [ "_pos" ];

_normal		= surfaceNormal _pos;
_check		= ( _normal select 2 ) * 1000;


_return = if ( _check > 985 ) then { true } else { false };


// Return
_return
