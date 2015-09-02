/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_checkFlatGround.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_pos", "_normal", "_check", "_return" ];

_pos = _this select 0;

_normal		= surfaceNormal _pos;
_check		= ( _normal select 2 ) * 1000;

_return = if ( _check > 995 ) then { true } else { false };

// _ftxt = format [ "T8RMG >> fn_checkFlatGround.sqf >>>>> %1 >> _return / _check >> %2 / %3", ( round diag_fps ), _return, _check ]; conFile( _ftxt );

// Return
_return
