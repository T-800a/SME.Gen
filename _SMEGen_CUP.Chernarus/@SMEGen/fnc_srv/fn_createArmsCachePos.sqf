/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createArmsCachePos.sqf
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
	["Box_FIA_Support_F",[0.602539,1.56836,-7.62939e-006],316.17,1,0.109201,[0.00145078,0.00167932],"","",true,false], 
	["Box_FIA_Wps_F",[-0.656494,-1.80762,-1.43051e-006],45.6173,1,0.106978,[0.00159303,0.000687902],"","",true,false], 
	["Land_MetalBarrel_F",[0.511963,-1.28296,5.29289e-005],47.8118,1,0.0884352,[0.000685619,-0.0155536],"","",true,false], 
	["FlexibleTank_01_sand_F",[1.61426,0.918945,7.39098e-005],0.0425856,1,0.215615,[-0.0314161,-0.0205751],"","",true,false], 
	["CargoNet_01_barrels_F",[1.55786,-1.28931,4.76837e-007],103.027,1,0,[-0.000202912,-0.000370332],"","",true,false], 
	["Land_MetalBarrel_F",[0.952148,-2.34302,5.29289e-005],316.698,1,0.0887025,[0.000653377,-0.0155435],"","",true,false], 
	["FlexibleTank_01_forest_F",[2.01611,1.5542,7.43866e-005],295.874,1,0.235274,[-0.0312123,-0.0209426],"","",true,false], 
	["FlexibleTank_01_sand_F",[1.39185,2.14722,7.39098e-005],300.065,1,0.215668,[-0.0311452,-0.0208582],"","",true,false], 
	["Land_AncientPillar_fallen_F",[3.24927,-0.434082,-0.0415154],101.144,1,0,[-4.30633,1.02715],"","",true,false]
];

_mappedObj = [ _pos, _dir, _mortarObj ] call T8SME_server_fnc_objectsMapper;

// { if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKEDPLAYER"; }; false } count _mappedObj;
// T8SME_server_var_arrayCleanup pushBack _mappedObj;

_return = [( _mappedObj select 0 ), ( _mappedObj select 1 )];
{ _x addCuratorEditableObjects [ _return, true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return

