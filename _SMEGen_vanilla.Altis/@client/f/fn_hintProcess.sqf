/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_hintProcess.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

if ( isDedicated OR !hasInterface ) exitWith {};

private [ "_indexHead", "_indexText", "_indexPreset", "_firstRun" ];

_indexHead		= param [ 0, 0, [ 123, "" ]];
_indexText		= param [ 1, 0, [ 123, "" ]];
_indexPreset	= param [ 2, 0, [ 123, "" ]];

if ( T8C_var_hintActive OR { count T8C_var_hintBuffer > 0 } ) exitWith
{
	T8C_var_hintBuffer pushBack [ _indexHead, _indexText, _indexPreset ];
};

_firstRun = true;

while { _firstRun OR count T8C_var_hintBuffer > 0 } do
{
	private [ "_msg" ];
	T8C_var_hintActive = true;
	if ( _firstRun ) then { [ _indexHead, _indexText, _indexPreset ] call T8C_fnc_hintShow; };
	if ( count T8C_var_hintBuffer > 0 AND { ! _firstRun } ) then
	{		
		_msg = [ T8C_var_hintBuffer ] call BIS_fnc_arrayShift;
		if ( count _msg > 2 ) then { [ _msg select 0, _msg select 1, _msg select 2 ] call T8C_fnc_hintShow; };
	};
	sleep T8C_var_hintMinShowTime;
	_firstRun = false;
	T8C_var_hintActive = false;
};