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

params [ "_pos" ];

private _posGroundASL	= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 0.1 ];
private _posSkyASL		= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 200 ];
private _return			= lineIntersects [ _posGroundASL, _posSkyASL ];

// Return
_return
