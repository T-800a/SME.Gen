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
	T8RMG_var_amountSites
 
 =======================================================================================================================
*/

private [ "_AIskill" ];

// faction used to spawn enemy units
switch ( paramsArray select 0 ) do
{
	case 0 :	{ T8RMG_var_enemyFaction = "vanilla_OPFOR"; };
	case 1 :	{ T8RMG_var_enemyFaction = "vanilla_OPFOR_URBAN"; };
	case 2 :	{ T8RMG_var_enemyFaction = "vanilla_OPFOR_GUER"; };
	case 3 :	{ T8RMG_var_enemyFaction = "vanilla_INDEP"; };
	case 4 :	{ T8RMG_var_enemyFaction = "vanilla_INDEP_GUER"; };
	case 5 :	{ T8RMG_var_enemyFaction = "CUP_OPFOR_TAKarmy"; };
	default		{ T8RMG_var_enemyFaction = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnUnitsFaction" ); };
};

// reward / gearset
switch ( paramsArray select 1 ) do
{
	case 0 :	{ T8RMG_var_playerRewardSet = "vanilla_BLUFOR"; };
	case 1 :	{ T8RMG_var_playerRewardSet = "vanilla_BLUFOR_fullArsenal"; };
	case 2 :	{ T8RMG_var_playerRewardSet = "CUP_BLUFOR_USMC"; };
	default		{ T8RMG_var_playerRewardSet = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerRewardSet" ); };
};

// reward / gearset
switch ( paramsArray select 2 ) do
{
	case 0 :	{ T8RMG_var_amountSites = 1; };
	case 1 :	{ T8RMG_var_amountSites = 2; };
	case 2 :	{ T8RMG_var_amountSites = 3; };
	case 3 :	{ T8RMG_var_amountSites = 4; };
	default		{ T8RMG_var_amountSites = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesCount" ); };
};

// reward / gearset
switch ( paramsArray select 3 ) do
{
	case 0 :	{ _AIskill = 0; };
	case 1 :	{ _AIskill = 1; };
	case 2 :	{ _AIskill = 2; };
	default		{ _AIskill = 0; };
};


// faction used by the players (set in the cfgRandomMissions.hpp)
T8RMG_var_playerFaction	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerFaction" );

// overwrite T8U base settings
T8U_var_Presets = [[ _AIskill, 2 ], [ _AIskill, 1 ], [ _AIskill, 1 ]];