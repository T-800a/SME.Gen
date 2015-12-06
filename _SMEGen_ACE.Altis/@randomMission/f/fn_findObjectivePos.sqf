/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator=
 
	File:		fn_findObjectivePos.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#include <..\MACRO.hpp>

private [ "_playerDir", "_objectPos", "_object", "_debug", "_minDis" ];

params [ "_pos", "_range" ];

_objectPos = [];
_n = 1;
_minDis = 20;

while { count _objectPos < 1 } do
{
	private [ "_relPos", "_tmpPos" ];
	
	_relPos = [ _pos , random _range, random 360 ] call BIS_fnc_relPos;
	_tmpPos = _relPos findEmptyPosition [ 5, 50, "Land_Cargo_Tower_V1_F" ];
	
	
	if ( 	count _tmpPos > 1 
			AND { !isOnRoad _tmpPos }
			AND { !surfaceIsWater _tmpPos }
			AND { ( _tmpPos distance ( nearestObject _tmpPos )) > _minDis }
			AND { [ _tmpPos ] call T8RMG_fnc_checkFlatGround }
			AND { !([ _tmpPos ] call T8RMG_fnc_checkOutside )}
	) then { _objectPos = _tmpPos; };
	
	if ( _n isEqualTo 300 ) then { _minDis = 10; };
	if ( _n isEqualTo 400 ) then { _minDis = 1; };
	if ( _n > 500 ) exitWith {};
	_n = _n + 1;
};

__DEBUG( __FILE__, "_n", _n );
__DEBUG( __FILE__, "_minDis", _minDis );
__DEBUG( __FILE__, "_objectPos", _objectPos );

// return position
if ( count _objectPos > 1 ) exitWith { _objectPos };

// or bool
false
