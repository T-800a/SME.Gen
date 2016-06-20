/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createSmallCamp.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_dir", "_objArray", "_mappedObj" ];

params [ "_pos" ];

_dir		= random 360;

__DEBUG( __FILE__, "INIT > _this", _this );

_objArray =
[
	["Land_d_Stone_HouseBig_V1_F",[-0.128418,-0.370605,0.5],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_5_F",[-1.19531,5.14307,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_5_F",[4.35352,5.17871,0],90,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[3.10986,-5.28125,0],270,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-5.625,3.44629,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[1.50049,-6.50049,0],0,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-6.81445,1.6958,0],270,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-6.52588,-4.90918,0],270,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-5.00903,-6.43311,0],0,1,0,[0,0],"","",true,false]
];

_mappedObj = [ _pos, _dir, _objArray ] call T8SME_server_fnc_objectsMapper;

/*
{
	if (( typeOf _x ) in [ "Land_HBarrier_5_F", "Land_BagFence_Long_F" ]) then
	{
		_x setVectorUp ( surfaceNormal( getPos _x ));
	};
	
	sleep 0.05;
	false
} count _mappedObj;

T8SME_server_var_arrayCleanup pushBack _mappedObj;
*/


_return = ( _mappedObj select 0 );

__DEBUG( __FILE__, "_return", _return );

// Return
_return

