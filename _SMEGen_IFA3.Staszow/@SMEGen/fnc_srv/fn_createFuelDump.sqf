/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createFuelDump.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_dir", "_dirCor", "_objects", "_mappedObj", "_return" ];

params [ "_pos" ];

_dir = random 360;

_objects = 
[
	[( "EMPTY_TRUCK_FUEL" call T8SME_server_fnc_getVehicleClass ),[1.99756,-0.330566,-0.0240355],0.102525,1,0,[0.78057,1.54026],"","",true,false],
	["FlexibleTank_01_forest_F",[0.0788574,0.879883,7.29561e-005],0.0361526,1,0.0980842,[-0.0311922,-0.0205675],"","",true,false], 
	["FlexibleTank_01_sand_F",[-0.687012,1.04297,7.29561e-005],296.851,1,0.117633,[-0.0312094,-0.0208536],"","",true,false], 
	["FlexibleTank_01_sand_F",[0.0388184,1.57617,7.43866e-005],115.16,1,0.117671,[-0.0312216,-0.0209664],"","",true,false], 
	["Land_MetalBarrel_F",[-0.0644531,-1.85547,5.67436e-005],278.466,1,0.0788827,[0.000470358,-0.0160979],"","",true,false], 
	["Land_MetalBarrel_F",[-0.67334,-2.41211,5.38826e-005],338.327,1,0.0688677,[0.000210279,-0.0156699],"","",true,false], 
	["Land_MetalBarrel_F",[0.103516,-2.65381,5.48363e-005],359.997,1,0.0688637,[0.000575998,-0.0158082],"","",true,false], 
	["WaterPump_01_sand_F",[-2.65503,-2.01563,0.000851631],230.535,1,0,[-0.000234663,-0.000834579],"","",true,false]
];


_mappedObj = [ _pos, _dir, _objects ] call T8SME_server_fnc_objectsMapper;

// T8SME_server_var_arrayCleanup pushBack _mappedObj;

_return = ( _mappedObj select 0 );

{ _x addCuratorEditableObjects [ [ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
