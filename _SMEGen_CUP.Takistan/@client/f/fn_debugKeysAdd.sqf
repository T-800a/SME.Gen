/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_debugKeysAdd.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

if ( isMultiplayer ) exitWith {};

waitUntil { sleep 1; !isNull ( findDisplay 46 ) };
( findDisplay 46 ) displayAddEventHandler [ "KeyDown", "_this call T8C_fnc_debugKeysPress" ];

waitUntil { sleep 1; !isNull ( findDisplay 312 ) };
( findDisplay 312 ) displayAddEventHandler [ "KeyDown", "_this call T8C_fnc_debugKeysPress" ];
