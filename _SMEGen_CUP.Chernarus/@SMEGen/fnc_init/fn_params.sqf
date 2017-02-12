/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_params.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
 
 =======================================================================================================================
*/


// faction used to spawn enemy units
switch ( "param_enemy" call BIS_fnc_getParamValue ) do
{
	case   0 :	{ T8SME_param_enemyFaction = "vanilla_OPFOR"; };
	case   1 :	{ T8SME_param_enemyFaction = "vanilla_OPFOR_URBAN"; };
	case   2 :	{ T8SME_param_enemyFaction = "vanilla_OPFOR_GUER"; };
	case   3 :	{ T8SME_param_enemyFaction = "vanilla_INDEP"; };
	case   4 :	{ T8SME_param_enemyFaction = "vanilla_INDEP_GUER"; };
	case   5 :	{ T8SME_param_enemyFaction = "vanilla_BLUFOR"; };
	
	case  20 :	{ T8SME_param_enemyFaction = "CUP_OPFOR_TAKarmy"; };
	case  21 :	{ T8SME_param_enemyFaction = "CUP_GRNFOR_TAKlocals"; };
	case  22 :	{ T8SME_param_enemyFaction = "CUP_GRNFOR_NAPA"; };
	case  23 :	{ T8SME_param_enemyFaction = "CUP_BLUFOR_USMC"; };
	case  24 :	{ T8SME_param_enemyFaction = "CUP_BLUFOR_USA"; };
	
	case  50 :	{ T8SME_param_enemyFaction = "RHS_OPFOR_GUER"; };
	case  51 :	{ T8SME_param_enemyFaction = "RHS_OPFOR_VMF"; };
	case  52 :	{ T8SME_param_enemyFaction = "RHS_OPFOR_VDV"; };
	case  53 :	{ T8SME_param_enemyFaction = "RHS_GREF_CHDKZ"; };
	case  54 :	{ T8SME_param_enemyFaction = "RHS_GREF_CDF"; };
	case  55 :	{ T8SME_param_enemyFaction = "RHS_GREF_UN"; };
	case  56 :	{ T8SME_param_enemyFaction = "RHS_SAF_ARMY"; };
	case  57 :	{ T8SME_param_enemyFaction = "RHS_SAF_PARA"; };
	case  58 :	{ T8SME_param_enemyFaction = "RHS_BLUFOR_ARMY_OCP"; };

	case  70 :	{ T8SME_param_enemyFaction = "IFA3_OPFOR_SOV"; };
	case  71 :	{ T8SME_param_enemyFaction = "IFA3_GRNFOR_USA"; };
	case  72 :	{ T8SME_param_enemyFaction = "IFA3_BLUFOR_WEHR"; };
	
	
	default		{ T8SME_param_enemyFaction = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "enemyFaction" ); };
};

// reward / gearset
switch ( "param_reward" call BIS_fnc_getParamValue ) do
{
	case   0 :	{ T8SME_param_playerFaction = "vanilla_BLUFOR"; };
	case   1 :	{ T8SME_param_playerFaction = "vanilla_BLUFOR_fullArsenal"; };
	case   2 :	{ T8SME_param_playerFaction = "vanilla_GRNFOR_fullArsenal"; };
	case   3 :	{ T8SME_param_playerFaction = "vanilla_REDFOR_fullArsenal"; };
	
	case  20 :	{ T8SME_param_playerFaction = "CUP_BLUFOR_USMC"; };
	case  21 :	{ T8SME_param_playerFaction = "CUP_BLUFOR_USMC_fullArsenal"; };
	case  22 :	{ T8SME_param_playerFaction = "CUP_BLUFOR_USA"; };
	case  23 :	{ T8SME_param_playerFaction = "CUP_BLUFOR_USA_fullArsenal"; };
	
	case  50 :	{ T8SME_param_playerFaction = "RHS_INDEP"; };
	case  51 :	{ T8SME_param_playerFaction = "RHS_INDEP_fullArsenal"; };
	case  52 :	{ T8SME_param_playerFaction = "RHS_USMC"; };
	
	case  70 :	{ T8SME_param_playerFaction = "IFA3_BLUFOR_WEHR"; };
	case  71 :	{ T8SME_param_playerFaction = "IFA3_BLUFOR_WEHR_fullArsenal"; };

	case 900 :	{ T8SME_param_playerFaction = "vanilla_BLUFOR_ACE"; };
	
	default		{ T8SME_param_playerFaction = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "playerFaction" ); };
};


