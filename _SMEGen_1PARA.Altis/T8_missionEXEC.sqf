/*
 =======================================================================================================================

	___ T8 Units _______________________________________________________________________________________________________

	File:		T8_missionEXEC.sqf
	Author:		T-800a / t-800a@gmx.net

	This file creates the Units, kind of

=======================================================================================================================
*/

// Rest of the Script is Server Only!
waitUntil { !isNil "T8U_var_useHC" };
private [ "_exit" ]; _exit = false;
if ( T8U_var_useHC ) then { if ( isDedicated ) then { _exit = true; } else { waitUntil { !isNull player };	if ( hasInterface ) then { _exit = true; }; }; } else { if ( !isServer ) then { _exit = true; }; };
if ( _exit ) exitWith {};

// check if T8_Units is loaded
waitUntil { !isNil "T8U_var_initDONE" };

//////////////////////////////////////  CUSTOM FUNCTION  //////////////////////////////////////
//
//			This function is called for every unit in a group 
//			where it is defined in the groups definiton below
//

T8u_fnc_rmNVG_TEST = 
{
	_this spawn
	{
		sleep 5;
	
		private ["_i"];
		_i = true;
		switch ( side _this ) do 
		{ 
			case WEST:			{ _this unlinkItem "NVGoggles"; };
			case EAST:			{ _this unlinkItem "NVGoggles_OPFOR"; };
			case RESISTANCE:	{ _this unlinkItem "NVGoggles_INDEP";  };
			default				{ _i = false; };
		};
		
		if ( _i ) then 
		{
			_this removePrimaryWeaponItem "acc_pointer_IR";
			_this addPrimaryWeaponItem "acc_flashlight";
			
			sleep 1;
			
			group _this enableGunLights "forceon";
		};
	};
};

//////////////////////////////////////  UNIT SETUP  //////////////////////////////////////

mkr_BLUFOR_base			= [ "sag_def_01", "sag_def_02" ];
mkr_OPFOR_inf			= [ "opfor_spawn_01", "opfor_spawn_02", "opfor_spawn_03" ];
mkr_INDEP_inf			= [ "indep_spawn_01", "indep_spawn_02", "indep_spawn_03" ];


units_GUR_RED_squad		= [ "O_G_soldier_SL_F", "O_G_soldier_AR_F", "O_G_soldier_AR_F", "O_G_Soldier_A_F", "O_G_Soldier_GL_F", "O_G_medic_F", "O_G_Soldier_GL_F", "O_G_Soldier_GL_F" ];
units_GUR_RED_fireteam	= [ "O_G_soldier_SL_F", "O_G_soldier_AR_F", "O_G_soldier_GL_F", "O_G_Soldier_GL_F" ];

units_AS_RED_squad		= [  ];
units_AS_RED_fireteam	= [  ];
units_AS_RED_AV			= [  ];

// "ASC_O_AS_soldier_F", "ASC_O_AS_soldier_GL_F", "ASC_O_AS_soldier_AR_F", "ASC_O_AS_soldier_SL_F", "ASC_O_AS_soldier_CM_F", "ASC_O_AS_soldier_AT_F"


units_OPFOR_team		= [ "O_soldier_SL_F", "O_medic_F", "O_soldier_F", "O_soldier_AR_F", "O_soldier_TL_F", "O_soldier_F", "O_soldier_F", "O_soldier_AR_F" ];
units_OPFOR_MRAP		= [ "O_MRAP_02_HMG_F" ];
units_OPFOR_APC			= [ "O_APC_WHEELED_02_RCWS_F" ];

units_BLUFOR_fireteam	= [ "B_G_Soldier_TL_F", "B_G_medic_F", "B_G_Soldier_AR_F", "B_G_Soldier_F", "B_G_Soldier_F" ];
units_BLUFOR_squad		= [ "B_G_Soldier_TL_F", "B_G_medic_F", "B_G_Soldier_AR_F", "B_G_Soldier_AR_F", "B_G_Soldier_AR_F", "B_G_Soldier_F", "B_G_Soldier_F", "B_G_Soldier_F" ];

