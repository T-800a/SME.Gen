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

private [ "_playerPos", "_playerDir", "_objectPos", "_object" ];

_playerPos = getPos player;
_playerDir = getDir player;

_objectPos = [];
_n = 1;

while { count _objectPos < 1 } do
{
	private [ "_relPos", "_tmpPos" ];
	
	_relPos = [ _playerPos , random 300 , random 360 ] call BIS_fnc_relPos;
	_tmpPos = _relPos findEmptyPosition [ 5, 50, "Land_VR_Block_02_F" ];
	
	_ftxt = format [ "T8RMG >> fn_testFnc.sqf >>>>> %1 >> _this >> %2 >> %3", ( round diag_fps ), _n, [ _tmpPos, isOnRoad _tmpPos, surfaceIsWater _tmpPos ] ]; conFile( _ftxt );
	
	if ( count _tmpPos > 1 AND { !isOnRoad _tmpPos } AND { !surfaceIsWater _tmpPos }) then { _objectPos = _tmpPos; };
	if ( _n > 100 ) exitWith {};
	_n = _n + 1;
};


// return position
if ( count _objectPos > 1 ) exitWith { _objectPos };

// or bool
false
