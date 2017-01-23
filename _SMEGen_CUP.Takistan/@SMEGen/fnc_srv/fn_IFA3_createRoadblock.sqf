/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createRoadblock.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_dirCor", "_convoyObj", "_mappedObj" ];

params [ "_pos", "_dir" ];

_dirCor = if ( random 100 > 50 ) then { 270 } else { 90 };

_convoyObj = 
[
	["Land_WW2_barrier_p1",[0.248779,1.66968,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[3.74902,1.53027,0],90,1,0,[0,-0],"","",true,false], 
	["LIB_MG42_Lafette",[4.84937,4.51538,-0.0749998],324.921,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_corner",[4.9231,4.51611,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[3.18921,-6.52588,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[4.96045,-5.46411,0],0,1,0,[0,0],"","",true,false], 
	["Land_WW2_blockhouse",[8.52856,-1.05469,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_corner",[7.91968,-4.17041,0],270,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_corner",[7.87573,4.61426,0],180,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[9.1687,-1.23926,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[9.19287,1.67432,0],90,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[3.16504,-9.43945,0],90,1,0,[0,-0],"","",true,false], 
	["Land_Misc_deerstand",[7.28101,-8.14893,0],269.842,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[-7.88721,4.08398,0],111.445,1,0,[0,-0],"","",true,false], 
	["Land_fort_rampart",[9.82324,-0.0439453,0],269.441,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[-9.50952,-4.58691,0],88.1359,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[4.76001,12.198,0],159.263,1,0,[0,-0],"","",true,false], 
	["Hhedgehog_concreteBig",[8.97021,9.88965,0],0,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[-5.8147,13.2036,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[5.06348,-13.7144,0],0,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[-10.5718,10.0652,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[9.8728,-8.99805,0],269.441,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[-8.87085,13.198,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[8.125,-13.6794,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_rampart",[-7.39282,-13.6638,0],67.039,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[4.61963,-16.7104,0],16.7566,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[1.04785,-17.854,0],0,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[18.5774,9.84473,0],0,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[-19.9695,10.3145,0],0,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[27.9751,9.59546,0],0,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[-29.5767,10.3594,0],0,1,0,[0,0],"","",true,false],
	
	[( "EMPTY_TRUCK" call T8SME_server_fnc_getVehicleClass ),[-6.50977,-5.12378,0.0106082],360,1,0,[0.275745,0.0373257],"","",true,false]
];

_mappedObj = [ _pos, ( _dir + _dirCor ), _convoyObj ] call T8SME_server_fnc_objectsMapper;

/*
{
	if (( typeOf _x ) in [ "Land_CncBarrier_stripes_F", "Land_HBarrierBig_F", "Land_HBarrier_1_F", "Land_BagFence_Round_F", "Land_BagFence_Corner_F", "Land_BagFence_Long_F", "Land_BagFence_Short_F", "Land_Razorwire_F" ]) then
	{
		_x setVectorUp ( surfaceNormal( getPos _x ));
	};
	
	sleep 0.05;
	false
} count _mappedObj;

{ sleep 0.5; if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKED"; }; false } count _mappedObj;
T8SME_server_var_arrayCleanup pushBack _mappedObj;
*/

__DEBUG( __FILE__, "_mappedObj", _mappedObj );

// Return
_mappedObj
