/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createFlakPos.sqf
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
	[( "EMPTY_FLAK" call T8SME_server_fnc_getVehicleClass ),[0.0283203,2.66895,-0.501488],180.216,1,0,[0,0],"","",true,false],
	["LIB_AmmoCrates_NoInteractive_Large",[-3.33887,-3.89258,0],167.094,1,0,[0,-0],"","",true,false],
	["Land_fort_artillery_nest",[0.535645,9.06396,0],0,1,0,[0,0],"","",true,false],
	["LIB_AmmoCrates_NoInteractive_Large",[5.91211,3.29297,0],0,1,0,[0,0],"","",true,false],
	["Land_fort_rampart",[-4.22656,-2.79688,0],74.0113,1,0,[0,0],"","",true,false],
	["Land_fort_rampart",[4.6748,-2.71729,0],292.367,1,0,[0,0],"","",true,false],
	["Land_WW2_wire_3",[7.07666,-5.64648,0],119.909,1,0,[0,-0],"","",true,false],
	["Land_WW2_wire_3",[-9.05859,-0.372559,0.0951409],248.623,1,0,[-10.3811,2.42397],"","",true,false],
	["Land_WW2_wire_3",[-6.91943,-6.16846,0],248.678,1,0,[0,0],"","",true,false],
	["Land_WW2_wire_3",[9.34473,0.167969,0],283.245,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[-8.90283,-3.11621,0],135.906,1,0,[0,-0],"","",true,false],
	["Hedgehog_EP1",[9.43506,-3.84375,0],181.498,1,0,[0,0],"","",true,false],
	["Land_WW2_wire_3",[-9.12158,5.5083,0.136023],287.077,1,0,[-8.89385,-2.3459],"","",true,false],
	["Land_WW2_wire_3",[8.92383,5.99219,0],67.5289,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[11.2832,3.54102,0],81.7716,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[-10.8345,4.69775,0],79.2324,1,0,[0,0],"","",true,false],
	["Land_WW2_wire_3",[-5.7583,10.5181,0.0903993],321.456,1,0,[-15.7763,-2.91062],"","",true,false],
	["Land_WW2_wire_3",[5.39697,10.8462,0],37.9812,1,0,[0,0],"","",true,false],
	["Land_WW2_wire_3",[-0.134766,12.5718,0.203634],356.38,1,0,[-11.4292,-0.54915],"","",true,false],
	["Hedgehog_EP1",[-7.08984,10.8521,0],12.7775,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[10.2988,7.88232,0],52.7655,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[8.36572,9.8833,0],0,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[-1.08691,13.769,0],300.569,1,0,[0,0],"","",true,false],
	["Hedgehog_EP1",[4.34961,13.353,0],9.4171,1,0,[0,0],"","",true,false]
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
