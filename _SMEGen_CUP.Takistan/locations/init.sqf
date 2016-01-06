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
#include <sites\altis_mainbase.sqf>
};

if ( worldName isEqualTo "mske" ) then {
#include <sites\mske_mainbase.sqf>
};

if ( worldName isEqualTo "Takistan" ) then {
#include <sites\takistan_mainbase.sqf>
};

T8_locations_var_initDONE = true;




