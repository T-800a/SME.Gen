/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_checkOutside.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );


private [ "_pos", "_posGroundASL", "_posSkyASL", "_return" ];

_pos = _this select 0;

_posGroundASL	= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 2 ];
_posSkyASL		= ATLToASL [( _pos select 0 ), ( _pos select 1 ), 50 ];

_return = lineIntersects [ _posGroundASL, _posSkyASL ];

// Return
_return
