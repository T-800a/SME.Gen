/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createGetIntel.sqf
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
	["Land_i_Stone_Shed_V1_F",[-4.27319,2.11963,0],271,1,0,[0,0],"","",true,false], 
	["Land_TTowerSmall_2_F",[-10.7861,-3.16162,0],179.033,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Short_F",[-1.9209,-0.387695,0],87,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-1.68335,2.04932,0],95,1,0,[0,-0],"","",true,false], 
	["Land_Pallet_MilBoxes_F",[2.61816,-0.20874,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Corner_F",[-1.82568,-2.27197,0],90,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[2.90698,1.56934,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[3.86694,-0.570801,0],89,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.88696,3.04932,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[3.81689,2.37939,0],89,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[3.69873,-3.33203,0],300,1,0,[0,0],"","",true,false], 
	["Land_PowerGenerator_F",[-5.09912,-2.60742,0],88.033,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[3.38696,5.04932,0],235,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-0.822998,5.91943,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Short_F",[1.48682,5.86963,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Corner_F",[1.33691,-7.66064,0],89,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-5.90918,7.34619,0],358,1,0,[0,0],"","",true,false], 
	["Land_Mound01_8m_F",[-3.21021,-8.0127,0],180,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[8.98071,0.585938,-0.000999928],221.587,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-7.94824,-4.66602,-0.000999928],11.3035,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-6.84912,-6.26123,0],89,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-8.79492,2.78198,-2.38419e-006],270,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[-10.2866,-1.41577,-0.00130129],179.033,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[9.47119,3.83105,-2.38419e-006],36,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[11.124,-1.38232,-0.000999928],221.587,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[-10.407,-5.19141,-0.00130129],358.033,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[9.04834,-8.1189,-0.000999928],136.587,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Round_F",[-12.1914,-3.24194,-0.00130129],89.033,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-14.3127,0.490479,-2.38419e-006],359,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[11.0464,-6.21729,-0.000999928],136.587,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Long_F",[12.1392,-3.78198,-0.000999928],90.5873,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-6.89136,-12.8398,-2.38419e-006],359,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[8.74097,-10.8811,-2.38419e-006],318,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[13.8186,-5.09229,-2.38419e-006],269,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-13.9622,-9.68677,-2.38419e-006],36,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-16.2932,-6.25049,-2.38419e-006],269,1,0,[0,0],"","",true,false],
	["CamoNet_OPFOR_open_Curator_F",[1.84692,2.51953,0],90,1,0,[0,-0],"","",false,false], 
	["CamoNet_OPFOR_Curator_F",[-3.22314,-6.41064,0],181,1,0,[0,0],"","",false,false],
	["Fridge_01_closed_F",[-2.96387,-0.828125,0.20],175.192,1,0,[0,0],"","",false,false], 
	["Land_WoodenTable_large_F",[-4.51245,-0.603027,0.20],89.7379,1,0,[0,0],"","",false,false], 
	["MapBoard_altis_F",[-6.52271,-0.384521,0.20],211.922,1,0,[0,0],"","",false,false],
	["MapBoard_stratis_F",[-6.4707,4.81421,0.20],310.361,1,0,[0,0],"","",false,false],
	["Land_ChairWood_F",[-7.02905,1.1897,0.20],259.161,1,0,[0,0],"","",false,false], 
	["Land_PCSet_01_case_F",[-3.95361,-0.476318,1.05],182.68,1,0,[0,0],"","",false,false], 
	["Land_PCSet_01_keyboard_F",[-4.55566,-0.325439,1.05],181.864,1,0,[0,0],"","",false,false], 
	["Land_PCSet_01_screen_F",[-4.47729,-0.635254,1.05],176.91,1,0,[0,0],"","",false,false]
];

_mappedObj = [ _pos, _dir, _objArray ] call T8SME_server_fnc_objectsMapper;

/*
{
	if (( typeOf _x ) in [ "Land_HBarrierBig_F", "Land_HBarrier_1_F", "Land_BagFence_Round_F", "Land_BagFence_Corner_F", "Land_BagFence_Long_F", "Land_BagFence_Short_F", "Land_Razorwire_F" ]) then
	{
		_x setVectorUp ( surfaceNormal( getPos _x ));
	};
	
	sleep 0.05;
	false
} count _mappedObj;


T8SME_server_var_arrayCleanup pushBack _mappedObj;

*/

_return = ( _mappedObj select (( count _mappedObj ) - 1));
{ _x addCuratorEditableObjects [[ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return

