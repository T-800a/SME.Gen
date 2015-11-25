/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionFactions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class missionFactions 
{
	// --------------------------------------------------------------
	//	vanilla OPFOR
	//
	
	class vanilla_OPFOR
	{
		spawnUnitsSide	= 0;
		
		class units
		{
			SQUADLEADER = "O_Soldier_SL_F";
			TEAMLEADER	= "O_Soldier_TL_F";
			CORPSMAN	= "O_medic_F";
			MARKSMAN	= "O_Soldier_M_F";
			HEAVYMG		= "O_HeavyGunner_F";
			LIGHTMG		= "O_Soldier_AR_F";
			ANTITANK	= "O_Soldier_AT_F";
			ANTIPERSON	= "O_Soldier_LAT_F";
			ANTIAIR		= "O_Soldier_AA_F";
			GRENADIER	= "O_Soldier_GL_F";
			RIFLEMAN	= "O_Soldier_F";
			
			OFFICER		= "O_officer_F";
			
			OFFROAD		= "O_MRAP_02_F";
			OFFROAD_A	= "O_MRAP_02_hmg_F";
		};
	};
	
	class vanilla_OPFOR_URBAN
	{
		spawnUnitsSide	= 0;
		
		class units
		{
			SQUADLEADER = "O_SoldierU_SL_F";
			TEAMLEADER	= "O_soldierU_TL_F";
			CORPSMAN	= "O_soldierU_medic_F";
			MARKSMAN	= "O_soldierU_M_F";
			HEAVYMG		= "O_Urban_HeavyGunner_F";
			LIGHTMG		= "O_soldierU_AR_F";
			ANTITANK	= "O_soldierU_AT_F";
			ANTIPERSON	= "O_soldierU_LAT_F";
			ANTIAIR		= "O_soldierU_AA_F";
			GRENADIER	= "O_SoldierU_GL_F";
			RIFLEMAN	= "O_soldierU_F";
			
			OFFICER		= "O_officer_F";
			
			OFFROAD		= "O_MRAP_02_F";
			OFFROAD_A	= "O_MRAP_02_hmg_F";
		};
	};	
	
	class vanilla_OPFOR_GUER
	{
		spawnUnitsSide	= 0;	// 0 > East / 1 > West / 2 > Indep
		
		class units
		{
			SQUADLEADER = "O_G_Soldier_SL_F";
			TEAMLEADER	= "O_G_Soldier_TL_F";
			CORPSMAN	= "O_G_medic_F";
			MARKSMAN	= "O_G_Soldier_M_F";
			HEAVYMG		= "O_G_Soldier_AR_F";
			LIGHTMG		= "O_G_Soldier_AR_F";
			ANTITANK	= "O_G_Soldier_LAT_F";
			ANTIPERSON	= "O_G_Soldier_LAT_F";
			ANTIAIR		= "O_G_Soldier_LAT_F";
			GRENADIER	= "O_G_Soldier_GL_F";
			RIFLEMAN	= "O_G_Soldier_F";
			
			OFFICER		= "O_G_officer_F";
			
			OFFROAD		= "O_G_Offroad_01_F";
			OFFROAD_A	= "O_G_Offroad_01_armed_F";
		};
	};


	// --------------------------------------------------------------
	//	vanilla INDEP
	//
	
	class vanilla_INDEP
	{
		spawnUnitsSide	= 2;	// 0 > East / 1 > West / 2 > Indep
		
		class units
		{
			SQUADLEADER = "I_Soldier_SL_F";
			TEAMLEADER	= "I_Soldier_TL_F";
			CORPSMAN	= "I_medic_F";
			MARKSMAN	= "I_Soldier_M_F";
			HEAVYMG		= "I_Soldier_AR_F";
			LIGHTMG		= "I_Soldier_AR_F";
			ANTITANK	= "I_Soldier_AT_F";
			ANTIPERSON	= "I_Soldier_LAT_F";
			ANTIAIR		= "I_Soldier_AA_F";
			GRENADIER	= "I_Soldier_GL_F";
			RIFLEMAN	= "I_Soldier_F";
			
			OFFICER		= "I_officer_F";
			
			OFFROAD		= "I_MRAP_03_F";
			OFFROAD_A	= "I_MRAP_03_hmg_F";
		};
	};
	
	class vanilla_INDEP_GUER
	{
		spawnUnitsSide	= 2;	// 0 > East / 1 > West / 2 > Indep
		
		class units
		{
			SQUADLEADER = "I_G_Soldier_SL_F";
			TEAMLEADER	= "I_G_Soldier_TL_F";
			CORPSMAN	= "I_G_medic_F";
			MARKSMAN	= "I_G_Soldier_M_F";
			HEAVYMG		= "I_G_Soldier_AR_F";
			LIGHTMG		= "I_G_Soldier_AR_F";
			ANTITANK	= "I_G_Soldier_LAT_F";
			ANTIPERSON	= "I_G_Soldier_LAT_F";
			ANTIAIR		= "I_G_Soldier_LAT_F";
			GRENADIER	= "I_G_Soldier_GL_F";
			RIFLEMAN	= "I_G_Soldier_F";
			
			OFFICER		= "I_G_officer_F";
			
			OFFROAD		= "I_G_Offroad_01_F";
			OFFROAD_A	= "I_G_Offroad_01_armed_F";
		};
	};
	
	
	
	// --------------------------------------------------------------
	//	CUP Factions
	//
	
	class CUP_OPFOR_TAKarmy
	{
		spawnUnitsSide	= 0;	// 0 > East / 1 > West / 2 > Indep
		
		class units
		{
			SQUADLEADER = "CUP_O_TK_Soldier_SL";
			TEAMLEADER	= "CUP_O_TK_Spotter";
			CORPSMAN	= "CUP_O_TK_Medic";
			MARKSMAN	= "CUP_O_TK_Sniper";
			HEAVYMG		= "CUP_O_TK_Soldier_MG";
			LIGHTMG		= "CUP_O_TK_Soldier_AR";
			ANTITANK	= "CUP_O_TK_Soldier_HAT";
			ANTIPERSON	= "CUP_O_TK_Soldier_LAT";
			ANTIAIR		= "CUP_O_TK_Soldier_AA";
			GRENADIER	= "CUP_O_TK_Soldier_GL";
			RIFLEMAN	= "CUP_O_TK_Soldier";
			
			OFFICER		= "CUP_O_TK_Officer";
			
			OFFROAD		= "CUP_O_UAZ_Open_TKA";
			OFFROAD_A	= "CUP_O_UAZ_MG_TKA";
		};
	};
};