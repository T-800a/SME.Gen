/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_IFA3_createAmmoBase.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_dir", "_objArray", "_mappedObj" ];

params [ "_pos" ];

_dir = random 360;



_objArray =
[
	["LIB_AmmoCrate_Arty_SU",[-5.29785,6.0542,0],89.5175,1,0,[0,0],"","",true,false], 
	["LIB_AmmoCrate_Arty_SU",[-8.55469,6.73633,0],271.772,1,0,[0,0],"","",true,false], 
	["LIB_AmmoCrate_Arty_SU",[-10.5225,5.79053,0],0,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_round",[4.01465,-0.627441,0],177.799,1,0,[0,-0],"","",true,false], 
	["LIB_MG42_Lafette",[4.03662,-0.658203,-0.0749998],173.804,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[-0.151855,-7.75,0],83.0896,1,0,[0,0],"","",true,false], 
	["Land_CamoNet_EAST",[-6.82568,6.20117,0],0,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[8.1875,-7.51465,0],90,1,0,[0,-0],"","",true,false], 
	["Land_WW2_toilet",[-11.1328,-3.65137,0],53.156,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[2.48242,11.835,0],90,1,0,[0,-0],"","",true,false], 
	["Paleta1",[10.7295,6.55176,0],195.878,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_Big",[-4.4209,-7.69238,0],0,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bridge",[-10.1396,-7.8667,0],0,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[14.6768,5.06787,0],0,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[-15.5552,4.77148,0],0,1,0,[0,0],"","",true,false], 
	["Hedgehog",[8.68945,-12.874,0],310.972,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_FFP",[8.02393,11.3462,0],180,1,0,[0,0],"","",true,false], 
	["Hedgehog",[1.35693,-15.6924,0],181.503,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_FFP",[-10.2695,11.4492,0],180,1,0,[0,0],"","",true,false], 
	["Hedgehog",[3.69287,-15.7124,0],126.761,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[14.646,-7.56396,0],0,1,0,[0,0],"","",true,false], 
	["Hedgehog",[7.43213,-14.8037,0],109.821,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[-15.3652,-7.6665,0],90,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[14.8672,11.3232,0],270,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[-15.1528,11.5215,0],180,1,0,[0,0],"","",true,false]

	// [( "EMPTY_OFFROAD" call T8SME_server_fnc_getVehicleClass ),[16.1133,0.494385,0.013546],0.0128864,1,0,[-1.44623,2.15437],"","",true,false] 
];

_mappedObj = [ _pos, _dir, _objArray ] call T8SME_server_fnc_objectsMapper;


/*
{
	if (( typeOf _x ) in [ "Land_HBarrier_Big_F", "Land_HBarrier_3_F", "Land_HBarrier_1_F", "Land_BagFence_Round_F", "Land_BagFence_Corner_F", "Land_BagFence_Long_F", "Land_BagFence_Short_F", "Land_Razorwire_F" ]) then
	{
		_x setVectorUp ( surfaceNormal( getPos _x ));
	};

	if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKED"; };
	if ( _x isKindOf "Land_Cargo20_military_green_F" ) then { _x allowDamage false; };
	
	sleep 0.05;
	false
} count _mappedObj;

T8SME_server_var_arrayCleanup pushBack _mappedObj;
*/

_return = [( _mappedObj select 0 ), ( _mappedObj select 1 ), ( _mappedObj select 2 )];
{ _x addCuratorEditableObjects [ _return, true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
