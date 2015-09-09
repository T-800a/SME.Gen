/*
 =======================================================================================================================

	T8 Units Script
	
	Funktion:	fn_debugLog.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	[ "", "", _this ] spawn T8U_fnc_DebugLog;
	
 =======================================================================================================================
*/

// 

// #include debug_console.hpp
#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")
#define conFileTime(_msg) "debug_console" callExtension (_msg + "~0001")

private [ "_fnc", "_txt", "_vars", "_ftxt" ];

_fnc	= param [ 0, "fn_debugLog.sqf", [ "" ]];
_txt	= param [ 1, "No msg recieved", [ "" ]];
_vars	= param [ 2, [], [[]]];

_ftxt	= format [ "%1 >>>> %2 >> %3 >> %4", ( round diag_fps ), _fnc, _txt, _vars ];

if ( T8U_var_DEBUG_useCon ) then
{
	conFileTime( _ftxt );
} else {
	[ "%1 >> %2", time, _ftxt ] call BIS_fnc_error;
};