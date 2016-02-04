/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createrecoverUGV.sqf
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
	["B_UGV_01_F",[4.58569,-0.884521,0.0105033],90.9202,1,0,[-0.0914309,-0.0938325],"","",true,false], 
	["Land_d_Stone_HouseSmall_V1_F",[1.44214,11.3896,2.00272e-005],0,1,0,[0,0],"","",true,false], 
	["Land_d_Windmill01_F",[10.8306,-10.061,0],191.363,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Ural_F",[-10.7944,-0.873047,0.00151062],0.0422635,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Car2_F",[-3.90625,-9.36255,0],129.462,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Truck_dropside_F",[0.969727,-11.3296,0],287.462,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Offroad_F",[-9.30762,17.0806,0],236,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[2.61206,5.30762,0.00133228],46,1,0,[0,0],"","",true,false], 
	["Land_Sacks_heap_F",[1.01245,7.81079,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Short_F",[2.27612,7.58105,0.00100613],268,1,0,[0,0],"","",true,false], 
	["Land_BarrelWater_grey_F",[-0.428467,7.96997,5.81741e-005],27.9372,1,0,[-0.0136287,-0.0134152],"","",true,false], 
	["Land_BagFence_Long_F",[8.16675,4.75684,0.00088644],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-8.75415,5.89282,-0.000999928],120.362,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-10.0154,3.74097,-0.000999928],120.362,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Round_F",[1.26953,11.6619,-0.00130129],142.007,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Round_F",[1.16699,11.2219,-0.00130129],53.0067,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[10.9988,5.25879,0.00132561],310,1,0,[0,0],"","",true,false], 
	["Land_Sacks_heap_F",[3.6062,-12.4124,0],110.462,1,0,[0,0],"","",true,false], 
	["Land_Sacks_heap_F",[6.60815,-11.3215,0],116.462,1,0,[0,-0],"","",true,false], 
	["Land_Sacks_heap_F",[4.71753,-12.4817,0],273.462,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Short_F",[11.3425,7.50684,0.000999451],268,1,0,[0,0],"","",true,false], 
	["Land_Sacks_heap_F",[6.02197,-12.6145,0],12.4623,1,0,[0,0],"","",true,false], 
	["Land_GarbagePallet_F",[-5.78027,18.397,0],221,1,0,[0,0],"","",true,false]
];

_mappedObj = [ _pos, _dir, _objArray ] call T8SME_server_fnc_objectsMapper;


_return = ( _mappedObj select 0 );
{ _x addCuratorEditableObjects [[ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
