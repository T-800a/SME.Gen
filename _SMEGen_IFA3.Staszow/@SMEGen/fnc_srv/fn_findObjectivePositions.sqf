/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_findObjectivePositions.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	!!!   W A R N I N G   !!!
	this function is slow as fuck!
	Especially in populated areas / towns!
	Use with caution!
	
	NEVERNEVEREVER use it as call in non-scheduled enviroment, it will freeze the game for seconds!
	
	The function is intended to find a safe, flat and empty spawn positon for objects / small object compilations 
	without the risk of spawning these objects in other map objects.
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [	"_msg", "_startTime", "_posTime", "_return", "_rad", "_arrayBasePos", "_arrayRoadPos", "_arrayBuildingPos", 
			"_arrayPosGRN", "_arrayPosYEL", "_arrayPosORA", "_arrayPosRED", "_loop", "_pX", "_pY" ];

__DEBUG( __FILE__, "INIT", _this );
_msg = format [ "~~~~ POS CREATION STARTED ~~~~", diag_tickTime ];
__DEBUG( __FILE__, _msg, _this );
_startTime = diag_tickTime;

params [
	[ "_inputPos",		[],		[[]]],
	[ "_areaSize",		200,	[123]],
	[ "_amount", 		2,		[123]],
	[ "_level", 		"FLAT",	[""]],
	[ "_useRoad",		false,	[true]],
	[ "_distance",		50,		[123]]
];

_return		= [];

if ( _inputPos isEqualTo [] ) exitWith { _return };

_arrayBasePos		= [];
_arrayRoadPos		= [];
_arrayBuildingPos	= [];
_arrayPosGRN		= [];
_arrayPosYEL		= [];
_arrayPosORA		= [];
_arrayPosRED		= [];

_rad	= (( _areaSize / 2 ) + 5 );
_pX		= (( _inputPos select 0 ) - _rad );
_pY		= (( _inputPos select 1 ) - _rad );

_fnc_getNearest = 
{
	params [ "_basePos", "_arrayPos", "_return" ];
	
	_return = 1e39;
	
	{
		if ( _basePos distance2D _x < _return ) then { _return = _basePos distance2D _x; };
		false
	} count _arrayPos;
	
	_return
};

_loop = true;
while { _loop } do
{
	private [ "_tmpPos" ]; 
	
	_tmpPos = [ _pX, _pY, 0 ];
	if ( !surfaceIsWater _tmpPos AND {( _tmpPos distance2D _inputPos ) < _rad }) then 
	{
		if ( _useRoad ) then 
		{
			if ( isOnRoad _tmpPos ) then { _arrayRoadPos pushBack _tmpPos; } else { _arrayBasePos pushBack _tmpPos; };
		} else {
			if ( !isOnRoad _tmpPos ) then { _arrayBasePos pushBack _tmpPos; } else { _arrayBuildingPos pushBack _tmpPos; };
		};
	};
	
	// + 5 generated way to many positons in a 300m dia. circle ... ~15s exec time in towns
	_pX = _pX + 10;
	
	if ( _pX > (( _inputPos select 0 ) + _rad)) then
	{
		_pX = (( _inputPos select 0 ) - _rad);
		_pY = _pY + 10;
		
		if ( _pY > (( _inputPos select 1 ) + _rad)) then
		{
			_loop = false;
		};
	};
};

{ if ([ _x ] call T8SME_server_fnc_checkOutside ) then { _arrayBuildingPos pushBack _x; }; false } count _arrayBasePos; 
_arrayBasePos = _arrayBasePos - _arrayBuildingPos;

{
	if ([ _x, _level ] call T8SME_server_fnc_checkFlatGround ) then {

		private [ "_no", "_nod", "_nbd", "_skip" ];
		_no = nearestObject _x;
		
		if ( !isNull _no ) then
		{
			_nod = _x distance2D _no;
			_nbd = [ _x, _arrayBuildingPos ] call _fnc_getNearest;
			
			_skip = true;
			
			if ( _nod > 25 AND { _nbd > 25 }) then					{ _arrayPosGRN pushBack _x; _skip = false; };
			if ( _skip AND { _nod > 20 } AND { _nbd > 20 }) then	{ _arrayPosYEL pushBack _x; _skip = false; };
			if ( _skip AND { _nod > 15 } AND { _nbd > 15 }) then	{ _arrayPosORA pushBack _x; _skip = false; };
			if ( _skip AND { _nod > 10 } AND { _nbd > 10 }) then	{ _arrayPosRED pushBack _x; _skip = false; };

		} else { _arrayPosGRN pushBack _x; };
	};
	
	false
} count _arrayBasePos;

/*
	_posTime = diag_tickTime;
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "1" ]), _x, "", [1,1], 0, "ICON", "mil_dot", "ColorCivilian",	0.75 ] call T8SME_server_fnc_createMarker; false } count _arrayRoadPos;
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "2" ]), _x, "", [1,1], 0, "ICON", "mil_dot", "ColorCivilian",	0.75 ] call T8SME_server_fnc_createMarker; false } count _arrayBuildingPos;
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "3" ]), _x, "", [1,1], 0, "ICON", "mil_dot", "ColorGreen",		0.75 ] call T8SME_server_fnc_createMarker; false } count _arrayPosGRN;
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "4" ]), _x, "", [1,1], 0, "ICON", "mil_dot", "ColorYellow",		0.75 ] call T8SME_server_fnc_createMarker; false } count _arrayPosYEL;
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "5" ]), _x, "", [1,1], 0, "ICON", "mil_dot", "ColorOrange",		0.75 ] call T8SME_server_fnc_createMarker; false } count _arrayPosORA;
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "6" ]), _x, "", [1,1], 0, "ICON", "mil_dot", "ColorRed",		0.75 ] call T8SME_server_fnc_createMarker; false } count _arrayPosRED;

	_msg = format [ " START: %1 ~~~ POSITIONS: %2 ~~~ END: %3 ~~~ RUNTIME: %4", _startTime, _posTime, diag_tickTime, ( _posTime - _startTime )];
	__DEBUG( __FILE__, _msg, _this );
*/

{
	private [ "_arr" ];
	_arr = _x;
	
	{
		if ( count _return < _amount ) then
		{
			if (( [ _x, _return ] call _fnc_getNearest ) > _distance ) then
			{
				_return pushBack _x;
			};
		};
		
		false
	} count ( _arr call BIS_fnc_arrayShuffle );
	
	__DEBUG( __FILE__, "_return", _return );
	
	if ( count _return isEqualTo _amount ) exitWith {};
	false
} count [ _arrayPosGRN, _arrayPosYEL, _arrayPosORA, _arrayPosRED, _arrayRoadPos ];

/*
	{ [( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), "RETURN" ]), _x, "", [1,1], 0, "ICON", "mil_circle", "ColorPink", 0.75 ] call T8SME_server_fnc_createMarker; [ _x ] call T8SME_server_fnc_createSmallCamp; false } count _return;
*/

// return
_return
