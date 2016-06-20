/*
 =======================================================================================================================
	
	locations
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(isServer) exitWith {};

private [ "_cFnc" ];

_cFnc = 
{
	private [ "_obj" ];
	if (( count _this ) isEqualTo 9 ) then
	{
		_obj = _this select 8;
	} else {
		_obj = createVehicle [(_this select 0), [0,0,0], [], 0, "CAN_COLLIDE" ];
	};
	
	_obj allowDamage false;
	if (( _this select 4 ) isEqualTo 1 ) then
	{
		if ( isMultiplayer ) then { _obj enableSimulationGlobal false; } else { _obj enableSimulation false; };
	};
	
	_obj setdir (_this select 2);
	if((_this select 3) == -100) then
	{
		_obj setposATL (call compile (_this select 1));
		if((_this select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_this select 1)) select 0),((call compile (_this select 1)) select 1),(_this select 3)];
		[_obj,((_this select 7) select 0),((_this select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_this select 6) > 0) then {{call _x} foreach (_this select 6)};
	
	
	//Return
	_obj
};

// build base via SQF (XCam export)
if ( worldName isEqualTo "Altis" ) then {
	#include <sites\altis_mainbase.sqf>
};

if ( worldName isEqualTo "mske" ) then {
	#include <sites\mske_mainbase.sqf>
};

if ( worldName isEqualTo "Takistan" ) then {
	#include <sites\takistan_mainbase.sqf>
};

if ( worldName isEqualTo "Chernarus" ) then {
	#include <sites\chernarus_mainbase.sqf>
};



T8_locations_var_initDONE = true;




