/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	onPlayerRespawn.sqf
	Author:		T-800a

 =======================================================================================================================
*/

private [ "_newUnit", "_oldUnit" ];

_newUnit = _this select 0;
_oldUnit = _this select 1;

if ( !isNil "_oldUnit" AND { !isNull _oldUnit }) then { deleteVehicle _oldUnit; };

if ( isNil "T8C_var_welcomeOnFirstSpawn" ) then { [] spawn T8C_fnc_welcome; T8C_var_welcomeOnFirstSpawn = true; };

