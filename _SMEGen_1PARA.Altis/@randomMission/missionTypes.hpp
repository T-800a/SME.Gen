/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionTypes.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class missionTypes
{
	
// --------------------------------------------------------------
//	missionTypes - BASE CLASSES

	class base_type 
	{
		scope			= 0;
		name			= "";
		task			= "";
		taskShort		= "";
		description		= ".....";
		
		class conditions
		{
			class win
			{
				condition	= "(({ side _x isEqualTo #__SIDEAI__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities #__MARKER_SIZE__# )) < 5 )";
				function	= "BIS_fnc_taskSetState";
			};
		};
		
		class groups
		{
			class base_garrison 
			{
				scope			= 0;
				units[] 		= { "SQUADLEADER", "LIGHTMG", "LIGHTMG", "HEAVYMG", "HEAVYMG", "CORPSMAN", "ANTITANK", "CORPSMAN", "ANTIPERSON", "ANTIPERSON", "RIFLEMAN", "RIFLEMAN" };
				unitsFiller[] 	= { "GRENADIER", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN" };
				task			= "GARRISON";
			};
			
			class base_defend 
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "CORPSMAN", "HEAVYMG", "LIGHTMG", "LIGHTMG", "RIFLEMAN" };
				unitsFiller[] 	= { "RIFLEMAN" };
				task			= "DEFEND";
			};
			
			class base_defend_small
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "CORPSMAN", "RIFLEMAN" };
				unitsFiller[] 	= { "RIFLEMAN" };
				task			= "DEFEND";
			};
			
			class base_defendBase
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "SQUADLEADER", "CORPSMAN", "CORPSMAN", "HEAVYMG", "HEAVYMG", "LIGHTMG", "LIGHTMG", "LIGHTMG", "MARKSMAN", "ANTITANK", "ANTIPERSON", "GRENADIER", "GRENADIER", "RIFLEMAN" };
				unitsFiller[] 	= { "RIFLEMAN" };
				task			= "DEFEND_BASE";
			};
			
			class base_defendBase_small 
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "CORPSMAN", "RIFLEMAN" };
				unitsFiller[] 	= { "RIFLEMAN" };
				task			= "DEFEND_BASE";
			};
			
			class base_squad 
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "HEAVYMG", "LIGHTMG", "CORPSMAN", "ANTIPERSON", "MARKSMAN" };
				unitsFiller[] 	= { "GRENADIER", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN" };
				task			= "PATROL";
			};
			
			class base_fireteam 
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "LIGHTMG", "ANTIPERSON" };
				unitsFiller[] 	= {  "GRENADIER", "CORPSMAN", "CORPSMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN" };
				task			= "PATROL";
			};
			
			class base_vehicle 
			{
				scope			= 0;
				units[]			= { "OFFROAD_A", "OFFROAD_A" };
				unitsFiller[] 	= {};
				task			= "PATROL";
			};
			
			class base_attackFireteam 
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "LIGHTMG", "ANTITANK" };
				unitsFiller[] 	= {  "GRENADIER", "CORPSMAN", "CORPSMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN" };
				task			= "ATTACK";
			};
			
			class base_attackSquad 
			{
				scope			= 0;
				units[]			= { "SQUADLEADER", "HEAVYMG", "LIGHTMG", "CORPSMAN", "ANTITANK", "MARKSMAN" };
				unitsFiller[] 	= { "GRENADIER", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN" };
				task			= "ATTACK";
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

		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group02 : base_garrison { scope = 1; };
			class group03 : base_fireteam { scope = 1; };
			class group04 : base_fireteam { scope = 1; };
			class group05 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
		};
	};
	
	class killHVT : base_type
	{
		scope		= 1;
		name		= "HVT";
		task		= "Kill the HVT and his guards.";
		taskShort	= "Kill the HVT";
		
		typeHVT		= "OFFICER";
		typeGuard	= "RIFLEMAN";
		
		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 3 ))) > 3 )";
				function	= "T8RMG_fnc_createAttack";
			};
		};
		
		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group03 : base_fireteam { scope = 1; };
			class group04 : base_fireteam { scope = 1; };
		};
	};

	class occupy_mil : base_type
	{
		scope		= 1;
		name		= "Occupy";
		task		= "Search and Secure";
		taskShort	= "Secure";

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
	
	class radiotower : base_type
	{
		scope		= 1;
		name		= "Radiotower";
		task		= "Destroy the Radiotower";
		taskShort	= "Destroy Radiotower";
		
		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities #__MARKER_SIZE__# )) > 3 )";
				function	= "T8RMG_fnc_createAttack";
			};
		};

		class groups : groups
		{
			class group01 : base_defendBase { scope = 1; units[] = { "SQUADLEADER", "CORPSMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN", "RIFLEMAN" }; };
			class group02 : base_fireteam { scope = 1; };
			class group03 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
		};
	};

	class recoverUGV : base_type
	{
		scope		= 1;
		name		= "RecoverUGV";
		task		= "Recover a UGV and return it to our Base";
		taskShort	= "Recover a UGV";
		
		class conditions
		{
			class win
			{
				condition	= "( missionNamespace getVariable [ '#__VARIABLE__#', mission_homebase ] distance mission_homebase < 50 )";
				function	= "BIS_fnc_taskSetState";
			};
			
			class fail
			{
				condition	= "(! alive ( missionNamespace getVariable [ '#__VARIABLE__#', mission_homebase ]))";
				function	= "BIS_fnc_taskSetState";
			};
			
			class support
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 3 ))) > 3 )";
				function	= "T8RMG_fnc_createAttack";
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 0.4 ))) > 3 )";
				function	= "T8RMG_fnc_createAttack";
			};
		};

		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
		};
	};
	
	
	// --------------------------------------------------------------
	// not for "task creation" - fixed tasks started by events
	
	class attack : base_type
	{
		scope		= 1;
		name		= "Attack";
		task		= "Attack";
		taskShort	= "Attack";
		
		class conditions {};

		class groups : groups
		{
			class group01 : base_attackFireteam { scope = 1; };
			class group02 : base_attackFireteam { scope = 1; };
			class group03 : base_attackSquad { scope = 1; };
		};
	};
};