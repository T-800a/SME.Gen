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
	//	CUP Factions
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
			
		};
	};
};