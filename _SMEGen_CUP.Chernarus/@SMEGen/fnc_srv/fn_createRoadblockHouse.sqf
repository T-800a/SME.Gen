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
	["Land_d_Stone_HouseSmall_V1_F",[-10.1741,-0.740479,0],269.87,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Car_F",[0.0498047,9.64282,0],115.176,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Truck_dropside_F",[-5.0896,9.25635,0],78.4389,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Ural_F",[5.44189,9.15894,0.00151062],273,1,0,[0,-0],"","",true,false], 
	["Land_Wreck_Skodovka_F",[-0.997803,-11.7278,0.00288773],270,1,0,[0,-0],"","",true,false], 
	["Land_Wreck_Truck_F",[3.56787,-11.1118,0],64.005,1,0,[0,0],"","",true,false], 
	["Land_Wreck_HMMWV_F",[-5.74512,-11.863,0.0207825],247.029,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Car2_F",[-10.6318,-13.2312,0],107,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Long_F",[2.60083,7.52393,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-0.120361,8.17773,-0.000999928],206.903,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Short_F",[4.5542,7.3291,-0.000999928],195,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Short_F",[-2.03833,8.70313,-0.000999928],175.37,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-4.01172,8.0354,-0.000999928],154.581,1,0,[0,-0],"","",true,false], 
	["Land_Sacks_heap_F",[5.91699,7.76465,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[3.49097,-9.62866,-0.000999928],334.566,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Short_F",[1.45679,-10.366,-0.000999928],347.548,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Long_F",[-0.645996,-10.4709,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Short_F",[7.59155,7.32813,-0.000999928],181.456,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-3.52881,-10.0405,-0.000999928],20.1127,1,0,[0,0],"","",true,false], 
	["Land_Bricks_V2_F",[6.48682,-9.14404,-2.38419e-006],328.515,1,0,[0.000898794,-1.61605e-005],"","",true,false], 
	["Land_Sacks_heap_F",[9.09106,8.17261,0],148.069,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[2.46558,12.448,-2.38419e-006],11.7332,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-6.58936,11.4673,-2.38419e-006],347.268,1,0,[0,0],"","",true,false], 
	["Land_Tyres_F",[-3.2793,-12.2854,0.00659704],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-9.13184,-9.96875,-0.306581],0,1,0,[0,0],"","",true,false], 
	["Land_JunkPile_F",[-3.51172,-13.1545,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[5.22095,-13.7195,-2.38419e-006],165.164,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Long_F",[-13.6152,-5.6145,-0.0712385],92.2883,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[-6.46216,-15.6462,-2.38419e-006],352,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[-11.0986,-15.1389,-2.38419e-006],207.229,1,0,[0,0],"","",true,false],
	
	[( "EMPTY_OFFROAD_A" call T8SME_server_fnc_getVehicleClass ),[2.17749,-7.51001,-0.0311103],69.6755,1,0,[-0.50201,-0.0780464],"","",true,false], 
	[( "EMPTY_OFFROAD_A" call T8SME_server_fnc_getVehicleClass ),[1.62915,5.41431,-0.030448],90.9962,1,0,[-0.480568,-0.106524],"","",true,false]
];

_mappedObj = [ _pos, ( _dir + _dirCor ), _convoyObj ] call T8SME_server_fnc_objectsMapper;

/*
{
	if (( typeOf _x ) in [ "Land_HBarrierBig_F", "Land_HBarrier_1_F", "Land_BagFence_Round_F", "Land_BagFence_Corner_F", "Land_BagFence_Long_F", "Land_BagFence_Short_F", "Land_Razorwire_F" ]) then
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
