/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createMarker.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_mkr = [ "markerName", [ 10, 10, 0 ], "markerText", [100,100], 0, "ELLIPSE", "empty" ] call T8RMG_fnc_createMarker;
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_mp", "_ms", "_mt", "_mg", "_mc", "_ma", "_mtxt", "_m", "_mn", "_ftxt" ];

_mn		= param [ 0, "",			[""]];
_mp		= param [ 1, [0,0,0],		[[]]];
_mtxt	= param [ 2, "",			[""]];
_mg		= param [ 3, [100,100],		[[]]];
_mdir	= param [ 4, 0,				[123]];
_ms		= param [ 5, "ELLIPSE",		[""]];
_mt		= param [ 6, "waypoint",	[""]];
_mc		= param [ 7, "ColorOrange",	[""]];
_ma		= param [ 8, 0.50,			[123]];

DEBUG( __FILE__, "_this", _this );

if ( _mn isEqualTo "" ) exitWith { false };
if ( _mp isEqualTo [0,0,0] ) exitWith { false };

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
_m
