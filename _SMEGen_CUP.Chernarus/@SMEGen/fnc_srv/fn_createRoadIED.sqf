/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createRoadIED.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

params [ "_pos", "_dir", [ "_intel", false, [true]]];

private [ "_dirCor", "_objs", "_mappedObjs", "_return" ];

_dirCor = if ( random 100 > 50 ) then { 270 } else { 90 };

if ( _intel ) then 
{
	_objs = [
		["Land_Laptop_device_F",[-4.7124,1.0769,0.40],124.037,1,0,[0,0],"","",false,false],
		["ModuleExplosive_IEDUrbanSmall_F",[-6.38818,15.4468,7.62939e-006],0,1,0,[0,0],"","",true,false]
	];
} else {
	_objs = [
		["ModuleExplosive_IEDLandSmall_F",[5.1853,4.16309,0],0,1,0,[0,0],"","",true,false],
		["ModuleExplosive_IEDLandBig_F",[-5.5127,-3.91455,0],228.601,1,0,[0,0],"","",true,false]
	];
};

_objs append [
	[( "EMPTY_TRUCK" call T8SME_server_fnc_getVehicleClass ),[-5.43018,6.02368,0.0133648],346.653,1,0,[0,0],"","",true,false], 
	[( "EMPTY_OFFROAD" call T8SME_server_fnc_getVehicleClass ),[-5.49683,16.5974,-0.0289812],23.5285,1,0,[0,0],"","",true,false], 
	["Land_PlasticCase_01_medium_F",[-4.68384,1.18384,4.76837e-007],249.214,1,0,[0,0],"","",true,false], 
	["Land_PlasticCase_01_large_F",[-5.34644,1.70313,1.90735e-006],255.521,1,0,[0,0],"","",true,false]
];

_mappedObjs = [ _pos, ( _dir + _dirCor ), _objs ] call T8SME_server_fnc_objectsMapper;

// { sleep 0.5; if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKED"; }; false } count _mappedObjs;
// T8SME_server_var_arrayCleanup pushBack _mappedObjs;

_return = [( _mappedObjs select 0 ), ( _mappedObjs select 1 )];

{ _x addCuratorEditableObjects [ _return, true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return);

// return
_return


