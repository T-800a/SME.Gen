/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		cfgRandomMissions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class cfgRandomMissions 
{
	class missionConfig
	{
		
	// --------------------------------------------------------------
	//	missionConfig - BASE MISSION CONFIG
	//

	// player faction
	// 0 - East 
	// 1 - West 
	// 2 - Indep

		playerFaction				= 1;


	// find in < missionFactions.hpp > to change spawned units / add factions

		spawnUnitsFaction			= "ASC_opfor_guerilla";

		
	// amount of spawned mission AOs

		spawnedSitesCount			= 2;

		
	// delays in minutes between a finished set of AOs will be cleanded, 
	// and a new set will be spawned

		missionCleanDelay			= 1;	// minutes
		missionSpawnDelay			= 2;	// minutes


	// modificators will affect spawned group sizes 

		spawnModPlayer				= 5;
		spawnModGroup				= 15;

	
	// slot restrictions	

		adminWhitelist[]			= { "76561197962343988", "76561198027698781" }; // T8, God
		pilotWhitelist01[]			= {};
		pilotWhitelist02[]			= {	"76561197962343988",	// T8
										"76561198027698781",	// God
										"76561198025642702" 	// JT
									}; 
	

	// vehicle restrictions

		whitelistHelicopter[]		= { "B_Helipilot_F", "B_helicrew_F", "ASC_B_helipilot_F" };
		whitelistJet[]				= { "B_Pilot_F" };
		whitelistCar[]				= {  };
		whitelistAPC[]				= {  };
		whitelistTruck[]			= {  };
		whitelistArmor[]			= {  };
	

	// rewards

		missionReward01				= "ASC_B_LandRover_AMB";
		missionReward02				= "UK3CB_BAF_Jackal2_L2A1_D";
		missionReward03				= "MELB_AH6M_M";
	
		missionRewardRestriction01	= "";
		missionRewardRestriction02	= "";
		missionRewardRestriction03	= "whitelistHelicopter";
	

	// starting gear (in arsenal)

		class startingGear
		{
			Backpack[]	= {};
			Item[]		= {};
			Magazine[]	= {};
			Weapon[]	= {};
		};



	// --------------------------------------------------------------
	};

	class playerRewards
	{
		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class CORPORAL : base_reward {};
		class SERGEANT : base_reward {};
		class LIEUTENANT : base_reward {};
		class CAPTAIN : base_reward {};
		class MAJOR : base_reward {};
		class COLONEL : base_reward {};
		class GENERAL : base_reward {};
	};


	// --------------------------------------------------------------
	//
	//	MISSION SITES
	//

	#include <missionSites.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION TYPES	
	//

	#include <missionTypes.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION FACTIONS
	//

	#include <missionFactions.hpp>



	// --------------------------------------------------------------
	//	END OF CONFIG
};