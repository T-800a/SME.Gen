/*
 =======================================================================================================================
	
	locations
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(isServer) exitWith {};


// build base via SQF (XCam export)
if ( worldName isEqualTo "Altis" ) then {
	call compile preprocessFileLineNumbers "sites\altis_mainbase.sqf";
};

if ( worldName isEqualTo "mske" ) then {
	call compile preprocessFileLineNumbers "sites\mske_mainbase.sqf";
};

if ( worldName isEqualTo "Takistan" ) then {
	call compile preprocessFileLineNumbers "sites\takistan_mainbase.sqf";
};

T8_locations_var_initDONE = true;




