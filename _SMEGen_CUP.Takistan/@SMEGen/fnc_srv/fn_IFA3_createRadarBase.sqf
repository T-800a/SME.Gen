/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_IFA3_createRadarBase.sqf
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
	["LIB_Static_zis6_radar",[1.55713,0.810059,-2.28882e-005],329.087,1,0,[0,0],"","",true,false], 
	
	["LIB_MG42_Lafette",[-4.47363,-7.39453,-0.0750608],196.184,1,0,[0,0],"","",true,false], 
	
	["WW2_Fortification_Pillbox_Small",[-13.0693,-0.621582,-2.28882e-005],74.9723,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Pillbox_Small",[-5.43481,17.0171,-2.28882e-005],180,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Bunker_Big_Doors",[11.0286,-4.7085,-2.28882e-005],330.24,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_90",[15.8264,-2.15234,-2.28882e-005],329.31,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_x2",[-12.9861,9.0542,-2.28882e-005],137.809,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Corner_x2",[3.82739,17.8174,-2.28882e-005],234.162,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Long_x3",[10.4094,7.69189,-2.28882e-005],150.39,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[-11.9678,5.54443,-2.28882e-005],172.996,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[-8.75562,13.4575,-2.28882e-005],224.126,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[-9.03516,-3.47607,1.90735e-006],132.922,1,0,[0,-0],"","",true,false], 
	["WW2_Fortification_Trench_Wall",[0.432861,17.2178,-2.28882e-005],269.621,1,0,[0,0],"","",true,false], 
	["WW2_Fortification_Trench_Wide",[13.0198,2.77881,-2.28882e-005],148.274,1,0,[0,-0],"","",true,false], 
	["Hhedgehog_concreteBig",[-10.1184,-9.82666,-2.28882e-005],205.475,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[-17.2788,-3.2832,-2.28882e-005],243.468,1,0,[0,0],"","",true,false], 
	["Hhedgehog_concreteBig",[15.2947,-16.2603,-2.28882e-005],154.084,1,0,[0,-0],"","",true,false], 
	["Hhedgehog_concreteBig",[5.88599,-16.3721,-2.28882e-005],202.253,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[-10.1892,-1.40039,-1.43051e-005],124.413,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[-10.8093,2.1709,1.52588e-005],0.0953484,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[-3.19824,14.9404,-4.57764e-005],133.857,1,0,[0,-0],"","",true,false], 
	["Land_fort_bagfence_long",[-6.2583,-5.78223,4.29153e-005],313.64,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[-6.76855,14.3008,-8.4877e-005],228.498,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[6.02441,-10.1694,-4.76837e-006],189.447,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_long",[7.59717,-8.61572,-0.111125],276.624,1,0,[0,0],"","",true,false], 
	["Land_fort_bagfence_round",[-4.49341,-7.82617,-5.05447e-005],177.561,1,0,[0,-0],"","",true,false], 	
	["LIB_AmmoCrates_NoInteractive_Large",[-8.979,7.26807,2.86102e-005],217.255,1,0,[0,0],"","",true,false], 
	["LIB_AmmoCrates_NoInteractive_Large",[7.75903,-0.679199,6.10352e-005],217.255,1,0,[0,0],"","",true,false], 
	["Land_WW2_Setka_dor",[0.863525,8.02393,-2.28882e-005],189.13,1,0,[0,0],"","",true,false], 
	["Land_WW2_Setka_dor",[7.5813,3.06152,-2.28882e-005],240.338,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[-4.98145,-14.6157,-2.28882e-005],203.264,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_2",[0.844238,-12.7178,-2.28882e-005],192.231,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[-0.638428,21.9712,-2.28882e-005],182.172,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[-11.4336,17.2417,-2.28882e-005],314.259,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[-15.457,12.5591,-2.28882e-005],305.161,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[-17.0229,6.92822,-2.28882e-005],265.815,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[-6.43701,20.8169,-2.28882e-005],334.333,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[10.05,18.9746,-2.28882e-005],241.679,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[12.9829,13.5474,-2.28882e-005],241.679,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[15.9929,8.02002,-2.28882e-005],241.679,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[18.9258,2.59277,-2.28882e-005],241.679,1,0,[0,0],"","",true,false], 
	["Land_WW2_wire_3",[19.7698,-9.4082,-2.28882e-005],94.2636,1,0,[0,-0],"","",true,false], 
	["Land_WW2_wire_3",[20.2212,-3.25586,-2.28882e-005],94.2636,1,0,[0,-0],"","",true,false], 
	["Land_WW2_wire_3",[5.52637,21.7446,-2.28882e-005],182.172,1,0,[0,0],"","",true,false],
	
	["VR_3DSelector_01_default_F",[-11.8838,4.86865,0.3],267.331,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-14.1875,-0.984863,0.3],261.549,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-5.35938,18.1182,0.3],355.391,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-8.49976,-3.80664,0.3],223.288,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[-9.35693,12.686,0.3],315.842,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[0.116699,17.064,0.3],357.204,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[11.3816,5.51221,0.3],62.7536,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[15.8477,-1.9165,0.3],93.1853,1,0,[0,-0],"","",true,false], 
	["VR_3DSelector_01_default_F",[6.09448,-8.65186,0.3],202.483,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[6.16455,14.7808,0.3],43.0254,1,0,[0,0],"","",true,false], 
	["VR_3DSelector_01_default_F",[9.20068,9.37988,0.3],54.9023,1,0,[0,0],"","",true,false]

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
for "_i" from 1 to 11 do { _vehicleArray pushBack _typeGuard; };
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

T8SME_server_var_arrayCleanup pushBack _units;
_return = ( _mappedObj select 0 );

{
	_x addCuratorEditableObjects [[ _return ], true ];
	_x addCuratorEditableObjects [ _units, true ];
	false
} count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
