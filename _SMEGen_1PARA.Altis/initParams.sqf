/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		initParams.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
 
	T8RMG_var_enemyFaction
	T8RMG_var_playerFaction
 
 =======================================================================================================================
*/

// faction used to spawn enemy units
switch ( paramsArray select 0 ) do
{
	case 0 :	{ T8RMG_var_enemyFaction = "vanilla_OPFOR"; };
	case 1 :	{ T8RMG_var_enemyFaction = "vanilla_OPFOR_URBAN"; };
	case 2 :	{ T8RMG_var_enemyFaction = "vanilla_OPFOR_GUER"; };
	case 3 :	{ T8RMG_var_enemyFaction = "vanilla_INDEP"; };
	case 4 :	{ T8RMG_var_enemyFaction = "vanilla_INDEP_GUER"; };
	case 5 :	{ T8RMG_var_enemyFaction = "ASC_opfor_guerilla"; };
	default		{ T8RMG_var_enemyFaction = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnUnitsFaction" ); };
};

// reward / gearset
switch ( paramsArray select 1 ) do
{
	case 0 :	{ T8RMG_var_playerRewardSet = "vanilla_BLUFOR"; };
	case 1 :	{ T8RMG_var_playerRewardSet = "SAG_gear"; };
	default		{ T8RMG_var_playerRewardSet = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerRewardSet" ); };
};

// faction used by the players (set in the cfgRandomMissions.hpp)
T8RMG_var_playerFaction	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerFaction" );