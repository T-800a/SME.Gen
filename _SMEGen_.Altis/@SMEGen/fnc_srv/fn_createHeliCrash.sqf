/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createHeliCrash.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object

 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_obj" ];

params [ "_pos", "_range" ];

__DEBUG( __FILE__, "INIT", _this );

private _posArray	= [ _pos, _range, 3, "LIGHT" ] call T8SME_server_fnc_findObjectivePositions;
private _posBox		= [( _posArray select 0 ), 50 ] call T8SME_server_fnc_findObjectivePos;
private _returnArray = [];

private _objArray =
[
	[( "EMPTY_HELI_TRANS" call T8SME_server_fnc_getVehicleClass ),	( _posArray select 0 )], 
	[( "EMPTY_OFFROAD_A" call T8SME_server_fnc_getVehicleClass ),	( _posArray select 1 )], 
	[( "EMPTY_OFFROAD_A" call T8SME_server_fnc_getVehicleClass ),	( _posArray select 2 )],
	[ "Land_SatellitePhone_F", _posBox ]
];

__DEBUG( __FILE__, "_objArray", _objArray );

{
	__DEBUG( __FILE__, "_objArray > _x", _x );
	
	private _posChecked = if (( typeName ( _x select 1 )) isEqualTo ( typeName true )) then { [ _pos, 100 ] call T8SME_server_fnc_findObjectivePos } else {( _x select 1 )};
	
	if (( count _posChecked ) > 2 ) then
	{
		_obj = createVehicle [( _x select 0 ), _posChecked, [], 0, "NONE"];
		_obj setDir ( random 360 );
		_obj setVehicleLock "LOCKED";

		_returnArray pushBack _obj;
	};
	
	false
} count _objArray;

__DEBUG( __FILE__, "_returnArray", _returnArray );
{ _x addCuratorEditableObjects [ _returnArray, true ]; false } count allCurators;
T8SME_server_var_arrayCleanup pushBack _returnArray;

( _returnArray select 0 ) setDamage 1;

// return
( _returnArray select 3 )
