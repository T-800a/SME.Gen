/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionFactions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	spawnUnitsSide:
	- EAST:			0
	- WEST: 		1
	- INDEPENDENT:	2

	sub-classes:
	- units			all units/vehicles spawned with AI
	- vehicles		all units/vehicles spawned with-OUT AI
	
 =======================================================================================================================
*/

#define REDFOR 0
#define BLUFOR 1
#define GRNFOR 2

class missionFactions 
{

	class base_faction
	{
		spawnUnitsSide	= REDFOR;
		
		class units
		{
			OFFICER				= "O_officer_F";
			SQUADLEADER			= "O_Soldier_SL_F";
			TEAMLEADER			= "O_Soldier_TL_F";
			CORPSMAN			= "O_medic_F";
			MARKSMAN			= "O_Soldier_M_F";
			HEAVYMG				= "O_HeavyGunner_F";
			LIGHTMG				= "O_Soldier_AR_F";
			ANTITANK			= "O_Soldier_AT_F";
			ANTIPERSON			= "O_Soldier_LAT_F";
			ANTIAIR				= "O_Soldier_AA_F";
			GRENADIER			= "O_Soldier_GL_F";
			RIFLEMAN			= "O_Soldier_F";
			
			OFFROAD				= "O_MRAP_02_F";
			OFFROAD_A			= "O_MRAP_02_hmg_F";
			
			APC_SMALL			= "O_MRAP_02_hmg_F";
			APC_MEDIUM			= "O_APC_Wheeled_02_rcws_F";
			APC_HEAVY			= "O_APC_Tracked_02_cannon_F";
		};
		
		class vehicles
		{
			EMPTY_OFFROAD		= "O_G_Offroad_01_F";
			EMPTY_OFFROAD_A		= "O_G_Offroad_01_armed_F";
			EMPTY_TRUCK			= "O_Truck_02_covered_F";
			EMPTY_TRUCK_AMMO	= "O_Truck_02_ammo_F";
			EMPTY_TRUCK_FUEL	= "O_Truck_02_fuel_F";
			EMPTY_MORTAR		= "B_G_Mortar_01_F";
			EMPTY_HMG_HIGH		= "O_HMG_01_high_F";
			EMPTY_HELI_TRANS	= "O_Heli_Light_02_F";
		};
	};

	// --------------------------------------------------------------
	//	vanilla OPFOR
	//
	
	class vanilla_OPFOR : base_faction {};
	
	class vanilla_OPFOR_URBAN : vanilla_OPFOR
	{
		class units : units
		{
			SQUADLEADER 		= "O_SoldierU_SL_F";
			TEAMLEADER 			= "O_soldierU_TL_F";
			CORPSMAN 			= "O_soldierU_medic_F";
			MARKSMAN	 		= "O_soldierU_M_F";
			HEAVYMG		 		= "O_Urban_HeavyGunner_F";
			LIGHTMG		 		= "O_soldierU_AR_F";
			ANTITANK	 		= "O_soldierU_AT_F";
			ANTIPERSON	 		= "O_soldierU_LAT_F";
			ANTIAIR		 		= "O_soldierU_AA_F";
			GRENADIER	 		= "O_SoldierU_GL_F";
			RIFLEMAN	 		= "O_soldierU_F";
		};
	};	
	
	class vanilla_OPFOR_GUER : vanilla_OPFOR
	{
		class units : units
		{
			SQUADLEADER  		= "O_G_Soldier_SL_F";
			TEAMLEADER	 		= "O_G_Soldier_TL_F";
			CORPSMAN	 		= "O_G_medic_F";
			MARKSMAN	 		= "O_G_Soldier_M_F";
			HEAVYMG		 		= "O_G_Soldier_AR_F";
			LIGHTMG		 		= "O_G_Soldier_AR_F";
			ANTITANK	 		= "O_G_Soldier_LAT_F";
			ANTIPERSON	 		= "O_G_Soldier_LAT_F";
			ANTIAIR		 		= "O_G_Soldier_LAT_F";
			GRENADIER	 		= "O_G_Soldier_GL_F";
			RIFLEMAN	 		= "O_G_Soldier_F";
		};
	};


	// --------------------------------------------------------------
	//	vanilla INDEP
	//
	
	class vanilla_INDEP : base_faction
	{
		spawnUnitsSide = GRNFOR;
		
