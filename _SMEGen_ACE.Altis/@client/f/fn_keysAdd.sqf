/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_keysAdd.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

if ( isNil "T8C_var_inAction" ) then { T8C_var_inAction = false; };

waitUntil { sleep 1; !isNull ( findDisplay 46 ) };
( findDisplay 46 ) displayAddEventHandler [ "KeyDown", "_this call T8C_fnc_keysPress" ];

