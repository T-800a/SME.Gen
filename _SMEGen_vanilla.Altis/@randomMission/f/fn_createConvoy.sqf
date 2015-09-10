/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createConvoy.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );


private [ "_pos", "_dir", "_dirCor", "_convoyObj", "_mappedObj" ];

_pos = _this select 0;
_dir = _this select 1;

_dirCor = if ( random 100 > 50 ) then { 270 } else { 90 };

_convoyObj =
[
	["Land_PlasticCase_01_large_F",[0.844971,-7.72144,1.43051e-006],327.941,1,0,[-0.000906356,0.00101578],"","",true,false], 
	["Land_PlasticCase_01_small_F",[-0.0527344,-8.02441,4.76837e-007],124.747,1,0,[0.000497487,0.00204013],"","",true,false], 
	["Land_PlasticCase_01_large_F",[1.03149,-6.2605,-2.38419e-006],5.4917,1,0,[-0.00087274,0.00152293],"","",true,false], 
	["Land_PlasticCase_01_medium_F",[0.220215,-6.35645,0],0.00492518,1,0,[0.000222187,0.00052466],"","",true,false], 
	["B_G_Van_01_transport_F",[2.78223,-5.03442,0.0148301],359.746,1,0,[-1.46491,-1.97464],"","",true,false], 
	["B_G_Van_01_transport_F",[3.21216,6.7041,0.0133648],14.028,1,0,[-1.46265,2.16254],"","",true,false], 
	["B_G_Van_01_fuel_F",[2.85547,-12.8306,-0.0207224],8.61804,1,0,[-0.723469,0.00459397],"","",true,false], 
	["B_G_Offroad_01_armed_F",[0.455811,16.5078,-0.0298858],314.806,1,0,[-0.483479,-0.062224],"","",true,false], 
	["B_G_Offroad_01_armed_F",[0.279053,-23.8953,-0.030436],144.135,1,0,[-0.479337,-0.114638],"","",true,false]
];

_mappedObj = [ _pos, ( _dir + _dirCor ), _convoyObj ] call BIS_fnc_objectsMapper;
{ sleep 0.5; if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKED"; }; false } count _mappedObj;
T8RMG_var_arrayCleanup pushBack _mappedObj;

// return
true
