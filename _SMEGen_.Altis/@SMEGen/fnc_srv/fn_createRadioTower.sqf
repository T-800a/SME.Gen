/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createRadioTower.sqf
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
	["Land_Communication_F",[-15.752,-9.27173,0],0,1,0,[0,0],"","",true,false], 
	["Land_dp_transformer_F",[-18.8013,-8.99683,0],270,1,0,[0,-0],"","",true,false], 
	["Land_Cargo_Patrol_V3_F",[-0.314209,-7.94189,0],0,1,0,[0,0],"","",true,false], 
	["Land_Cargo_Patrol_V3_F",[-17.3794,6.50903,0],179.927,1,0,[0,-0],"","",true,false], 
	["Land_Cargo20_military_green_F",[-9.54175,3.33643,3.33786e-006],180,1,0,[-0.000163292,-7.20978e-006],"","",true,false], 
	["Land_Cargo20_military_green_F",[-9.53857,7.06226,0],180,1,0,[-0.000199738,-9.11381e-007],"","",true,false], 
	["Land_HBarrier_Big_F",[5.12427,5.8374,0],90,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[5.4126,-9.12329,0],90,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[1.2876,10.7766,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-0.5979,11.1267,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[-4.83301,10.8738,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[10.5901,-5.96167,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[8.1062,-7.67749,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-1.59399,12.7424,0],359,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[10.9429,7.6355,-0.00130129],269.205,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[2.10083,-12.7385,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[0.196289,-13.2302,-0.000999928],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[-3.97412,-12.9695,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[7.21826,-12.968,0],269,1,0,[0,0],"","",true,false], 
	["Land_PowerGenerator_F",[-9.43286,-9.68677,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[8.13013,10.8787,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[-9.11987,10.4583,0],0,1,0,[0,0],"","",true,false], 
	["Land_PowerGenerator_F",[-10.76,-9.9856,0],353.171,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[0.656006,-14.5276,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-9.8938,12.7126,0],359,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[-8.53003,-12.7815,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[6.73608,12.9724,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-7.6438,-14.5574,0],359,1,0,[0,0],"","",true,false], 
	["Land_PowerGenerator_F",[-12.457,-9.96338,0],358.452,1,0,[0,0],"","",true,false], 
	["Land_PowerGenerator_F",[-13.7703,-9.93359,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[16.9998,-5.83179,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[16.406,-7.63745,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-14.7537,-14.8176,0],359,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[19.9526,-0.333252,0],90,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_Big_F",[16.8899,10.9685,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[-17.6101,10.2986,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-18.0139,12.5823,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[15.0359,13.0027,0],359,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[-17.0203,-12.9514,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[21.9087,-2.00806,0],269,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[21.8584,-6.17798,0],269,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[-22.6101,2.75269,0],88.3357,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-23.0339,-1.43555,-0.000999928],90.3799,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_3_F",[-22.8372,-3.5376,0],88.3357,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[-22.7671,7.25659,0],90,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[-24.1616,-3.33813,0],269,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_Big_F",[-22.437,-9.76343,0],90,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-23.2839,12.4924,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-24.8018,5.39185,0],269,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-23.054,-14.8474,0],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-24.1616,-11.6379,0],269,1,0,[0,0],"","",true,false],
	[( "EMPTY_HMG_HIGH" call T8SME_server_fnc_getVehicleClass ),[0.0280762,-11.7644,-0.0871172],180.368,1,0,[0.000193097,-0.000241834],"","",true,false], 
	[( "EMPTY_HMG_HIGH" call T8SME_server_fnc_getVehicleClass ),[9.42578,7.52441,-0.0871172],90.6071,1,0,[-0.000155355,-0.000100237],"","",true,false], 
	[( "EMPTY_HMG_HIGH" call T8SME_server_fnc_getVehicleClass ),[-21.7869,-1.42847,-0.0871158],270.188,1,0,[-0.000156599,-0.000534332],"","",true,false], 
	[( "EMPTY_HMG_HIGH" call T8SME_server_fnc_getVehicleClass ),[-0.412109,9.71606,-0.0871172],359.999,1,0,[-9.76822e-005,-8.85073e-005],"","",true,false], 
	[( "EMPTY_OFFROAD" call T8SME_server_fnc_getVehicleClass ),[11.8252,-0.272705,-0.0295324],0.0127271,1,0,[-0.623239,-0.074203],"","",true,false], 
	[( "EMPTY_OFFROAD" call T8SME_server_fnc_getVehicleClass ),[16.1133,0.494385,0.013546],0.0128864,1,0,[-1.44623,2.15437],"","",true,false] 
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

_return = [( _mappedObj select 0 ), ( _mappedObj select 1 )];
{ _x addCuratorEditableObjects [ _return, true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