units_INDEP_team08		= [ "I_soldier_SL_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F", "I_soldier_TL_F", "I_soldier_F", "I_soldier_F", "I_soldier_AR_F" ];
units_INDEP_team08a		= [ "I_soldier_TL_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F", "I_soldier_TL_F", "I_soldier_F", "I_soldier_F", "I_soldier_LAT_F" ];
units_INDEP_team06		= [ "I_soldier_TL_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F", "I_soldier_F", "I_soldier_LAT_F" ];
units_INDEP_team12		= [ "I_soldier_SL_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F", "I_soldier_TL_F", "I_soldier_F", "I_soldier_F", "I_soldier_LAT_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F", "I_soldier_F" ];
units_INDEP_Sniper		= [ "I_sniper_F", "I_spotter_F" ];
units_INDEP_VEH			= [ "I_APC_Wheeled_03_cannon_F", "I_MRAP_03_hmg_F" ];

units_CIV_14			= [ "C_man_1", "C_man_polo_1_F_asia", "C_man_1_1_F", "C_man_1_2_F", "C_man_1_3_F", "C_man_polo_1_F", "C_man_polo_2_F", "C_man_polo_3_F", "C_man_polo_4_F", "C_man_polo_5_F", "C_man_polo_6_F", "C_man_p_fugitive_F", "C_man_p_fugitive_F_afro", "C_man_p_fugitive_F_euro" ];

// Possible PARA Troop Help that can be called by T8U spawned units!
T8U_var_SupportUnitsEAST		= [];
T8U_var_SupportUnitsWEST		= [];
T8U_var_SupportUnitsRESISTANCE	= [];

// NO HURRY
sleep 10;

