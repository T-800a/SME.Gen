/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_hintShow.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

if ( isDedicated OR !hasInterface ) exitWith {};

private [ "_indexHead", "_indexText", "_indexPreset", "_head", "_text", "_preset" ];

_indexHead		= param [ 0, 0, [ 123, "" ]];
_indexText		= param [ 1, 0, [ 123, "" ]];
_indexPreset	= param [ 2, 0, [ 123, "" ]];

waitUntil { !isNil "T8C_var_initDONE" };

if ( typeName _indexHead isEqualTo "STRING" ) then { _head = _indexHead; } else { _head = T8C_var_hintHeadArray select _indexHead; };
if ( typeName _indexText isEqualTo "STRING" ) then { _text = _indexText; } else { _text = T8C_var_hintTextArray select _indexText; };
if ( typeName _indexPreset isEqualTo "STRING" ) then { _preset = _indexPreset; } else { _preset = T8C_var_hintPresetArray select _indexPreset; };

hint parseText format [ _preset, _head, _text ];