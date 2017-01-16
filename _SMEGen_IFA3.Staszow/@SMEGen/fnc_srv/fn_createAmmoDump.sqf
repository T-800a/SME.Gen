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

private [ "_dir", "_dirCor", "_objects", "_mappedObj", "_return" ];

params [ "_pos" ];

_dir = random 360;

_objects = 
[
	[( "EMPTY_TRUCK_AMMO" call T8SME_server_fnc_getVehicleClass ),[2.14526,0.0107422,-9.34601e-005],0.0116753,1,0,[0.535266,0.825714],"","",true,false],
	["Land_Pallet_MilBoxes_F",[-0.852783,-1.26514,0],0,1,0,[0,0],"","",true,false], 
	["Land_PaperBox_open_full_F",[-0.545654,1.71045,0],309.383,1,0,[0,0],"","",true,false], 
	["Land_PlasticCase_01_large_F",[-2.37256,-1.15918,-4.76837e-007],359.3,1,0,[-0.00102196,0.00172207],"","",true,false], 
	["Land_MetalCase_01_large_F",[-1.28271,2.72559,-0.025003],46.092,1,0,[-0.000948432,0.00170928],"","",true,false], 
	["Land_PaperBox_open_empty_F",[-0.74585,-3.20215,0],264.428,1,0,[0,0],"","",true,false]
];


_mappedObj = [ _pos, _dir, _objects ] call BIS_fnc_objectsMapper;
T8SME_server_var_arrayCleanup pushBack _mappedObj;

_return = ( _mappedObj select 0 );
_return setVehicleLock "LOCKED";
{ _x addCuratorEditableObjects [ [ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
