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

params [ "_pos" ];

private _dir = random 360;

private _objects = 
[
	[( "EMPTY_TRUCK_FUEL" call T8SME_server_fnc_getVehicleClass ),[3.0,-0.330566,-0.0240355],0.102525,1,0,[0.78057,1.54026],"","",true,false],
	["Land_WoodenCrate_01_stack_x5_F",[0.0388184,1.57617,7.43866e-005],115.16,1,0.117671,[-0.0312216,-0.0209664],"","",true,false], 
	["Land_MetalBarrel_F",[-0.0644531,-1.85547,5.67436e-005],278.466,1,0.0788827,[0.000470358,-0.0160979],"","",true,false], 
	["Land_MetalBarrel_F",[-0.67334,-2.41211,5.38826e-005],338.327,1,0.0688677,[0.000210279,-0.0156699],"","",true,false], 
	["Land_MetalBarrel_F",[0.103516,-2.65381,5.48363e-005],359.997,1,0.0688637,[0.000575998,-0.0158082],"","",true,false], 
	["WaterPump_01_sand_F",[-2.65503,-2.01563,0.000851631],230.535,1,0,[-0.000234663,-0.000834579],"","",true,false]
];


private _mappedObj = [ _pos, _dir, _objects ] call T8SME_server_fnc_objectsMapper;

// T8SME_server_var_arrayCleanup pushBack _mappedObj;

private _return = ( _mappedObj select 0 );

{ _x addCuratorEditableObjects [ [ _return ], true ]; false } count allCurators;

__DEBUG( __FILE__, "_return", _return );

// Return
_return
