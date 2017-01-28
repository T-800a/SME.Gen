/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createAmmoDump.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 ============================8===========================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

params [ "_pos" ];

private _dir = random 360;

private _objects = 
[
	[( "EMPTY_TRUCK_AMMO" call T8SME_server_fnc_getVehicleClass ),[3.0,0.0107422,-9.34601e-005],0.0116753,1,0,[0.535266,0.825714],"","",true,false],
	["Land_WoodenBox_F",[-0.852783,-1.26514,0],0,1,0,[0,0],"","",true,false], 
	["Land_WoodenCrate_01_stack_x5_F",[-0.545654,1.71045,0],309.383,1,0,[0,0],"","",true,false], 
	["Land_WoodenCrate_01_F",[-0.74585,-3.20215,0],264.428,1,0,[0,0],"","",true,false]
];


private _mappedObj = [ _pos, _dir, _objects ] call BIS_fnc_objectsMapper;
T8SME_server_var_arrayCleanup pushBack _mappedObj;

private _return = ( _mappedObj select 0 );
_return setVehicleLock "LOCKED";
{ _x addCuratorEditableObjects [ [ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
