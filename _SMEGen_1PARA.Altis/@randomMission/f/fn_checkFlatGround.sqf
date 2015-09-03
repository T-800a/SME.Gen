/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_checkFlatGround.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_pos", "_normal", "_check", "_return" ];

_pos = _this select 0;

_normal		= surfaceNormal _pos;
_check		= ( _normal select 2 ) * 1000;

_return = if ( _check > 995 ) then { true } else { false };


// Return
_return
