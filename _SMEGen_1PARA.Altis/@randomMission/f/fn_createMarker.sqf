/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_createMarker.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_mkr = [ "markerName", [ 10, 10, 0 ], "markerText" ] call T8RMG_fnc_createMarker;
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_mp", "_ms", "_mt", "_mg", "_mc", "_ma", "_mtxt", "_m", "_mn", "_ftxt" ];

_mn		= [ _this, 0, "",				[""] ] call BIS_fnc_param;
_mp		= [ _this, 1, [0,0,0],			[[]] ] call BIS_fnc_param;
_mtxt	= [ _this, 2, "",				[""] ] call BIS_fnc_param;
_mg		= [ _this, 3, [100,100],		[[]] ] call BIS_fnc_param;
_mdir	= [ _this, 4, 0,				[123] ] call BIS_fnc_param;
_ms		= [ _this, 5, "ELLIPSE",		[""] ] call BIS_fnc_param;
_mt		= [ _this, 6, "waypoint",		[""] ] call BIS_fnc_param;
_mc		= [ _this, 7, "ColorOrange",	[""] ] call BIS_fnc_param;
_ma		= [ _this, 8, 0.50,				[123] ] call BIS_fnc_param;

_ftxt = format [ "T8RMG >> fn_createMarker.sqf >>>>> %1 >> %2", ( round diag_fps ), _this ]; conFile( _ftxt );

if ( _mn isEqualTo "" ) exitWith { _ftxt = format [ "T8RMG >> fn_createMarker.sqf >>>>> %1 >> %2", ( round diag_fps ), "wrong markerName" ]; conFile( _ftxt ); false };
if ( _mp isEqualTo [0,0,0] ) exitWith { _ftxt = format [ "T8RMG >> fn_createMarker.sqf >>>>> %1 >> %2", ( round diag_fps ), "wrong markerPos" ]; conFile( _ftxt );false };

_m = createMarkerLocal [ _mn, _mp ];
_m setMarkerShapeLocal _ms;
_m setMarkerTypeLocal _mt;
_m setMarkerSizeLocal _mg;
_m setMarkerColorLocal _mc;
_m setMarkerAlphaLocal _ma;
_m setMarkerTextLocal _mtxt;
_m setMarkerDirLocal _mdir;

T8RMG_var_arrayCleanup pushBack _m;

// Return
true
