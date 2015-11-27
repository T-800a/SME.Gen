/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_switchFarSuicide.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_msg" ];

params [[ "_switch", 0, 2, [123]]];

switch ( _switch ) do 
{ 
	case 0: 
	{
		if (( side player ) == WEST ) then { FAR_AllowSUICIDE = false; };
	};
	
	case 1: 
	{
		FAR_AllowSUICIDE = true;
	};
	
	case 2: 
	{
		if (( side player ) == WEST ) then { if ( FAR_AllowSUICIDE ) then { FAR_AllowSUICIDE = false; } else { FAR_AllowSUICIDE = true; }; };
	};
	
	default	{};
};

_msg = format [ 'FAR Revive<br />Suicide allowed: %1', FAR_AllowSUICIDE ];
[ 'CIM Admin', _msg, 0 ] spawn ASC_NH_fnc_sendHint;