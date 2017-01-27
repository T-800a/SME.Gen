/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator=
	SERVER

	File:		fn_findCenter.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

__DEBUG( __FILE__, "INIT", _this );

params [[ "_array", [], [[]]]];

private _return 	= [];
private _xPos		= 0;
private _yPos		= 0;
private _count		= 0;

{
	if ( _x isEqualType [] AND {( count _x ) > 1 } AND {( _x select 0 ) isEqualType 9 AND ( _x select 1 ) isEqualType 9 }) then
	{
		_xPos = _xPos + ( _x select 0 );
		_yPos = _yPos + ( _x select 1 );
		_count = _count + 1;
	};
	
	if ( _x isEqualType "" AND {!(( getMarkerPos _x ) isEqualTo [0,0,0])}) then
	{
		_xPos = _xPos + (( getMarkerPos _x ) select 0 );
		_yPos = _yPos + (( getMarkerPos _x ) select 1 );
		_count = _count + 1;
	};
	
	false
} count _array;

_return = [(( _xPos / _count ) - 100 + random 200 ), (( _yPos / _count ) - 100 + random 200 ), 0 ];

__DEBUG( __FILE__, "_return", _return );

_return