// simultaneous mission sites
T8SME_param_amountSites = "param_sites" call BIS_fnc_getParamValue;
if ( T8SME_param_amountSites < 0 ) then { T8SME_param_amountSites = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesCount" ); };


// minimum distance between mission sites
T8SME_param_sitesMinDist = "param_sitesMinDist" call BIS_fnc_getParamValue;
if ( T8SME_param_sitesMinDist < 0 ) then { T8SME_param_sitesMinDist = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesMinDist" ); };


// AI Skill
// overwrite T8U base settings
private [ "_AIskill" ];
switch ( "param_skill" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ _AIskill = 0; };
	case 1 :	{ _AIskill = 1; };
	case 2 :	{ _AIskill = 2; };
	default		{ _AIskill = 0; };
};
T8U_var_Presets = [[ _AIskill, 1 ], [ _AIskill, 1 ], [ _AIskill, 1 ]];

// Keep Loadout After Respawn
switch ( "param_loadout" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ T8SME_param_keepRespawnLoadout = true; };
	case 1 :	{ T8SME_param_keepRespawnLoadout = false; };
	default		{ T8SME_param_keepRespawnLoadout = true; };
};

// Show Map Marker for Players and Vehicles
switch ( "param_mapmarker" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ T8SME_param_allowMapMarker = true; };
	case 1 :	{ T8SME_param_allowMapMarker = false; };
	default		{ T8SME_param_allowMapMarker = true; };
};

// Allow Vehicle Patrols
switch ( "param_vehiclepatrols" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ T8SME_param_allowVehiclePatrols = true; };
	case 1 :	{ T8SME_param_allowVehiclePatrols = false; };
	default		{ T8SME_param_allowVehiclePatrols = true; };
};


// REVIVE SETTINGS
// global on/off for revive
switch ( "param_FAR_enable" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ FAR_isEnabled = true; };
	case 1 :	{ FAR_isEnabled = false; };
	default		{ FAR_isEnabled = false; };
};

// FAR_ReviveMode
switch ( "param_FAR_medic" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ FAR_ReviveMode	= 0; };
	case 1 :	{ FAR_ReviveMode	= 1; };
	case 2 :	{ FAR_ReviveMode	= 2; };
	case 3 :	{ FAR_ReviveMode	= 3; };
	default		{ FAR_ReviveMode	= 1; };
};

// FAR_RequireFAK
switch ( "param_FAR_needfak" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ FAR_RequireFAK	= true; };
	case 1 :	{ FAR_RequireFAK	= false; };
	default		{ FAR_RequireFAK	= false; };
};

// FAR_BleedOut
switch ( "param_FAR_bleedout" call BIS_fnc_getParamValue ) do
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
switch ( "param_FAR_health" call BIS_fnc_getParamValue ) do
{
	case 0 :	{ FAR_ReviveDamage	= 0.00; };
	case 1 :	{ FAR_ReviveDamage	= 0.25; };
	case 2 :	{ FAR_ReviveDamage	= 0.50; };
	case 3 :	{ FAR_ReviveDamage	= 0.75; };
	default		{ FAR_ReviveDamage	= 0.50; };
};


// SET PLAYER Side accroding to Reward/Gear Set
private _side = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "playerSide" );
switch ( _side ) do
{
	case   0 :	{ T8SME_param_playerSide = EAST; };
	case   1 :	{ T8SME_param_playerSide = WEST; };
	case   2 :	{ T8SME_param_playerSide = INDEPENDENT; };
	default		{ T8SME_param_playerSide = WEST; };
};

// other scripts can check this 
T8SME_param_INIT = true;