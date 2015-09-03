/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_findObjectivePos.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_pos", "_range", "_playerDir", "_objectPos", "_object", "_debug" ];

_pos		= _this select 0;
_range		= _this select 1;

_objectPos = [];
_n = 1;

while { count _objectPos < 1 } do
{
	private [ "_relPos", "_tmpPos" ];
	
	_relPos = [ _pos , random ( _range * 0.75 ), random 360 ] call BIS_fnc_relPos;
	_tmpPos = _relPos findEmptyPosition [ 5, 50, "Land_VR_Block_02_F" ];
	
	_debug = [_n, [ _tmpPos, isOnRoad _tmpPos, surfaceIsWater _tmpPos, [ _tmpPos ] call T8RMG_fnc_checkFlatGround, [ _tmpPos ] call T8RMG_fnc_checkOutside ]];
	DEBUG( __FILE__, "_debug", _debug );
	
	if ( count _tmpPos > 1 AND { !isOnRoad _tmpPos } AND { !surfaceIsWater _tmpPos } AND { [ _tmpPos ] call T8RMG_fnc_checkFlatGround } AND { !([ _tmpPos ] call T8RMG_fnc_checkOutside )}) then { _objectPos = _tmpPos; };
	if ( _n > 100 ) exitWith {};
	_n = _n + 1;
};

DEBUG( __FILE__, "_objectPos", _objectPos );

// return position
if ( count _objectPos > 1 ) exitWith { _objectPos };

// or bool
false
