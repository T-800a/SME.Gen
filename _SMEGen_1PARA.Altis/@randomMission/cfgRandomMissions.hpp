/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
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
	
		spawnedSitesCount			= 2;
		missionCleanDelay			= 1;	// minutes
		missionSpawnDelay			= 2;	// minutes
		
		// modificators will 
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
	
	
	// --------------------------------------------------------------
	};

	
	class missionSites
	{
		
	// --------------------------------------------------------------
	//	missionSites - BASE CLASSES
	//
		
		class base_town 
		{
			scope			= 0;											// generater will use this entry if 1
			name			= "";											// display name
			type			= "town";										// type of site
			allowedTypes[]	= { "occupy", "mortars", "resupplies" };		// type of site
			marker			= "";											// marker name that will be used to access marker
			position[]		= { 0, 0, 0 };									// marker position
			size[]			= { 300, 300 };									// marker size
			angle			= 0;											// marker angle
		};

		class base_mil
		{
			scope		= 0;
			name		= "";
			type		= "mil";
			allowedTypes[]	= { "occupy_mil", "mortars", "resupplies" };
			marker		= "";
			position[]	= { 0, 0, 0 };
			size[]		= { 200, 200 };
			angle		= 0;
		};
		
		class base_road
		{
			scope		= 0;
			name		= "";
			type		= "road";
			allowedTypes[]	= { "convoy", "roadblock" };
			marker		= "";
			position[]	= { 0, 0, 0 };
			size[]		= { 200, 80 };
			angle		= 0;
		};
		
	// --------------------------------------------------------------
	//	missionSites - USED CLASSES
	//
	
	// --------------------------------------------------------------
	// missionSites - TOWNS

		class town_rodopoli : base_town
		{
			scope		= 1;
			name		= "Rodopoli"; 
			marker		= "site_town_rodopoli";
			position[]	= { 18851.8, 16651.1, 0 };
		};

		class town_paros : base_town
		{
			scope		= 1;
			name		= "Paros"; 
			marker		= "site_town_paros";
			position[]	= { 20984.7, 16975.3, 0 };
		};
		
		class town_gravia : base_town
		{
			scope		= 1;
			name		= "Gravia"; 
			marker		= "site_town_gravia";
			position[]	= { 14493.9, 17674.2, 0 };
		};

		class town_anthrakia : base_town
		{
			scope		= 1;
			name		= "Anthrakia"; 
			marker		= "site_town_anthrakia";
			position[]	= { 16653.8, 16119.0, 0 };
			size[]		= { 250, 250 };
		};
		
		class town_anthrakia_hills : base_town
		{
			scope		= 1;
			name		= "Anthrakia Hills"; 
			marker		= "site_town_anthrakia_hills";
			position[]	= { 16000.5, 16234.6, 0 };
			size[]		= { 250, 150 };
			angle		= 30;
		};

		class town_dorida : base_town
		{
			scope		= 1;
			name		= "Dorida"; 
			marker		= "site_town_dorida";
			position[]	= { 19391.3, 13261.0, 0 };
			size[]		= { 200, 300 };
			angle		= 45;
		};

		class town_kalochori : base_town
		{
			scope		= 1;
			name		= "Kalochori"; 
			marker		= "site_town_kalochori";
			position[]	= { 21386.7, 16356.8, 0 };
			size[]		= { 200, 300 };
			angle		= 60;
		};
		
		class town_lakka_factory : base_town
		{
			scope		= 1;
			name		= "Lakka Factory Site"; 
			marker		= "site_town_lakka_factory";
			position[]	= { 12677.3, 16344.2, 0 };
		};

		class town_lakka : base_town
		{
			scope		= 1;
			name		= "Lakka"; 
			marker		= "site_town_lakka";
			position[]	= { 12329.7, 15688.6, 0 };
		};

		class town_stavros : base_town
		{
			scope		= 1;
			name		= "Stavros"; 
			marker		= "site_town_stavros";
			position[]	= { 12954.1, 15006.7, 0 };
		};

	// --------------------------------------------------------------
	// missionSites - MILITARY
		
		class mil_telos : base_mil
		{
			scope		= 1;
			name		= "Telos Military Base"; 
			marker		= "site_mil_telos";
			position[]	= { 16082.3, 16995.6, 0 };
		};

		class mil_pyrgos : base_mil
		{
			scope		= 1;
			name		= "Pyrgos Military Base"; 
			marker		= "site_mil_pyrgos";
			position[]	= { 17432.7, 13156.9, 0 };
		};

		class mil_pyrgos_gulf_harbour : base_mil
		{
			scope		= 1;
			name		= "Pyrgos Gulf Harbour"; 
			marker		= "site_mil_pyrgos_gulf_harbour";
			position[]	= { 15394.5, 15955.1, 0 };
			size[]		= { 250, 250 };
		};
		
		class mil_lakka : base_mil
		{
			scope		= 1;
			name		= "Lakka Military Base"; 
			marker		= "site_mil_lakka";
			position[]	= { 12831.3, 16712.3, 0 };
		};
	
	// --------------------------------------------------------------
	// missionSites - ROADS

		class road_airfield : base_road
		{
			scope		= 1;
			name		= "Road to Airfield"; 
			marker		= "site_road_airfield";
			position[]	= { 14712.9, 17110.7, 0 };
			angle		= 135;
		};

		class road_kalithea : base_road
		{
			scope		= 1;
			name		= "Road to Kalithea"; 
			marker		= "site_road_kalithea";
			position[]	= { 17887.9, 17761.5, 0 };
			angle		= 35;
		};

		class road_paros : base_road
		{
			scope		= 1;
			name		= "Road to Paros"; 
			marker		= "site_road_paros";
			position[]	= { 19928.7, 15911.0, 0 };
			angle		= 125;
		};

		class road_pyrgos : base_road
		{
			scope		= 1;
			name		= "Road to Pyrgos"; 
			marker		= "site_road_pyrgos";
			position[]	= { 17418.3, 14079.1, 0 };
			angle		= 105;
		};

		class road_telos : base_road
		{
			scope		= 1;
			name		= "Road to telos"; 
			marker		= "site_road_airfield";
			position[]	= { 15919.1, 17414.3, 0 };
			angle		= 5;
		};

		class road_dorida : base_road
		{
			scope		= 1;
			name		= "Road to Dorida"; 
			marker		= "site_road_dorida";
			position[]	= { 18898.6, 13033.3, 0 };
			angle		= 170;
		};

		class road_charkia : base_road
		{
			scope		= 1;
			name		= "Road to Charkia"; 
			marker		= "site_road_charkia";
			position[]	= { 17750.6, 14728.6, 0 };
			angle		= 125;
		};

		class road_anthrakia : base_road
		{
			scope		= 1;
			name		= "Road to Anthrakia"; 
			marker		= "site_road_anthrakia";
			allowedTypes[]	= { "convoy" };
			position[]	= { 16693.4, 15911.5, 0 };
			angle		= 70;
		};

		class road_lakka_W : base_road
		{
			scope		= 1;
			name		= "Road west of Lakka"; 
			marker		= "site_road_lakka_W";
			position[]	= { 12105.5, 15847.6, 0 };
			angle		= 180;
		};

		class road_lakka_SW : base_road
		{
			scope		= 1;
			name		= "Road south-north of Lakka"; 
			marker		= "site_road_lakka_SW";
			position[]	= { 12026.9, 15132.7, 0 };
			angle		= 110;
		};

		class road_lakka_N: base_road
		{
			scope		= 1;
			name		= "Road north of Lakka"; 
			marker		= "site_road_lakka_N";
			position[]	= { 12013.8, 16918.7, 0 };
			angle		= 75;
		};

		class road_lakka_E : base_road
		{
			scope		= 1;
			name		= "Road east of Lakka"; 
			marker		= "site_road_lakka_E";
			position[]	= { 12761.6, 15918.1, 0 };
			angle		= 175;
		};
	};

	// --------------------------------------------------------------
	
	
	
	
	
	// --------------------------------------------------------------
	//
	//	MISSION TYPES	
	//
	
	class missionTypes
	{
		
	// --------------------------------------------------------------
	//	missionTypes - BASE CLASSES
	
		class base_type 
		{
			scope			= 0;
			name			= "";
			task			= "";
			condition		= "";
			description		= ".....";
			
			class conditions
			{
				class win
				{
					condition	= "(({ side _x isEqualTo EAST } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities #__MARKER_SIZE__# )) < 5 )";
					function	= "BIS_fnc_taskSetState";
				};
			};
			
			class groups
			{
				class base_garrison 
				{
					scope			= 0;
					units[] 		= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_HMG_F", "ASC_O_AS_soldier_HMG_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_AT_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_AT_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F" };
					unitsFiller[] 	= { "ASC_O_AS_soldier_GL_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F" };
					task			= "GARRISON";
				};
				
				class base_defend 
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_HMG_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_F" };
					unitsFiller[] 	= { "ASC_O_AS_soldier_F" };
					task			= "DEFEND";
				};
				
				class base_defend_small
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_F" };
					unitsFiller[] 	= { "ASC_O_AS_soldier_F" };
					task			= "DEFEND";
				};
				
				class base_defendBase
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_HMG_F", "ASC_O_AS_soldier_HMG_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_marksman_F", "ASC_O_AS_soldier_AT_F", "ASC_O_AS_soldier_AT_F", "ASC_O_AS_soldier_GL_F", "ASC_O_AS_soldier_GL_F", "ASC_O_AS_soldier_F" };
					unitsFiller[] 	= { "ASC_O_AS_soldier_F" };
					task			= "DEFEND_BASE";
				};
				
				class base_defendBase_small 
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_F" };
					unitsFiller[] 	= { "ASC_O_AS_soldier_F" };
					task			= "DEFEND_BASE";
				};
				
				class base_squad 
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_HMG_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_AT_F", "ASC_O_AS_marksman_F" };
					unitsFiller[] 	= { "ASC_O_AS_soldier_GL_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F" };
					task			= "PATROL";
				};
				
				class base_fireteam 
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_AT_F" };
					unitsFiller[] 	= {  "ASC_O_AS_soldier_GL_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_F" };
					task			= "PATROL";
				};
				
				class base_vehicle 
				{
					scope			= 0;
					units[]			= { "ASC_O_AS_Offroad_armed_F", "ASC_O_AS_Offroad_armed_F" };
					unitsFiller[] 	= {};
					task			= "PATROL";
				};
			};
		};

		
	// --------------------------------------------------------------
	//	missionTypes - USED CLASSES
		
		class occupy : base_type
		{
			scope		= 1;
			name		= "Occupy";
			task		= "Search and Secure";
			taskShort	= "Secure";
			condition	= "(({ side _x isEqualTo EAST } count (( getMarkerPos '%1' ) nearEntities %2 )) < 5 )";

			class groups : groups
			{
				class group01 : base_garrison { scope = 1; };
				class group02 : base_garrison { scope = 1; };
				class group03 : base_fireteam { scope = 1; };
				class group04 : base_fireteam { scope = 1; };
				class group05 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			};
		};

		class occupy_mil : base_type
		{
			scope		= 1;
			name		= "Occupy";
			task		= "Search and Secure";
			taskShort	= "Secure";
			condition	= "(({ side _x isEqualTo EAST } count (( getMarkerPos '%1' ) nearEntities %2 )) < 5 )";

			class groups : groups
			{
				class group01 : base_defendBase { scope = 1; };
				class group02 : base_fireteam { scope = 1; };
				class group03 : base_fireteam { scope = 1; };
				class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
				class group05 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			};
		};

		class convoy : base_type
		{
			scope		= 1;
			name		= "Convoy";
			task		= "Raid the Convoy";
			taskShort	= "Raid Convoy";
			condition	= "(({ side _x isEqualTo EAST } count (( getMarkerPos '%1' ) nearEntities %2 )) < 5 )";

			class groups : groups
			{
				class group01 : base_defend_small { scope = 1; };
				class group02 : base_garrison { scope = 1; };
				class group03 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
				class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			};
		};

		class roadblock : base_type
		{
			scope		= 1;
			name		= "Roadblock";
			task		= "Clear the Roadblock";
			taskShort	= "Clear Roadblock";
			condition	= "(({ side _x isEqualTo EAST } count (( getMarkerPos '%1' ) nearEntities %2 )) < 5 )";

			class groups : groups
			{
				class group01 : base_defend_small { scope = 1; };
				class group02 : base_defendBase_small { scope = 1; };
				class group03 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
				class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			};
		};

		class mortars : base_type
		{
			scope		= 1;
			name		= "Mortars";
			task		= "Destroy the Mortars";
			taskShort	= "Destroy Mortars";
			condition	= "(({ alive _x } count ( missionNamespace getVariable [ '%1', []])) < 1 )";
			
			class conditions
			{
				class win
				{
					condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
					function	= "BIS_fnc_taskSetState";
				};
			};

			class groups : groups
			{
				class group01 : base_defend { scope = 1; };
				class group02 : base_fireteam { scope = 1; };
				class group03 : base_fireteam { scope = 1; };
				class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
				class group05 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			};
		};
		
		class resupplies : base_type
		{
			scope		= 1;
			name		= "Resupplies";
			task		= "Destroy the Resupply Installations";
			taskShort	= "Destroy Resupplies";
			condition	= "(({ alive _x } count ( missionNamespace getVariable [ '%1', []])) < 1 )";
			
			class conditions
			{
				class win
				{
					condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
					function	= "BIS_fnc_taskSetState";
				};
			};
			
			class groups : groups
			{
				class group01 : base_garrison { scope = 1; };
				class group02 : base_fireteam { scope = 1; };
				class group03 : base_fireteam { scope = 1; };
				class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
				class group05 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			};
		};
	};
	
	
	
	// --------------------------------------------------------------
	//	END OF CONFIG
};