/*

fnc_OPFOR_spawnGARR =
{
	private [ "_inf" ];	
	
	_inf = 
	[
		[ [ units_AS_RED_squad, "opfor_gar_01", "T8u_fnc_rmNVG_TEST" ], [ "GARRISON" ] ],
		[ [ units_AS_RED_squad, "opfor_gar_02", "T8u_fnc_rmNVG_TEST" ], [ "GARRISON" ], [ true, false, true ] ],
		[ [ units_AS_RED_squad, "opfor_gar_03", "T8u_fnc_rmNVG_TEST" ], [ "GARRISON" ], [ true, false, true ] ]
	];
	
	[ _inf ] spawn T8U_fnc_Spawn;
};





// ------------------------------------------------ THE END ---------------------------------------------------


_inf = 
[
	[ [ units_AS_RED_squad, "opfor_camp", "T8u_fnc_rmNVG_TEST" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ units_AS_RED_squad, "opfor_camp", "T8u_fnc_rmNVG_TEST" ], [ "GARRISON" ], [ true, false, false ] ],
	[ [ units_AS_RED_fireteam, "opfor_camp", "T8u_fnc_rmNVG_TEST" ], [ "PATROL" ] ],
	[ [ units_AS_RED_fireteam, "opfor_camp", "T8u_fnc_rmNVG_TEST" ], [ "PATROL_AROUND" ] ],
	[ [ units_AS_RED_fireteam, "opfor_camp_area", "T8u_fnc_rmNVG_TEST" ], [ "PATROL" ] ],
	[ [ units_AS_RED_fireteam, "opfor_camp_area", "T8u_fnc_rmNVG_TEST" ], [ "PATROL" ] ],
	[ [ units_AS_RED_fireteam, "opfor_camp_area", "T8u_fnc_rmNVG_TEST" ], [ "PATROL_AROUND" ] ],
	[ [ units_GUR_RED_squad, "opfor_pat" ], [ "PATROL_MARKER", [ "opfor_pat_01", "opfor_pat_02", "opfor_pat_03", "opfor_pat_04", "opfor_pat_05" ] ] ] 
];

[ _inf ] spawn T8U_fnc_Spawn;

fnc_OPFOR_spawnPARA =
{
	[ getMarkerPos ( mkr_OPFOR_inf call BIS_fnc_selectRandom ), getMarkerPos ( mkr_BLUFOR_base call BIS_fnc_selectRandom ), units_OPFOR_team, EAST ] execVM "T8\T8_supports\supportHALO.sqf";
	[ getMarkerPos ( mkr_OPFOR_inf call BIS_fnc_selectRandom ), getMarkerPos ( mkr_BLUFOR_base call BIS_fnc_selectRandom ), units_OPFOR_team, EAST ] execVM "T8\T8_supports\supportHALO.sqf";
	[ getMarkerPos ( mkr_OPFOR_inf call BIS_fnc_selectRandom ), getMarkerPos ( mkr_BLUFOR_base call BIS_fnc_selectRandom ), units_OPFOR_team, EAST ] execVM "T8\T8_supports\supportHALO.sqf";
	[ getMarkerPos ( mkr_OPFOR_inf call BIS_fnc_selectRandom ), getMarkerPos ( mkr_BLUFOR_base call BIS_fnc_selectRandom ), units_OPFOR_team, EAST ] execVM "T8\T8_supports\supportHALO.sqf";
};

fnc_INDEP_spawnWAVE =
{
	private [ "_inf" ];	
	
	_inf = 
	[
		[ [ units_INDEP_team08, "indep_spawn_02", true, RESISTANCE ], [ "ATTACK", "fia_def_01" ] ],
		[ [ units_INDEP_VEH, "indep_spawn_veh", false, RESISTANCE ], [ "ATTACK", ( mkr_BLUFOR_base call BIS_fnc_selectRandom ) ] ],
		[ [ units_INDEP_team08, ( mkr_INDEP_inf call BIS_fnc_selectRandom ), true, RESISTANCE ], [ "ATTACK", ( mkr_BLUFOR_base call BIS_fnc_selectRandom ) ] ],
		[ [ units_INDEP_team08, ( mkr_INDEP_inf call BIS_fnc_selectRandom ), true, RESISTANCE ], [ "ATTACK", ( mkr_BLUFOR_base call BIS_fnc_selectRandom ) ] ],
		[ [ units_INDEP_team08, ( mkr_INDEP_inf call BIS_fnc_selectRandom ), true, RESISTANCE ], [ "ATTACK", ( mkr_BLUFOR_base call BIS_fnc_selectRandom ) ] ]
	];
	
	[ _inf ] spawn T8U_fnc_Spawn;
};

// CIV Zones

CIV_ZONE_Char = 
[
	[ [ units_CIV_14, "civ_char", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ],
	[ [ units_CIV_14, "civ_char", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ]
];

[ "CIV_ZONE_Char", "civ_char", "CIV", "WEST", 1000 ] spawn T8U_fnc_Zone;

CIV_ZONE_Chal = 
[
	[ [ units_CIV_14, "civ_chal", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ],
	[ [ units_CIV_14, "civ_chal", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ]
];

[ "CIV_ZONE_Chal", "civ_chal", "CIV", "WEST", 1000 ] spawn T8U_fnc_Zone;

CIV_ZONE_Dori = 
[
	[ [ units_CIV_14, "civ_dori", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ],
	[ [ units_CIV_14, "civ_dori", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ]
];

[ "CIV_ZONE_Dori", "civ_dori", "CIV", "WEST", 1000 ] spawn T8U_fnc_Zone;

CIV_ZONE_Pana = 
[
	[ [ units_CIV_14, "civ_pana", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ],
	[ [ units_CIV_14, "civ_pana", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false] ]
];

[ "CIV_ZONE_Pana", "civ_pana", "CIV", "WEST", 1000 ] spawn T8U_fnc_Zone;

CIV_ZONE_Fere = 
[
	[ [ units_CIV_14, "civ_fere", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false ] ],
	[ [ units_CIV_14, "civ_fere", true, CIVILIAN ], [ "GARRISON" ], [ false, false, false] ]
];

[ "CIV_ZONE_Fere", "civ_fere", "CIV", "WEST", 1000 ] spawn T8U_fnc_Zone;
*/