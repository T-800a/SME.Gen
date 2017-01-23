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

private [ "_mappedObj", "_missionSide" ];

params [ "_pos" ];

private _dir = random 360;
private _unitPos = [];

private _objArray =
[
	["LIB_AmmoCrate_Arty_SU",[-10.5225,5.79053,0.0154328],360,1,0,[0.00075786,-0.000224878],"","",true,false], 
	["LIB_AmmoCrate_Arty_SU",[-5.29785,6.0542,0.0154328],89.5154,1,0,[0.000646048,-0.000157784],"","",true,false], 
	["LIB_AmmoCrate_Arty_SU",[-8.55469,6.73633,0.0154328],271.77,1,0,[0.00060601,-0.000161807],"","",true,false], 

	["WW2_Fortification_Trench_Bridge",[-10.1396,-7.8667,0],360,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_Big",[-4.4209,-7.69238,0],360,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_FFP",[-10.2695,11.4492,0],180,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_FFP",[8.02393,11.3462,0],180,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[-15.1528,11.5215,0],180,1,0,[0,0],"","",true,false],
	["WW2_Fortification_Trench_Corner_90",[-15.3652,-7.6665,0],90,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[14.646,-7.56396,0],360,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[14.8672,11.3232,0],270,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[-15.5552,4.77148,0],360,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[14.6768,5.06787,0],360,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[2.48242,11.835,0],90,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[-0.151855,-7.75,0],83.0896,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[8.1875,-7.51465,0],90,1,0,[0,0],"","",true,false], 

	["Hedgehog",[1.35693,-15.6924,0],181.503,1,0,[0,0],"","",true,false], 
	["Hedgehog",[3.69287,-15.7124,0],126.761,1,0,[0,-0],"","",true,false], 
	["Hedgehog",[7.43213,-14.8037,0],109.821,1,0,[0,-0],"","",true,false], 
	["Hedgehog",[8.68945,-12.874,0],310.972,1,0,[0,0],"","",true,false], 
	["LIB_MG42_Lafette",[4.03662,-0.658203,-0.0749998],173.804,1,0,[0,-0],"","",true,false],
	["Land_CamoNet_EAST",[-6.82568,6.20117,0],360,1,0,[0,0],"","",true,false], 
	["Land_WW2_toilet",[-11.1328,-3.65137,0],53.156,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_round",[4.01465,-0.627441,0],177.799,1,0,[0,-0],"","",true,false], 
	["Paleta1",[10.7295,6.55176,0],195.878,1,0,[0,0],"","",true,false], 
	
	["VR_3DSelector_01_default_F",[-11.8427,-7.79053,0.3],192.782,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-15.2295,-3.42236,0.3],239.798,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-15.3495,6.79199,0.3],269.704,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-15.3581,1.47803,0.3],275.876,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-3.14771,11.5894,0.3],0.504888,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-9.56232,14.8584,0.3],357.404,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[0.423584,-7.69385,0.3],169.144,1,0,[0,-0],"","",true,false], 
	["VR_3DSelector_01_default_F",[14.8651,1.61572,0.3],85.4774,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[14.8878,6.39014,0.3],69.49,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[15.0688,-3.11963,0.3],115.709,1,0,[0,-0],"","",true,false], 
	["VR_3DSelector_01_default_F",[2.81915,11.6685,0.3],1.02176,1,0,[0,0],"","",true,false],
	["VR_3DSelector_01_default_F",[8.64789,14.6694,0.3],0.00180266,1,0,[0,0],"","",true,false],
	["VR_3DSelector_01_default_F",[8.65808,-7.54102,0.3],173.922,1,0,[0,-0],"","",true,false]


	// [( "EMPTY_OFFROAD" call T8SME_server_fnc_getVehicleClass ),[16.1133,0.494385,0.013546],0.0128864,1,0,[-1.44623,2.15437],"","",true,false] 
];

_mappedObj = [ _pos, _dir, _objArray ] call T8SME_server_fnc_objectsMapper;

{
	if ( _x isKindOf "VR_3DSelector_01_default_F" ) then
	{ 
		private _pos = getPosATL _x;
		private _dir = getDir _x;
		_unitPos pushBack [ _pos, _dir ];
		deleteVehicle _x;
	};

	false
} count _mappedObj;



// get the faction
private _missionSideN	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8SME_param_enemyFaction >> "spawnUnitsSide" );
private _typeGuard		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "killHVT" >> "typeGuard" );
switch ( _missionSideN ) do
{
	case 0 :	{ _missionSide = EAST };
	case 1 :	{ _missionSide = WEST };
	case 2 :	{ _missionSide = INDEPENDENT };
	default		{ _missionSide = EAST };
};

private _vehicleArray = [];
for "_i" from 1 to ( count _unitPos ) do { _vehicleArray pushBack _typeGuard; };
_vehicleArray = [ _vehicleArray ] call T8SME_server_fnc_buildUnitArray;

private _spawnPos	= [ _pos, 200 ] call T8SME_server_fnc_findObjectivePos;
private _group		= [ _spawnPos, _missionSide, _vehicleArray ] call BIS_fnc_spawnGroup;
private _units		= ( units _group );

{
//	_x disableAI "MOVE";
	_x forceSpeed 0;
	_x setPosATL (( _unitPos select _forEachIndex ) select 0 );
	_x setDir (( _unitPos select _forEachIndex ) select 1 );
	
} forEach _units;

{ _x addCuratorEditableObjects [ _units, true ]; false } count allCurators;
T8SME_server_var_arrayCleanup pushBack _units;


_return = [( _mappedObj select 0 ), ( _mappedObj select 1 ), ( _mappedObj select 2 )];
{ _x addCuratorEditableObjects [ _return, true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
