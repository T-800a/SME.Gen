/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		cfgRandomMissions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class cfgRandomMissions 
{
// --------------------------------------------------------------
//	missionConfig - BASE MISSION CONFIG
//
	class missionConfig
	{
	// default faction ( if not overwritten by mission Params )
	// find in < missionFactions.hpp > to change spawned units / add factions

		enemyFaction				= "IFA3_OPFOR_SOV";


	// default gear/reward set ( if not overwritten by mission Params )
	// find in < missionPlayerRewards.hpp > to change

		playerFaction				= "IFA3_BLUFOR_WEHR";


	// missions "won" needed for new vehicle 
		serverRewardSuccesses		= 2;


	// amount of spawned mission AOs
		spawnedSitesCount			= 2;


	// minimum distance between mission sites
		spawnedSitesMinDist			= 1500;


	// delays in minutes between a finished set of AOs will be cleanded, 
	// and a new set will be spawned

		missionCleanDelay			= 4;	// minutes
		missionSpawnDelay			= 2;	// minutes


	// modificators will affect spawned group sizes 
	//
	// _mod = ceil(((( _playerCount / !spawnModPlayer! ) * 2 ) * (( _groupCount / !spawnModGroup! ) * 2 )) * 2 );
	//
	
		spawnModPlayer				= 5;
		spawnModGroup				= 15;


	// slot restrictions	

		adminWhitelist[]			= { "76561197962343988" }; // T-800a
		pilotWhitelist01[]			= {};
		pilotWhitelist02[]			= {};


	// vehicle restrictions

		whitelistHelicopter[]		= { "B_Helipilot_F", "B_helicrew_F", "B_Pilot_F", "CUP_B_USMC_Pilot", "CUP_B_US_Pilot" };
		whitelistJet[]				= { "B_Helipilot_F", "B_helicrew_F", "B_Pilot_F", "CUP_B_USMC_Pilot", "CUP_B_US_Pilot" };
		whitelistCar[]				= {};
		whitelistAPC[]				= {};
		whitelistTruck[]			= {};
		whitelistArmor[]			= {};


	// rewards vehicle restriction
	
		missionRewardRestriction01	= "";
		missionRewardRestriction02	= "";
		missionRewardRestriction03	= "whitelistHelicopter";	

	};

	class missionBases
	{
		class hq
		{
			name				= "Hauptquartier";
			vehicleTeleport		= "mission_marker_hq_veh";
			playerTeleport		= "mission_marker_hq";
		};
		
		class fob1
		{
			name				= "Feldlager: Aberlour";
			vehicleTeleport		= "mission_marker_vehTel_fob1";
			playerTeleport		= "mission_marker_plaTel_fob1";
		};
		
		class fob2
		{
			name				= "Feldlager: Bowmore";
			vehicleTeleport		= "mission_marker_vehTel_fob2";
			playerTeleport		= "mission_marker_plaTel_fob2";
		};
		
		class fob3
		{
			name				= "Feldlager: Caol Ila";
			vehicleTeleport		= "mission_marker_vehTel_fob3";
			playerTeleport		= "mission_marker_plaTel_fob3";
		};
	};

	// --------------------------------------------------------------
	//
	//	MISSION SITES
	//

	#include <config\missionSites.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION TYPES	
	//

	#include <config\missionTypes.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION FACTIONS
	//

	#include <config\missionFactions.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION PLAYER FACTIONS
	//

	#include <config\missionPlayerFactions.hpp>



	// --------------------------------------------------------------
	//	END OF CONFIG
};