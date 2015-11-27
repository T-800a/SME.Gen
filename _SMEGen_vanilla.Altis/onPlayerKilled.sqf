/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	onPlayerKilled.sqf
	Author:		T-800a

	[<oldUnit>,<killer>,<respawn>,<respawnDelay>]
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

if ( !isNil "T8C_var_welcomeOnFirstSpawn" ) then 
{
	if ( T8RMG_var_keepRespawnLoadout AND { isNil "T8C_var_playerLoadout" } AND { player getVariable [ "bis_revive_incapacitated", false ]}) then { T8C_var_playerLoadout = ( _this select 0 ) call T8C_fnc_getGear; };
};
