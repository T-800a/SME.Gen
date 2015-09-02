/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_findObjectivePos.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_pos", "_range", "_playerDir", "_objectPos", "_object" ];

_pos		= _this select 0;
_range		= _this select 1;

_objectPos = [];
_n = 1;

while { count _objectPos < 1 } do
{
	private [ "_relPos", "_tmpPos" ];
	
	_relPos = [ _pos , random ( _range * 0.75 ), random 360 ] call BIS_fnc_relPos;
	_tmpPos = _relPos findEmptyPosition [ 5, 50, "Land_VR_Block_02_F" ];
	
	// _ftxt = format [ "T8RMG >> fn_findObjectivePos.sqf >>>>> %1 >> _this >> %2 >> %3", ( round diag_fps ), _n, [ _tmpPos, isOnRoad _tmpPos, surfaceIsWater _tmpPos ] ]; conFile( _ftxt );
	
	if ( count _tmpPos > 1 AND { !isOnRoad _tmpPos } AND { !surfaceIsWater _tmpPos } AND { [ _tmpPos ] call T8RMG_fnc_checkFlatGround } AND { !([ _tmpPos ] call T8RMG_fnc_checkOutside )}) then { _objectPos = _tmpPos; };
	if ( _n > 100 ) exitWith {};
	_n = _n + 1;
};

_ftxt = format [ "T8RMG >> fn_findObjectivePos.sqf >>>>> %1 >> _objectPos >> %2", ( round diag_fps ), _objectPos ]; conFile( _ftxt );

// return position
if ( count _objectPos > 1 ) exitWith { _objectPos };

// or bool
false
