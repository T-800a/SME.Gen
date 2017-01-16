/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	onPlayerKilled.sqf
	Author:		T-800a

	[<oldUnit>,<killer>,<respawn>,<respawnDelay>]
	
 =======================================================================================================================
*/

if ( !isNil "T8SME_client_var_welcomeOnFirstSpawn" ) then 
{
	if ( T8SME_param_keepRespawnLoadout AND { isNil "T8SME_client_var_playerLoadout" } AND { player getVariable [ "bis_revive_incapacitated", false ]}) then { T8SME_client_var_playerLoadout = ( _this select 0 ) call T8C_fnc_getGear; };
};
