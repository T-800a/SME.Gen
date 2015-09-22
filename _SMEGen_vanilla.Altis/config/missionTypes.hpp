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
				condition	= "(({ side _x isEqualTo #__SIDEAI__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# ) * 1.3 )) < 5 )";
				function	= "BIS_fnc_taskSetState";
				
		//		if 1 then task will count against tasks needed to complete a mission
		//		if 0 then wont count against it
				isFinal		= 1;
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
		scope			= 1;
		name			= "Occupy";
		
		taskShort		= "$STR_SMEGen_type_occupy_shrt";
		task			= "$STR_SMEGen_type_occupy_task";
		description		= "$STR_SMEGen_type_occupy_desc";

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
		scope			= 1;
		name			= "HVT";
		
		taskShort		= "$STR_SMEGen_type_killHVT_shrt";
		task			= "$STR_SMEGen_type_killHVT_task";
		description		= "$STR_SMEGen_type_killHVT_desc";
		
		typeHVT			= "OFFICER";
		typeGuard		= "RIFLEMAN";
		
		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 3 ))) > 3 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
		};
		
		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group03 : base_fireteam { scope = 1; };
			class group04 : base_fireteam { scope = 1; };
		};
	};
	
	class intelHVT : base_type
	{
		scope			= 1;
		name			= "intelHVT";
		
		taskShort		= "$STR_SMEGen_type_intelHVT_shrt";
		task			= "$STR_SMEGen_type_intelHVT_task";
		description		= "$STR_SMEGen_type_intelHVT_desc";
		
		typeHVT			= "OFFICER";
		typeGuard		= "RIFLEMAN";
		
		
		
		class conditions
		{
			class followup
			{
				condition	= "((( missionNamespace getVariable [ '#__VARIABLE__#', []]) select 0 ) getVariable [ 'OBJECTIVE_intel_gathered', false ])";
				function	= "T8RMG_fnc_createFollowingTask";
				isFinal		= 0;
			};

			class fail
			{
				condition	= "(!( alive (( missionNamespace getVariable [ '#__VARIABLE__#', []]) select 0 )) AND !((( missionNamespace getVariable [ '#__VARIABLE__#', []]) select 0 ) getVariable [ 'OBJECTIVE_intel_gathered', false ]))";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class surrender
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities 50 )) > 0 )";
				function	= "T8RMG_fnc_surrenderHVT";
				isFinal		= 0;
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
		scope			= 1;
		name			= "Occupy";

		taskShort		= "$STR_SMEGen_type_occupy_mil_shrt";
		task			= "$STR_SMEGen_type_occupy_mil_task";
		description		= "$STR_SMEGen_type_occupy_mil_desc";

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
		scope			= 1;
		name			= "Convoy";

		taskShort		= "$STR_SMEGen_type_convoy_shrt";
		task			= "$STR_SMEGen_type_convoy_task";
		description		= "$STR_SMEGen_type_convoy_desc";

		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
		};
		
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
		scope			= 1;
		name			= "Roadblock";
		
		taskShort		= "$STR_SMEGen_type_roadblock_shrt";
		task			= "$STR_SMEGen_type_roadblock_task";
		description		= "$STR_SMEGen_type_roadblock_desc";

		class groups : groups
		{
			class group01 : base_defend_small { scope = 1; };
			class group02 : base_defendBase_small { scope = 1; };
			class group03 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
		};
	};
	
	class roadblockHouse : base_type
	{
		scope			= 1;
		name			= "Roadblock";
		
		taskShort		= "$STR_SMEGen_type_roadblock_shrt";
		task			= "$STR_SMEGen_type_roadblock_task";
		description		= "$STR_SMEGen_type_roadblock_desc";

		class groups : groups
		{
			class group01 : base_defend_small { scope = 1; };
			class group02 : base_garrison { scope = 1; };
			class group03 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
			class group04 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
		};
	};
	
	class roadIED : base_type
	{
		scope			= 1;
		name			= "roadIED";

		taskShort		= "$STR_SMEGen_type_roadIED_shrt";
		task			= "$STR_SMEGen_type_roadIED_task";
		description		= "$STR_SMEGen_type_roadIED_desc";

		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities #__MARKER_SIZE__# )) > 3 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
		};

		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group02 : base_fireteam { scope = 1; };
			class group05 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
		};
	};
	
	class roadIEDintel : base_type
	{
		scope			= 1;
		name			= "roadIEDintel";

		taskShort		= "$STR_SMEGen_type_roadIED_shrt";
		task			= "$STR_SMEGen_type_roadIED_task";
		description		= "$STR_SMEGen_type_roadIED_desc";

		class conditions
		{
			class followup
			{
				condition	= "(( alive ( missionNamespace getVariable [ '#__VARIABLE__#', objNull ])) AND {( missionNamespace getVariable [ '#__VARIABLE__#', objNull ]) getVariable [ 'OBJECTIVE_intel_gathered', false ]})";
				function	= "T8RMG_fnc_createFollowingTask";
				isFinal		= 0;
			};

			class fail
			{
				condition	= "(! alive ( missionNamespace getVariable [ '#__VARIABLE__#', objNull ]))";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};		
		
			class blowIED
			{
				condition	= "(( missionNamespace getVariable [ '#__VARIABLE__#', objNull ]) getVariable [ 'OBJECTIVE_intel_gathered', false ])";
				function	= "T8RMG_fnc_blowIED";
				isFinal		= 0;
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities #__MARKER_SIZE__# )) > 0 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
		};

		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group02 : base_fireteam { scope = 1; };
		};
	};

	class mortars : base_type
	{
		scope			= 1;
		name			= "Mortars";

		taskShort		= "$STR_SMEGen_type_mortars_shrt";
		task			= "$STR_SMEGen_type_mortars_task";
		description		= "$STR_SMEGen_type_mortars_desc";

		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
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
		scope			= 1;
		name			= "Resupplies";

		taskShort		= "$STR_SMEGen_type_resupplies_shrt";
		task			= "$STR_SMEGen_type_resupplies_task";
		description		= "$STR_SMEGen_type_resupplies_desc";

		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
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
		scope			= 1;
		name			= "Radiotower";
		
		taskShort		= "$STR_SMEGen_type_radiotower_shrt";
		task			= "$STR_SMEGen_type_radiotower_task";
		description		= "$STR_SMEGen_type_radiotower_desc";
		
		class conditions
		{
			class win
			{
				condition	= "(({ alive _x } count ( missionNamespace getVariable [ '#__VARIABLE__#', []])) < 1 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities #__MARKER_SIZE__# )) > 3 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
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
		scope			= 1;
		name			= "RecoverUGV";
		
		taskShort		= "$STR_SMEGen_type_recoverUGV_shrt";
		task			= "$STR_SMEGen_type_recoverUGV_task";
		description		= "$STR_SMEGen_type_recoverUGV_desc";
		
		class conditions
		{
			class win
			{
				condition	= "( missionNamespace getVariable [ '#__VARIABLE__#', mission_homebase ] distance mission_homebase < 50 )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class fail
			{
				condition	= "(! alive ( missionNamespace getVariable [ '#__VARIABLE__#', mission_homebase ]))";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class unlockUGV
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 0.1 ))) >=  1 )";
				function	= "T8RMG_fnc_unlockUGV";
				isFinal		= 0;
			};
			
			class support
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 3 ))) > 3 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
			
			class counter_attack
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# * 0.4 ))) > 3 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
		};

		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group02 : base_fireteam { scope = 1; };
		};
	};

	class getIntel : base_type
	{
		scope			= 1;
		name			= "GetIntel";

		taskShort		= "$STR_SMEGen_type_getIntel_shrt";
		task			= "$STR_SMEGen_type_getIntel_task";
		description		= "$STR_SMEGen_type_getIntel_desc";

		class conditions
		{
			class win
			{
				condition	= "(( missionNamespace getVariable [ '#__VARIABLE__#', objNull ] ) getVariable [ 'T8L_pvar_dataDownloaded', false ] )";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class fail
			{
				condition	= "(! alive ( missionNamespace getVariable [ '#__VARIABLE__#', objNull ]))";
				function	= "BIS_fnc_taskSetState";
				isFinal		= 1;
			};
			
			class support
			{
				condition	= "(({ side _x isEqualTo #__SIDEPLAYER__# } count (( getMarkerPos '#__MARKER_NAME__#' ) nearEntities ( #__MARKER_SIZE__# ) * 2 )) > 3 )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
			
			class counter_attack
			{
				condition	= "(( missionNamespace getVariable [ '#__VARIABLE__#', objNull ] ) getVariable [ 'T8L_pvar_inUse', false ] )";
				function	= "T8RMG_fnc_createAttack";
				isFinal		= 0;
			};
		};

		class groups : groups
		{
			class group01 : base_garrison { scope = 1; };
			class group02 : base_fireteam { scope = 1; task = "PATROL_AROUND"; };
		};
	};



// --------------------------------------------------------------
// not for "new task creation" - fixed tasks started by events

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
			class group03 : base_attackFireteam { scope = 1; };
		};
	};
};