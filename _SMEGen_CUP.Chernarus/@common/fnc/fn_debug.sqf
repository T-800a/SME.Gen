/*
 =======================================================================================================================

	@common

	File:		fn_debug.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
	// );
	__DEBUG( __FILE__, "_var", _var );
	
 =======================================================================================================================
*/

#include <..\MACRO.hpp>

if ( isMultiplayer ) exitWith {};

private [ "_o" ];

params [
	[ "_f", "___no_file_!!___" ],
	[ "_t", "___no_func_!!___" ],
	[ "_v", "___no_vars_!!___" ]
];

_f = _f splitString "\";
reverse _f;

_o = format [ "T8RMG >> %1 >> %2 >>>>> %3 >> %4", ( round diag_fps ), ( _f select 0 ), _t, _v ]; 

__DEBUGCON( _o );