		class units : units
		{
			OFFICER		 		= "I_officer_F";
			SQUADLEADER  		= "I_Soldier_SL_F";
			TEAMLEADER	 		= "I_Soldier_TL_F";
			CORPSMAN	 		= "I_medic_F";
			MARKSMAN	 		= "I_Soldier_M_F";
			HEAVYMG		 		= "I_Soldier_AR_F";
			LIGHTMG		 		= "I_Soldier_AR_F";
			ANTITANK	 		= "I_Soldier_AT_F";
			ANTIPERSON	 		= "I_Soldier_LAT_F";
			ANTIAIR		 		= "I_Soldier_AA_F";
			GRENADIER	 		= "I_Soldier_GL_F";
			RIFLEMAN	 		= "I_Soldier_F";
			
			OFFROAD		 		= "I_MRAP_03_F";
			OFFROAD_A	 		= "I_MRAP_03_hmg_F";
			
			APC_SMALL			= "I_MRAP_03_hmg_F";
			APC_MEDIUM			= "I_APC_Wheeled_03_cannon_F";
			APC_HEAVY			= "I_APC_tracked_03_cannon_F";
		};
		
		class vehicles : vehicles
		{
			EMPTY_TRUCK			= "I_Truck_02_transport_F";
			EMPTY_TRUCK_AMMO	= "I_Truck_02_ammo_F";
			EMPTY_TRUCK_FUEL	= "I_Truck_02_fuel_F";
			
			EMPTY_HELI_TRANS	= "I_Heli_Transport_02_F";
		};
	};
	
	class vanilla_INDEP_GUER : vanilla_INDEP
	{
		spawnUnitsSide = GRNFOR;
		
		class units : units
		{
			OFFICER		 		= "I_G_officer_F";
			SQUADLEADER  		= "I_G_Soldier_SL_F";
			TEAMLEADER	 		= "I_G_Soldier_TL_F";
			CORPSMAN	 		= "I_G_medic_F";
			MARKSMAN	 		= "I_G_Soldier_M_F";
			HEAVYMG		 		= "I_G_Soldier_AR_F";
			LIGHTMG		 		= "I_G_Soldier_AR_F";
			ANTITANK	 		= "I_G_Soldier_LAT_F";
			ANTIPERSON	 		= "I_G_Soldier_LAT_F";
			ANTIAIR		 		= "I_G_Soldier_LAT_F";
			GRENADIER	 		= "I_G_Soldier_GL_F";
			RIFLEMAN	 		= "I_G_Soldier_F";
			
			OFFROAD		 		= "I_G_Offroad_01_F";
			OFFROAD_A	 		= "I_G_Offroad_01_armed_F";
		};
		
		class vehicles : vehicles
		{
			EMPTY_TRUCK			= "I_G_Van_01_transport_F";
			EMPTY_TRUCK_AMMO	= "I_Truck_02_ammo_F";
			EMPTY_TRUCK_FUEL	= "I_G_Van_01_fuel_F";
		};
	};
	
	// --------------------------------------------------------------
	//	vanilla BLUFOR
	//
	
	class vanilla_BLUFOR : base_faction
	{
		spawnUnitsSide	= BLUFOR;
		
		class units : units
		{
			OFFICER				= "B_officer_F";
			SQUADLEADER			= "B_Soldier_SL_F";
			TEAMLEADER			= "B_Soldier_TL_F";
			CORPSMAN			= "B_medic_F";
			MARKSMAN			= "B_Sharpshooter_F";
			HEAVYMG				= "B_HeavyGunner_F";
			LIGHTMG				= "B_Soldier_AR_F";
			ANTITANK			= "B_Soldier_AT_F";
			ANTIPERSON			= "B_Soldier_LAT_F";
			ANTIAIR				= "B_Soldier_AA_F";
			GRENADIER			= "B_Soldier_GL_F";
			RIFLEMAN			= "B_Soldier_F";
			
			OFFROAD				= "B_MRAP_01_F";
			OFFROAD_A			= "B_MRAP_01_hmg_F";
			
			APC_SMALL			= "B_MRAP_01_hmg_F";
			APC_MEDIUM			= "B_APC_Wheeled_01_cannon_F";
			APC_HEAVY			= "B_APC_Tracked_01_rcws_F";
		};
		
