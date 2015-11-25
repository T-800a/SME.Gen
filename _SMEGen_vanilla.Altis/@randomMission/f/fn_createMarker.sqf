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

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_m" ];

params [
	[ "_mn",	"",				[""]],
	[ "_mp",	[0,0,0],		[[]]],
	[ "_mtxt",	"",				[""]],
	[ "_mg",	[100,100],		[[]]],
	[ "_mdir",	0,				[123]],
	[ "_ms",	"ELLIPSE",		[""]],
	[ "_mt",	"waypoint",		[""]],
	[ "_mc",	"ColorOrange",	[""]],
	[ "_ma",	0.50,			[123]]
];

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
