/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createMortarPos.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_pos", "_dir", "_dirCor", "_mortarObj", "_return", "_mappedObj" ];

_pos = _this select 0;
_dir = random 360;

_mortarObj = 
[
	["B_G_Mortar_01_F",[0.39624,-2.17725,-0.0351119],159.56,1,0,[-0.000159711,-0.000333111],"","",true,false],
	["Land_BagFence_Long_F",[0.720703,0.154297,-0.000999928],44.824,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-2.40381,1.75195,-0.000999928],129.129,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[-0.226807,3.58252,-0.00130129],179.085,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Round_F",[-3.91504,-0.609375,-0.00130129],88.5277,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-2.10767,-2.9751,-0.000999928],44.824,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[4.05225,-0.585938,-0.00130129],270.079,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[2.35815,-3.04102,-0.000999928],129.129,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[0.231201,-4.65625,0],0,1,0,[0,0],"","",true,false],
	["Land_PlasticCase_01_large_F",[0.797363,0.835449,9.53674e-007],138.563,1,0,[-0.000711263,3.94796e-005],"","",true,false], 
	["Land_PlasticCase_01_medium_F",[1.58228,0.0473633,0],134.029,1,0,[0.000145439,-0.000174328],"","",true,false], 
	["Land_Pallet_MilBoxes_F",[-1.60425,-0.453613,-0.0351138],262.42,1,0,[3.87879e-005,-0.000253278],"","",true,false]
];

_mappedObj = [ _pos, _dir, _mortarObj ] call BIS_fnc_objectsMapper;
{ if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKEDPLAYER"; }; false } count _mappedObj;
T8RMG_var_arrayCleanup pushBack _mappedObj;

_return = ( _mappedObj select 0 );
{ _x addCuratorEditableObjects [ [ _return ], true ]; false } count allCurators;

DEBUG( __FILE__, "_return", _return );

// Return
_return