		class vehicles : vehicles
		{
			EMPTY_OFFROAD		= "B_G_Offroad_01_F";
			EMPTY_OFFROAD_A		= "B_G_Offroad_01_armed_F";
			EMPTY_TRUCK			= "B_Truck_01_covered_F";
			EMPTY_TRUCK_AMMO	= "B_Truck_01_ammo_F";
			EMPTY_TRUCK_FUEL	= "B_Truck_01_fuel_F";
			EMPTY_MORTAR		= "B_Mortar_01_F";
			EMPTY_HMG_HIGH		= "B_HMG_01_high_F";
			EMPTY_HELI_TRANS	= "B_Heli_Transport_01_F";
		};
	};
	
	
	// --------------------------------------------------------------
	//	CUP Factions: OPFOR
	//
	
	class CUP_OPFOR_TAKarmy : base_faction
	{
		class units : units
		{
			OFFICER		 		= "CUP_O_TK_Officer";
			SQUADLEADER  		= "CUP_O_TK_Soldier_SL";
			TEAMLEADER	 		= "CUP_O_TK_Spotter";
			CORPSMAN	 		= "CUP_O_TK_Medic";
			MARKSMAN	 		= "CUP_O_TK_Sniper";
			HEAVYMG		 		= "CUP_O_TK_Soldier_MG";
			LIGHTMG		 		= "CUP_O_TK_Soldier_AR";
			ANTITANK	 		= "CUP_O_TK_Soldier_HAT";
			ANTIPERSON	 		= "CUP_O_TK_Soldier_LAT";
			ANTIAIR		 		= "CUP_O_TK_Soldier_AA";
			GRENADIER	 		= "CUP_O_TK_Soldier_GL";
			RIFLEMAN	 		= "CUP_O_TK_Soldier";
			
			OFFROAD		 		= "CUP_O_UAZ_Open_TKA";
			OFFROAD_A	 		= "CUP_O_UAZ_MG_TKA";
			
			APC_SMALL			= "CUP_O_BRDM2_TKA";
			APC_MEDIUM			= "CUP_O_BTR60_TK";
			APC_HEAVY			= "CUP_O_BMP1P_TKA";
		};
		
		class vehicles : vehicles
		{
			EMPTY_OFFROAD		= "CUP_O_UAZ_Open_TKA";
			EMPTY_OFFROAD_A		= "CUP_O_UAZ_MG_TKA";
			EMPTY_TRUCK			= "CUP_O_Ural_TKA";
			EMPTY_TRUCK_AMMO	= "CUP_O_Ural_Reammo_TKA";
			EMPTY_TRUCK_FUEL	= "CUP_O_Ural_Refuel_TKA";

			EMPTY_HELI_TRANS	= "CUP_O_Mi17_TK";
		};
	};
	
	// --------------------------------------------------------------
	//	CUP Factions: BLUFOR
	//
	
	class CUP_BLUFOR_USMC : vanilla_BLUFOR
	{
		spawnUnitsSide	= BLUFOR;
		
		class units : units
		{
			OFFICER				= "CUP_B_USMC_Officer";
			SQUADLEADER			= "CUP_B_USMC_Soldier_SL";
			TEAMLEADER			= "CUP_B_USMC_Soldier_TL";
			CORPSMAN			= "CUP_B_USMC_Medic";
			MARKSMAN			= "CUP_B_USMC_Soldier_Marksman";
			HEAVYMG				= "CUP_B_USMC_Soldier_MG";
			LIGHTMG				= "CUP_B_USMC_Soldier_AR";
			ANTITANK			= "CUP_B_USMC_Soldier_AT";
			ANTIPERSON			= "CUP_B_USMC_Soldier_LAT";
			ANTIAIR				= "CUP_B_USMC_Soldier_AA";
			GRENADIER			= "CUP_B_USMC_Soldier_GL";
			RIFLEMAN			= "CUP_B_USMC_Soldier";
			
			OFFROAD				= "CUP_B_HMMWV_Unarmed_USMC";
			OFFROAD_A			= "CUP_B_HMMWV_M1114_USMC";
			
			APC_SMALL			= "CUP_B_HMMWV_MK19_USMC";
			APC_MEDIUM			= "CUP_B_LAV25_USMC";
			APC_HEAVY			= "CUP_B_LAV25M240_USMC";
		};
		
		class vehicles : vehicles
		{
			EMPTY_OFFROAD		= "CUP_B_HMMWV_Unarmed_USMC";
			EMPTY_OFFROAD_A		= "CUP_B_HMMWV_M1114_USMC";
	//		EMPTY_TRUCK			= "";
	//		EMPTY_TRUCK_AMMO	= "";
	//		EMPTY_TRUCK_FUEL	= "";
	//		EMPTY_MORTAR		= "";
			EMPTY_HMG_HIGH		= "CUP_B_M2StaticMG_USMC";
			EMPTY_HELI_TRANS	= "CUP_B_MH60S_USMC";
		};
	};




