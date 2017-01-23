/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_IFA3_createMortarPos.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_dir", "_dirCor", "_mortarObj", "_return", "_mappedObj" ];

params [ "_pos" ];

_dir = random 360;

_mortarObj = 
[
	[( "EMPTY_MORTAR" call T8SME_server_fnc_getVehicleClass ),[0.0430908,1.25195,-0.0749998],0,1,0,[0,0],"","",true,false], 
	["Trench_Tank1",[0.200928,2.78027,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[-1.87292,1.07666,0],87.3669,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[1.95032,1.22412,0],93.0911,1,0,[0,-0],"","",true,false], 
	["Land_WoodenCrate_01_F",[-0.200684,-2.32861,-0.0250015],271.456,1,0,[5.60869e-007,-0.000123986],"","",true,false], 
	["Fuel_can",[0.611938,-2.55273,0],176.16,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_round",[0.0672607,2.6167,0],0,1,0,[0,0],"","",true,false], 
	["Land_GerRadio",[-1.49854,2.65625,0],119.316,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[0.132324,-3.07373,0],0,1,0,[0,0],"","",true,false]
];

_mappedObj = [ _pos, _dir, _mortarObj ] call T8SME_server_fnc_objectsMapper;

/*
{
	if (( typeOf _x ) in [ "Land_HBarrierBig_F", "Land_HBarrier_1_F", "Land_BagFence_Round_F", "Land_BagFence_Corner_F", "Land_BagFence_Long_F", "Land_BagFence_Short_F", "Land_Razorwire_F" ]) then
	{
		_x setVectorUp ( surfaceNormal( getPos _x ));
	};
	
	sleep 0.05;
	false
} count _mappedObj;

{ if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock ""; }; false } count _mappedObj;
T8SME_server_var_arrayCleanup pushBack _mappedObj;
*/

_return = ( _mappedObj select 0 );
{ _x addCuratorEditableObjects [ [ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
