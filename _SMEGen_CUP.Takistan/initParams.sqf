/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		initParams.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
 
 =======================================================================================================================
*/


// faction used to spawn enemy units
switch ( paramsArray select 1 ) do
{
	case   0 :	{ T8SME_param_enemyFaction = "vanilla_OPFOR"; };
	case   1 :	{ T8SME_param_enemyFaction = "vanilla_OPFOR_URBAN"; };
	case   2 :	{ T8SME_param_enemyFaction = "vanilla_OPFOR_GUER"; };
	case   3 :	{ T8SME_param_enemyFaction = "vanilla_INDEP"; };
	case   4 :	{ T8SME_param_enemyFaction = "vanilla_INDEP_GUER"; };
	case   5 :	{ T8SME_param_enemyFaction = "CUP_OPFOR_TAKarmy"; };
	case  20 :	{ T8SME_param_enemyFaction = "RHS_OPFOR_GUER"; };
	
	case 100 :	{ T8SME_param_enemyFaction = "vanilla_BLUFOR"; };
	case 110 :	{ T8SME_param_enemyFaction = "CUP_BLUFOR_USMC"; };
	case 120 :	{ T8SME_param_enemyFaction = "RHS_BLUFOR_ARMY_OCP"; };
	
	default		{ T8SME_param_enemyFaction = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnUnitsFaction" ); };
};

// reward / gearset
switch ( paramsArray select 2 ) do
{
	case   0 :	{ T8SME_param_playerRewardSet = "vanilla_BLUFOR"; };
	case   1 :	{ T8SME_param_playerRewardSet = "vanilla_BLUFOR_ACE"; };
	case   2 :	{ T8SME_param_playerRewardSet = "CUP_BLUFOR_USMC"; };

	case  20 :	{ T8SME_param_playerRewardSet = "RHS_INDEP"; };	
	
	case 900 :	{ T8SME_param_playerRewardSet = "vanilla_fullArsenal"; };
	case 901 :	{ T8SME_param_playerRewardSet = "CUP_BLUFOR_USMC_fullArsenal"; };
	case 902 :	{ T8SME_param_playerRewardSet = "RHS_INDEP_fullArsenal"; };
	
	default		{ T8SME_param_playerRewardSet = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerRewardSet" ); };
};

// Simultaneous Mission Sites
switch ( paramsArray select 3 ) do
{
	case 0 :	{ T8SME_param_amountSites = 1; };
	case 1 :	{ T8SME_param_amountSites = 2; };
	case 2 :	{ T8SME_param_amountSites = 3; };
	case 3 :	{ T8SME_param_amountSites = 4; };
	default		{ T8SME_param_amountSites = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesCount" ); };
};

// AI Skill
// overwrite T8U base settings
private [ "_AIskill" ];
switch ( paramsArray select 4 ) do
{
	case 0 :	{ _AIskill = 0; };
	case 1 :	{ _AIskill = 1; };
	case 2 :	{ _AIskill = 2; };
	default		{ _AIskill = 0; };
};
T8U_var_Presets = [[ _AIskill, 1 ], [ _AIskill, 1 ], [ _AIskill, 1 ]];

// Keep Loadout After Respawn
switch ( paramsArray select 5 ) do
{
	case 0 :	{ T8SME_param_keepRespawnLoadout = true; };
	case 1 :	{ T8SME_param_keepRespawnLoadout = false; };
	default		{ T8SME_param_keepRespawnLoadout = true; };
};

// Show Map Marker for Players and Vehicles
switch ( paramsArray select 6 ) do
{
	case 0 :	{ T8SME_param_allowMapMarker = true; };
	case 1 :	{ T8SME_param_allowMapMarker = false; };
	default		{ T8SME_param_allowMapMarker = true; };
};

// Allow Vehicle Patrols
switch ( paramsArray select 7 ) do
{
	case 0 :	{ T8SME_param_allowVehiclePatrols = true; };
	case 1 :	{ T8SME_param_allowVehiclePatrols = false; };
	default		{ T8SME_param_allowVehiclePatrols = true; };
};

// faction used by the players (set in the cfgRandomMissions.hpp)
T8SME_param_playerFaction	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerFaction" );



// REVIVE SETTINGS
// global on/off for revive
switch ( paramsArray select 21 ) do
{
	case 0 :	{ FAR_isEnabled = true; };
	case 1 :	{ FAR_isEnabled = false; };
	default		{ FAR_isEnabled = true; };
};

// FAR_ReviveMode
switch ( paramsArray select 22 ) do
{
	case 0 :	{ FAR_ReviveMode	= 0; };
	case 1 :	{ FAR_ReviveMode	= 1; };
	case 2 :	{ FAR_ReviveMode	= 2; };
	case 3 :	{ FAR_ReviveMode	= 3; };
	default		{ FAR_ReviveMode	= 1; };
};

// FAR_RequireFAK
switch ( paramsArray select 23 ) do
{
	case 0 :	{ FAR_RequireFAK	= true; };
	case 1 :	{ FAR_RequireFAK	= false; };
	default		{ FAR_RequireFAK	= false; };
};

// FAR_BleedOut
switch ( paramsArray select 24 ) do
{
	case 0 :	{ FAR_BleedOut	= 60; };
	case 1 :	{ FAR_BleedOut	= 120; };
	case 2 :	{ FAR_BleedOut	= 180; };
	case 3 :	{ FAR_BleedOut	= 240; };
	case 4 :	{ FAR_BleedOut	= 300; };
	case 5 :	{ FAR_BleedOut	= 360; };
	default		{ FAR_BleedOut	= 240; };
};

// FAR_ReviveDamage
switch ( paramsArray select 25 ) do
{
	case 0 :	{ FAR_ReviveDamage	= 0.00; };
	case 1 :	{ FAR_ReviveDamage	= 0.25; };
	case 2 :	{ FAR_ReviveDamage	= 0.50; };
	case 3 :	{ FAR_ReviveDamage	= 0.75; };
	default		{ FAR_ReviveDamage	= 0.50; };
};

// other scripts can check this 
T8SME_param_INIT = true;