	// --------------------------------------------------------------
	//	RHS Factions
	//
	
	class RHS_OPFOR_GUER : base_faction
	{
		spawnUnitsSide	= REDFOR;
		
		class units : units
		{
			OFFICER		 		= "rhs_g_Soldier_SL_F";
			SQUADLEADER  		= "rhs_g_Soldier_F3";
			TEAMLEADER	 		= "rhs_g_Soldier_F";
			CORPSMAN	 		= "rhs_g_medic_F";
			MARKSMAN	 		= "rhs_g_Soldier_M_F";
			HEAVYMG		 		= "rhs_g_Soldier_AR_F";
			LIGHTMG		 		= "rhs_g_Soldier_AR_F";
			ANTITANK	 		= "rhs_g_Soldier_LAT_F";
			ANTIPERSON	 		= "rhs_g_Soldier_AT_F";
			ANTIAIR		 		= "rhs_g_Soldier_AA_F";
			GRENADIER	 		= "rhs_g_Soldier_TL_F";
			RIFLEMAN	 		= "rhs_g_Soldier_lite_F";
			
			OFFROAD		 		= "rhs_uaz_open_chdkz";
			OFFROAD_A	 		= "rhs_uaz_dshkm_chdkz";
			
			APC_SMALL			= "rhs_uaz_dshkm_chdkz";
			APC_MEDIUM			= "rhs_btr60_chdkz";
			APC_HEAVY			= "rhs_bmp1p_chdkz";
		};
		
		class vehicles : vehicles
		{
			EMPTY_OFFROAD		= "rhs_uaz_open_chdkz";
			EMPTY_OFFROAD_A		= "rhs_uaz_dshkm_chdkz";
			EMPTY_TRUCK			= "rhs_ural_chdkz";
			EMPTY_TRUCK_AMMO	= "rhs_gaz66_ammo_vmf";
			EMPTY_TRUCK_FUEL	= "RHS_Ural_Fuel_VMF_01";			
			
		};
	};
	
	class RHS_BLUFOR_ARMY_OCP : vanilla_BLUFOR
	{
		spawnUnitsSide	= BLUFOR;
		
		class units : units
		{
			OFFICER				= "rhsusf_army_ocp_officer";
			SQUADLEADER			= "rhsusf_army_ocp_squadleader";
			TEAMLEADER			= "rhsusf_army_ocp_teamleader";
			CORPSMAN			= "rhsusf_army_ocp_medic";
			MARKSMAN			= "rhsusf_army_ocp_marksman";
			HEAVYMG				= "rhsusf_army_ocp_machinegunner";
			LIGHTMG				= "rhsusf_army_ocp_autorifleman";
			ANTITANK			= "rhsusf_army_ocp_javelin";
			ANTIPERSON			= "rhsusf_army_ocp_riflemanat";
			ANTIAIR				= "rhsusf_army_ocp_aa";
			GRENADIER			= "rhsusf_army_ocp_grenadier";
			RIFLEMAN			= "rhsusf_army_ocp_rifleman_m16";
			
			OFFROAD				= "rhsusf_m1025_d";
			OFFROAD_A			= "rhsusf_m1025_d_m2";
			
			APC_SMALL			= "rhsusf_m113d_usarmy_M240";
			APC_MEDIUM			= "rhsusf_rg33_m2_d";
			APC_HEAVY			= "RHS_M2A3_BUSKI";
		};
		
		class vehicles : vehicles
		{
			EMPTY_OFFROAD		= "rhsusf_m1025_d";
			EMPTY_OFFROAD_A		= "rhsusf_m1025_d_m2";
			EMPTY_TRUCK			= "rhsusf_M1078A1P2_B_d_fmtv_usarmy";
			EMPTY_TRUCK_AMMO	= "rhsusf_M1078A1P2_B_d_open_fmtv_usarmy";
			EMPTY_TRUCK_FUEL	= "rhsusf_M1083A1P2_d_flatbed_fmtv_usarmy";
	//		EMPTY_MORTAR		= "";
			EMPTY_HMG_HIGH		= "RHS_M2StaticMG_D";
			EMPTY_HELI_TRANS	= "RHS_UH60M_d";
		};
	};
};