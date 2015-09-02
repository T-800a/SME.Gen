/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_checkOutside.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_pos", "_posGroundASL", "_posSkyASL", "_return" ];

_pos = _this select 0;

_posGroundASL	= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 2 ];
_posSkyASL		= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 50 ];

_return = lineIntersects [ _posGroundASL, _posSkyASL ];

// Return
_return
