/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionPlayerFactions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define REDFOR 0
#define BLUFOR 1
#define GRNFOR 2

class missionPlayerFactions 
{	
	class vanilla_BLUFOR
	{
		fullArsenal			= 0;
		playerSide			= BLUFOR;
		friendlyFaction		= "vanilla_BLUFOR";
		
	// always available vehicles
		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "B_Truck_01_medical_F";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "B_MRAP_01_F";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "B_MRAP_01_F";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
			
			class mission_vehicle_04
			{
				type			= "B_Heli_Transport_03_unarmed_F";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};
		
	//	reward vehicles
		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "B_Truck_01_medical_F";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "B_MRAP_01_hmg_F";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "B_Heli_Light_01_armed_F";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};
		
	// gear
		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { "B_AssaultPack_khk","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_sgg","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_ocamo" };
			ItemReward[]		= { "optic_Aco_smg","optic_ACO_grn_smg","optic_Aco","optic_ACO_grn","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_HeliPilotCoveralls","U_B_PilotCoveralls","V_Rangemaster_belt","V_BandollierB_khk","V_BandollierB_rgr","V_BandollierB_cbr","V_BandollierB_blk","V_BandollierB_oli","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_tan","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK","H_Cap_grn","H_Cap_grn_BI","H_Cap_blk_ION","H_Cap_headphones","H_MilCap_mcamo","H_MilCap_gry","H_MilCap_blue","H_Bandanna_khk","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_gry","H_Bandanna_camo","H_Bandanna_mcamo","H_ShemagOpen_tan","H_Beret_blk","H_Watchcap_blk","H_Watchcap_khk","H_Watchcap_camo","H_Shemag_olive_hs","H_Shemag_olive","H_Booniehat_oli","H_Bandanna_sand","H_Watchcap_cbr","H_Cap_usblack","B_UavTerminal","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP","ToolKit","FirstAidKit","Medikit" };
			MagazineReward[]	= { "16Rnd_9x21_Mag","30Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","3Rnd_HE_Grenade_shell","Laserbatteries","HandGrenade","MiniGrenade","SmokeShell","SmokeShellGreen","30Rnd_65x39_caseless_mag_Tracer","11Rnd_45ACP_Mag","30Rnd_45ACP_Mag_SMG_01","100Rnd_65x39_caseless_mag_Tracer","CUP_HandGrenade_M67","SmokeShellYellow","SmokeShellRed","SmokeShellPurple","SmokeShellOrange","SmokeShellBlue","B_IR_Grenade","O_IR_Grenade","I_IR_Grenade","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag" };
			WeaponReward[]		= { "SMG_01_F","hgun_P07_F","launch_NLAW_F","arifle_MX_F","arifle_MX_SW_F","arifle_MXC_F" };
		};
		
		class CORPORAL : base_reward 
		{
			ItemReward[]		= { "H_HelmetSpecB_blk", "H_HelmetSpecB_paint2", "H_HelmetSpecB_paint1", "H_HelmetSpecB", "H_HelmetB_plain_blk", "H_HelmetB_plain_mcamo", "optic_Holosight", "optic_Holosight_smg", "muzzle_snds_acp", "muzzle_snds_H", "muzzle_snds_L" };
			WeaponReward[]		= { "arifle_MX_Black_F", "arifle_MXC_Black_F", "arifle_MX_SW_Black_F" };		
		};
		
		class SERGEANT : base_reward 
		{
			ItemReward[]		= { "bipod_01_F_snd", "bipod_01_F_mtp", "bipod_01_F_blk" };
			MagazineReward[]	= { "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell" };
			WeaponReward[]		= { "arifle_MXM_Black_F", "arifle_MXM_F", "arifle_MX_GL_F", "arifle_MX_GL_Black_F" };		
		};
		
		class LIEUTENANT : base_reward 
		{
			ItemReward[]		= { "B_Bergen_blk", "B_Bergen_sgg", "B_Bergen_rgr", "B_Bergen_mcamo", "optic_MRCO", "optic_Hamr", "optic_Arco", "V_Chestrig_khk", "V_Chestrig_oli", "V_Chestrig_blk", "V_Chestrig_rgr" };
		};
		
		class CAPTAIN : base_reward
		{
			ItemReward[]		= { "muzzle_snds_B", "optic_DMS", "H_HelmetB_light_grass", "H_HelmetB_light_snakeskin", "H_HelmetB_light_desert", "H_HelmetB_light_black", "H_HelmetB_light_sand" };
			MagazineReward[]	= { "20Rnd_762x51_Mag" };
			WeaponReward[]		= { "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_F" };
		};
		
		class MAJOR : base_reward
		{
			ItemReward[]		= { "muzzle_snds_338_sand", "optic_AMS_snd" };
			MagazineReward[]	= { "10Rnd_338_Mag" };
			WeaponReward[]		= { "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F" };

		};
		
		class COLONEL : base_reward
		{
			MagazineReward[]	= { "130Rnd_338_Mag" };
			WeaponReward[]		= { "MMG_02_camo_F", "MMG_02_black_F", "MMG_02_sand_F" };
			ItemReward[]		= { "V_PlateCarrier1_rgr", "V_PlateCarrier2_rgr", "V_PlateCarrierSpec_rgr", "V_PlateCarrier1_blk", "V_PlateCarrierGL_rgr", "V_PlateCarrier3_rgr" };
		};
		
		class GENERAL : base_reward
		{
			ItemReward[]		= { "V_PlateCarrierGL_blk", "V_PlateCarrierGL_mtp", "V_PlateCarrierSpec_blk", "V_PlateCarrierGL_mtp" };
		};
	};
	
	class vanilla_BLUFOR_fullArsenal : vanilla_BLUFOR
	{
		fullArsenal			= 1;
	};
	
	class vanilla_REDFOR_fullArsenal : vanilla_BLUFOR
	{
		fullArsenal			= 1;
		playerSide			= REDFOR;
		friendlyFaction		= "vanilla_OPFOR";	

		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "O_Truck_03_medical_F";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "O_MRAP_02_F";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "O_MRAP_02_F";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_04
			{
				type			= "O_Heli_Light_02_unarmed_F";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};			
		};

		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "O_Truck_03_medical_F";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "O_MRAP_02_hmg_F";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "O_Heli_Light_02_F";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};
	};
	
	class vanilla_GRNFOR_fullArsenal : vanilla_BLUFOR
	{
		fullArsenal			= 1;
		playerSide			= GRNFOR;
		friendlyFaction		= "vanilla_INDEP";

		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "I_Truck_02_medical_F";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "I_MRAP_03_F";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "I_MRAP_03_F";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_04
			{
				type			= "I_Heli_Transport_02_F";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "I_Truck_02_medical_F";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "I_MRAP_03_hmg_F";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "I_Heli_light_03_F";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};
	};



	// --------------------------------------------------------------
	//	vanilla BLUFOR + ACE
	//	

	class vanilla_BLUFOR_ACE : vanilla_BLUFOR
	{	
		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { "B_AssaultPack_khk","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_sgg","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_ocamo" };
			ItemReward[]		= { "ACE_SpareBarrel","ACE_EarPlugs","optic_Aco_smg","optic_ACO_grn_smg","optic_Aco","optic_ACO_grn","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_HeliPilotCoveralls","U_B_PilotCoveralls","V_Rangemaster_belt","V_BandollierB_khk","V_BandollierB_rgr","V_BandollierB_cbr","V_BandollierB_blk","V_BandollierB_oli","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_tan","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK","H_Cap_grn","H_Cap_grn_BI","H_Cap_blk_ION","H_Cap_headphones","H_MilCap_mcamo","H_MilCap_gry","H_MilCap_blue","H_Bandanna_khk","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_gry","H_Bandanna_camo","H_Bandanna_mcamo","H_ShemagOpen_tan","H_Beret_blk","H_Watchcap_blk","H_Watchcap_khk","H_Watchcap_camo","H_Shemag_olive_hs","H_Shemag_olive","H_Booniehat_oli","H_Bandanna_sand","H_Watchcap_cbr","H_Cap_usblack","B_UavTerminal","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP","ToolKit","ACE_wirecutter","ACE_MapTools","ACE_fieldDressing","ACE_morphine","ACE_epinephrine","ACE_bloodIV","ACE_microDAGR","ACE_RangeTable_82mm","ACE_NVG_Gen1","ACE_NVG_Gen2","ACE_NVG_Gen4","ACE_NVG_Wide","ACE_SpottingScope","ACE_Tripod","ACE_key_west","ACE_ATragMX","ACE_IR_Strobe_Item","ACE_CableTie","ACE_DAGR","ACE_Clacker","ACE_DefusalKit","ACE_M26_Clacker","ACE_DeadManSwitch","ACE_Kestrel4500","ACE_RangeCard","FirstAidKit", "Medikit" };
			MagazineReward[]	= { "16Rnd_9x21_Mag","30Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","3Rnd_HE_Grenade_shell","Laserbatteries","HandGrenade","MiniGrenade","SmokeShell","SmokeShellGreen","30Rnd_65x39_caseless_mag_Tracer","11Rnd_45ACP_Mag","30Rnd_45ACP_Mag_SMG_01","100Rnd_65x39_caseless_mag_Tracer","CUP_HandGrenade_M67","SmokeShellYellow","SmokeShellRed","SmokeShellPurple","SmokeShellOrange","SmokeShellBlue","B_IR_Grenade","O_IR_Grenade","I_IR_Grenade","ACE_HandFlare_White","ACE_HandFlare_Red","ACE_HandFlare_Green","ACE_HandFlare_Yellow","ACE_M84","DemoCharge_Remote_Mag", "ACE_HandFlare_White", "ACE_HandFlare_Green", "ACE_HandFlare_Red", "ACE_HandFlare_Yellow", "SatchelCharge_Remote_Mag" };
			WeaponReward[]		= { "SMG_01_F","hgun_P07_F","launch_NLAW_F","arifle_MX_F","arifle_MX_SW_F","arifle_MXC_F" };
		};
		
		class CORPORAL : base_reward 
		{
			ItemReward[]		= { "H_HelmetSpecB_blk", "H_HelmetSpecB_paint2", "H_HelmetSpecB_paint1", "H_HelmetSpecB", "H_HelmetB_plain_blk", "H_HelmetB_plain_mcamo", "optic_Holosight", "optic_Holosight_smg", "muzzle_snds_acp", "muzzle_snds_H", "muzzle_snds_L" };
			WeaponReward[]		= { "arifle_MX_Black_F", "arifle_MXC_Black_F", "arifle_MX_SW_Black_F" };		
		};
		
		class SERGEANT : base_reward 
		{
			ItemReward[]		= { "bipod_01_F_snd", "bipod_01_F_mtp", "bipod_01_F_blk", "ACE_HuntIR_monitor" };
			MagazineReward[]	= { "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell", "ACE_HuntIR_M203" };
			WeaponReward[]		= { "arifle_MXM_Black_F", "arifle_MXM_F", "arifle_MX_GL_F", "arifle_MX_GL_Black_F" };		
		};
		
		class LIEUTENANT : base_reward 
		{
			ItemReward[]		= { "ACE_acc_pointer_green_IR", "ACE_acc_pointer_green", "ACE_acc_pointer_red", "B_Bergen_blk", "B_Bergen_sgg", "B_Bergen_rgr", "B_Bergen_mcamo", "optic_MRCO", "optic_Hamr", "optic_Arco", "V_Chestrig_khk", "V_Chestrig_oli", "V_Chestrig_blk", "V_Chestrig_rgr" };
		};
		
		class CAPTAIN : base_reward
		{
			ItemReward[]		= { "muzzle_snds_B", "optic_DMS", "H_HelmetB_light_grass", "H_HelmetB_light_snakeskin", "H_HelmetB_light_desert", "H_HelmetB_light_black", "H_HelmetB_light_sand" };
			MagazineReward[]	= { "20Rnd_762x51_Mag" };
			WeaponReward[]		= { "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_F" };
		};
		
		class MAJOR : base_reward
		{
			ItemReward[]		= { "muzzle_snds_338_sand", "optic_AMS_snd" };
			MagazineReward[]	= { "10Rnd_338_Mag" };
			WeaponReward[]		= { "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F" };

		};
		
		class COLONEL : base_reward
		{
			MagazineReward[]	= { "130Rnd_338_Mag" };
			WeaponReward[]		= { "MMG_02_camo_F", "MMG_02_black_F", "MMG_02_sand_F" };
			ItemReward[]		= { "V_PlateCarrier1_rgr", "V_PlateCarrier2_rgr", "V_PlateCarrierSpec_rgr", "V_PlateCarrier1_blk", "V_PlateCarrierGL_rgr", "V_PlateCarrier3_rgr" };
		};
		
		class GENERAL : base_reward
		{
			ItemReward[]		= { "V_PlateCarrierGL_blk", "V_PlateCarrierGL_mtp", "V_PlateCarrierSpec_blk", "V_PlateCarrierGL_mtp" };
		};
	};




	// --------------------------------------------------------------
	//	CUP Rewards
	//
	
	// US Marine Core
	class CUP_BLUFOR_USMC
	{
		fullArsenal			= 0;
		playerSide			= BLUFOR;
		friendlyFaction		= "CUP_BLUFOR_USMC";

		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "CUP_B_HMMWV_Ambulance_USMC";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "CUP_B_HMMWV_M1114_USMC";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "CUP_B_HMMWV_Unarmed_USMC";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_04
			{
				type			= "CUP_B_UH1Y_UNA_USMC";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "CUP_B_LAV25_HQ_USMC";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "CUP_B_RG31_M2_OD_USMC";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "CUP_B_UH1Y_GUNSHIP_USMC";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { "CUP_B_AssaultPack_Coyote" };
			ItemReward[]		= {	"B_UavTerminal","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP","ToolKit","FirstAidKit","Medikit",
									"V_Rangemaster_belt","V_BandollierB_khk","V_BandollierB_rgr","V_BandollierB_cbr","V_BandollierB_blk","V_BandollierB_oli",
									"H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_tan","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK","H_Cap_grn","H_Cap_grn_BI","H_Cap_blk_ION","H_Cap_headphones","H_MilCap_mcamo","H_MilCap_gry","H_MilCap_blue","H_Bandanna_khk","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_gry","H_Bandanna_camo","H_Bandanna_mcamo","H_ShemagOpen_tan","H_Beret_blk","H_Watchcap_blk","H_Watchcap_khk","H_Watchcap_camo","H_Shemag_olive_hs","H_Shemag_olive","H_Booniehat_oli","H_Bandanna_sand","H_Watchcap_cbr","H_Cap_usblack",
									"CUP_H_FR_Bandana_Headset", "CUP_H_FR_BandanaGreen", "CUP_H_FR_BandanaWdl", "CUP_H_FR_BeanieGreen", "CUP_H_FR_BoonieMARPAT", "CUP_H_FR_BoonieWDL", "CUP_H_FR_Cap_Headset_Green", "CUP_H_FR_Cap_Officer_Headset", "CUP_H_USMC_Officer_Cap", "CUP_H_FR_Headband_Headset", "CUP_H_FR_Headset",
									"CUP_U_B_USMC_MARPAT_WDL_Kneepad", "CUP_U_B_USMC_MARPAT_WDL_RolledUp", "CUP_U_B_USMC_MARPAT_WDL_RollUpKneepad", "CUP_U_B_USMC_MARPAT_WDL_Sleeves", "CUP_U_B_USMC_MARPAT_WDL_TwoKneepads", "CUP_U_B_USMC_Officer", "CUP_U_B_USMC_PilotOverall"
								};
			MagazineReward[]	= { "CUP_M136_M", "CUP_7Rnd_45ACP_1911", "CUP_17Rnd_9x19_glock17", "CUP_15Rnd_9x19_M9", "CUP_30Rnd_9x19_MP5",
									"CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_G36","CUP_30Rnd_TE1_Red_Tracer_556x45_G36","CUP_30Rnd_TE1_Green_Tracer_556x45_G36","CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36","CUP_100Rnd_556x45_BetaCMag","CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag","CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag","CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","CUP_20Rnd_556x45_Stanag",
									"CUP_HandGrenade_M67","B_IR_Grenade","Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","SmokeShell","SmokeShellYellow","SmokeShellRed","SmokeShellGreen","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange","CUP_TimeBomb_M","CUP_PipeBomb_M","DemoCharge_Remote_Mag"
								};
			WeaponReward[]		= { "CUP_launch_M136", "CUP_hgun_Colt1911", "CUP_hgun_Glock17", "CUP_hgun_M9", "CUP_smg_MP5A5", "CUP_arifle_M16A2", "CUP_glaunch_M79" };
		};
		
		class CORPORAL : base_reward 
		{
			ItemReward[]		= { "CUP_V_B_MTV", "CUP_V_B_RRV_Light" };
			MagazineReward[]	= { "CUP_1Rnd_StarCluster_White_M203","CUP_1Rnd_StarCluster_Red_M203","CUP_1Rnd_StarCluster_Green_M203","CUP_1Rnd_StarFlare_White_M203","CUP_1Rnd_StarFlare_Red_M203","CUP_1Rnd_StarFlare_Green_M203","CUP_1Rnd_HE_M203","CUP_1Rnd_HEDP_M203","CUP_FlareWhite_M203","CUP_FlareGreen_M203","CUP_FlareRed_M203","CUP_FlareYellow_M203","CUP_1Rnd_Smoke_M203","CUP_1Rnd_SmokeRed_M203","CUP_1Rnd_SmokeGreen_M203","CUP_1Rnd_SmokeYellow_M203","1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell" };
			WeaponReward[]		= { "CUP_arifle_M16A2_GL" };
		};

		class SERGEANT : base_reward 
		{
			BackpackReward[]	= { "CUP_B_USMC_AssaultPack" };
			ItemReward[]		= { "CUP_optic_Eotech533", "CUP_optic_CompM2_Black", "CUP_optic_CompM4", "CUP_optic_TrijiconRx01_black", "CUP_optic_RCO",
									"CUP_muzzle_snds_M16", "CUP_bipod_Harris_1A2_L", "bipod_01_F_snd", "bipod_01_F_mtp", "bipod_01_F_blk",									
									"CUP_V_B_RRV_Medic", "CUP_V_B_RRV_MG", "CUP_V_B_RRV_Officer", "CUP_V_B_RRV_Scout", "CUP_V_B_RRV_Scout2", "CUP_V_B_RRV_Scout3", "CUP_V_B_RRV_TL"
								};
			WeaponReward[]		= { "CUP_arifle_M16A4_GL", "CUP_arifle_M16A4_Base", "CUP_srifle_Mk12SPR" };		
		};
		
		class LIEUTENANT : base_reward 
		{
			ItemReward[]		= {"CUP_optic_SMAW_Scope","CUP_H_USMC_Crew_Helmet", "CUP_H_USMC_Goggles_HelmetWDL", "CUP_H_USMC_Headset_GoggleW_HelmetWDL", "CUP_H_USMC_Headset_HelmetWDL", "CUP_H_USMC_Helmet_Pilot", "CUP_H_USMC_HelmetWDL" };
			MagazineReward[]	= {	"CUP_SMAW_HEAA_M","CUP_SMAW_HEDP_M", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249","CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249","CUP_200Rnd_TE4_Green_Tracer_556x45_M249","CUP_200Rnd_TE1_Red_Tracer_556x45_M249","CUP_100Rnd_TE4_Green_Tracer_556x45_M249","CUP_100Rnd_TE4_Red_Tracer_556x45_M249","CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249","CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1","CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1","CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_G36","30Rnd_556x45_STANAG",
									"CUP_6Rnd_HE_M203","CUP_6Rnd_Smoke_M203","CUP_6Rnd_SmokeRed_M203","CUP_6Rnd_SmokeGreen_M203","CUP_6Rnd_SmokeYellow_M203"
								};
			WeaponReward[]		= { "CUP_launch_Mk153Mod0", "CUP_lmg_M249", "CUP_glaunch_M32" };
		};
		
		class CAPTAIN : base_reward
		{
			ItemReward[]		= { "CUP_V_B_PilotVest", "CUP_V_B_MTV_LegPouch", "CUP_V_B_MTV_Marksman", "CUP_V_B_MTV_MG", "CUP_V_B_MTV_Mine", "CUP_V_B_MTV_noCB", "CUP_V_B_MTV_Patrol", "CUP_V_B_MTV_PistolBlack", "CUP_V_B_MTV_Pouches", "CUP_V_B_MTV_TL",
									 "CUP_optic_ACOG", "CUP_optic_ElcanM145", "CUP_optic_SB_11_4x20_PM", "CUP_H_FR_ECH"
								};
			MagazineReward[]	= { "CUP_20Rnd_762x51_DMR","CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR","CUP_20Rnd_TE1_Red_Tracer_762x51_DMR","CUP_20Rnd_TE1_Green_Tracer_762x51_DMR","CUP_20Rnd_TE1_White_Tracer_762x51_DMR","20Rnd_762x51_Mag" };
			WeaponReward[]		= { "CUP_srifle_M14", "CUP_arifle_M4A1_BUIS_GL", "CUP_arifle_M4A1_black" };
		};
		
		class MAJOR : base_reward
		{
			BackpackReward[]	= { "CUP_B_USPack_Coyote", "CUP_B_USMC_MOLLE", "CUP_B_USMC_MOLLE_WDL" };
			ItemReward[]		= { "CUP_optic_LeupoldMk4_CQ_T", "CUP_optic_LeupoldMk4", "CUP_optic_Leupold_VX3" };
			MagazineReward[]	= { "CUP_20Rnd_762x51_B_M110","CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110","CUP_20Rnd_TE1_Red_Tracer_762x51_M110","CUP_20Rnd_TE1_Green_Tracer_762x51_M110","CUP_20Rnd_TE1_White_Tracer_762x51_M110"};
			WeaponReward[]		= { "CUP_srifle_M110", "CUP_srifle_DMR" };

		};
		
		class COLONEL : base_reward
		{
			MagazineReward[]	= { "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M","CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M" };
			WeaponReward[]		= { "CUP_lmg_M240" };
			ItemReward[]		= { "CUP_optic_ELCAN_SpecterDR", "V_PlateCarrier1_rgr", "V_PlateCarrier2_rgr", "V_PlateCarrierSpec_rgr", "V_PlateCarrier1_blk", "V_PlateCarrierGL_rgr", "V_PlateCarrier3_rgr" };
		};
		
		class GENERAL : base_reward
		{
			ItemReward[]		= { "CUP_optic_LeupoldMk4_10x40_LRT_Desert", "CUP_bipod_VLTOR_Modpod", "CUP_V_B_RRV_DA1", "CUP_V_B_RRV_DA2" };
			MagazineReward[]	= { "CUP_5Rnd_762x51_M24", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M" };
			WeaponReward[]		= { "CUP_srifle_M24_des", "CUP_lmg_M60A4" };
		};
	};

	// US Army
	class CUP_BLUFOR_USA
	{
		fullArsenal			= 0;
		playerSide			= BLUFOR;
		friendlyFaction		= "CUP_BLUFOR_USA";

		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "CUP_B_HMMWV_Ambulance_USA";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "CUP_B_HMMWV_M2_USA";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "CUP_B_HMMWV_Unarmed_USA";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_04
			{
				type			= "CUP_B_UH60M_Unarmed_FFV_US";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "CUP_B_M1126_ICV_MK19_Desert_Slat";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "CUP_B_HMMWV_M2_GPK_USA";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "CUP_B_AH6J_Escort19_USA";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { "CUP_B_AssaultPack_ACU","CUP_B_AssaultPack_Coyote" };
			ItemReward[]		= {	"B_UavTerminal","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP","ToolKit","FirstAidKit","Medikit",
									"V_Rangemaster_belt","V_BandollierB_khk","V_BandollierB_rgr","V_BandollierB_cbr","V_BandollierB_blk","V_BandollierB_oli",
									"H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_tan","H_Booniehat_dgtl","H_Cap_tan","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK","H_Cap_grn","H_Cap_grn_BI","H_Cap_blk_ION","H_Cap_headphones","H_MilCap_mcamo","H_MilCap_gry","H_MilCap_blue","H_Bandanna_khk","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_gry","H_Bandanna_camo","H_Bandanna_mcamo","H_ShemagOpen_tan","H_Beret_blk","H_Watchcap_blk","H_Watchcap_khk","H_Watchcap_camo","H_Shemag_olive_hs","H_Shemag_olive","H_Booniehat_oli","H_Bandanna_sand","H_Watchcap_cbr","H_Cap_usblack",
									"CUP_H_FR_Bandana_Headset", "CUP_H_FR_BandanaGreen", "CUP_H_FR_BandanaWdl", "CUP_H_FR_BeanieGreen", "CUP_H_FR_BoonieMARPAT", "CUP_H_FR_BoonieWDL", "CUP_H_FR_Cap_Headset_Green", "CUP_H_FR_Cap_Officer_Headset", "CUP_H_USMC_Officer_Cap", "CUP_H_FR_Headband_Headset", "CUP_H_FR_Headset",
									"CUP_U_B_USArmy_TwoKnee","CUP_U_B_USArmy_Base","CUP_U_B_USArmy_Soft","CUP_U_B_USArmy_UBACS","CUP_U_B_USArmy_Ghillie","CUP_U_B_USArmy_PilotOverall"
								};
			MagazineReward[]	= { "CUP_M136_M", "CUP_7Rnd_45ACP_1911", "CUP_17Rnd_9x19_glock17", "CUP_15Rnd_9x19_M9", "CUP_30Rnd_9x19_MP5",
									"CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_G36","CUP_30Rnd_TE1_Red_Tracer_556x45_G36","CUP_30Rnd_TE1_Green_Tracer_556x45_G36","CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36","CUP_100Rnd_556x45_BetaCMag","CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag","CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag","CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","CUP_20Rnd_556x45_Stanag",
									"CUP_HandGrenade_M67","B_IR_Grenade","Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","SmokeShell","SmokeShellYellow","SmokeShellRed","SmokeShellGreen","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange","CUP_TimeBomb_M","CUP_PipeBomb_M","DemoCharge_Remote_Mag"
								};
			WeaponReward[]		= { "CUP_launch_M136", "CUP_hgun_Colt1911", "CUP_hgun_Glock17", "CUP_hgun_M9", "CUP_smg_MP5A5", "CUP_arifle_M16A2", "CUP_glaunch_M79" };
		};
		
		class CORPORAL : base_reward 
		{
			ItemReward[]		= { "CUP_V_B_MTV", "CUP_V_B_RRV_Light" };
			MagazineReward[]	= { "CUP_1Rnd_StarCluster_White_M203","CUP_1Rnd_StarCluster_Red_M203","CUP_1Rnd_StarCluster_Green_M203","CUP_1Rnd_StarFlare_White_M203","CUP_1Rnd_StarFlare_Red_M203","CUP_1Rnd_StarFlare_Green_M203","CUP_1Rnd_HE_M203","CUP_1Rnd_HEDP_M203","CUP_FlareWhite_M203","CUP_FlareGreen_M203","CUP_FlareRed_M203","CUP_FlareYellow_M203","CUP_1Rnd_Smoke_M203","CUP_1Rnd_SmokeRed_M203","CUP_1Rnd_SmokeGreen_M203","CUP_1Rnd_SmokeYellow_M203","1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell" };
			WeaponReward[]		= { "CUP_arifle_M16A2_GL" };
		};

		class SERGEANT : base_reward 
		{
			BackpackReward[]	= { "CUP_B_MedicPack_ACU","CUP_B_USPack_Coyote","CUP_B_USPack_Black" };
			ItemReward[]		= { "CUP_optic_Eotech533", "CUP_optic_CompM2_Black", "CUP_optic_CompM4", "CUP_optic_TrijiconRx01_black", "CUP_optic_RCO",
									"CUP_muzzle_snds_M16", "CUP_bipod_Harris_1A2_L", "bipod_01_F_snd", "bipod_01_F_mtp", "bipod_01_F_blk",									
									"CUP_V_B_RRV_Medic", "CUP_V_B_RRV_MG", "CUP_V_B_RRV_Officer", "CUP_V_B_RRV_Scout", "CUP_V_B_RRV_Scout2", "CUP_V_B_RRV_Scout3", "CUP_V_B_RRV_TL"
								};
			WeaponReward[]		= { "CUP_arifle_M16A4_GL", "CUP_arifle_M16A4_Base", "CUP_srifle_Mk12SPR" };		
		};
		
		class LIEUTENANT : base_reward 
		{
			ItemReward[]		= { "CUP_optic_SMAW_Scope","CUP_H_USArmy_HelmetMICH_earpro_ess","CUP_H_USArmy_HelmetMICH_earpro","CUP_H_USArmy_HelmetMICH_ESS","CUP_H_USArmy_HelmetMICH_headset_ess","CUP_H_USArmy_HelmetMICH_headset","CUP_H_USArmy_HelmetMICH" };
			MagazineReward[]	= {	"CUP_SMAW_HEAA_M","CUP_SMAW_HEDP_M", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249","CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249","CUP_200Rnd_TE4_Green_Tracer_556x45_M249","CUP_200Rnd_TE1_Red_Tracer_556x45_M249","CUP_100Rnd_TE4_Green_Tracer_556x45_M249","CUP_100Rnd_TE4_Red_Tracer_556x45_M249","CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249","CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1","CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1","CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_G36","30Rnd_556x45_STANAG",
									"CUP_6Rnd_HE_M203","CUP_6Rnd_Smoke_M203","CUP_6Rnd_SmokeRed_M203","CUP_6Rnd_SmokeGreen_M203","CUP_6Rnd_SmokeYellow_M203"
								};
			WeaponReward[]		= { "CUP_launch_Mk153Mod0", "CUP_lmg_M249", "CUP_glaunch_M32" };
		};
		
		class CAPTAIN : base_reward
		{
			ItemReward[]		= { "CUP_V_B_PilotVest","CUP_V_B_IOTV_gl","CUP_V_B_IOTV_MG","CUP_V_B_IOTV_Medic","CUP_V_B_IOTV_Rifleman","CUP_V_B_IOTV_AT","CUP_V_B_IOTV_saw","CUP_V_B_IOTV_SL","CUP_V_B_IOTV_tl",
									 "CUP_optic_ACOG", "CUP_optic_ElcanM145", "CUP_optic_SB_11_4x20_PM", "CUP_H_FR_ECH"
								};
			MagazineReward[]	= { "CUP_20Rnd_762x51_DMR","CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR","CUP_20Rnd_TE1_Red_Tracer_762x51_DMR","CUP_20Rnd_TE1_Green_Tracer_762x51_DMR","CUP_20Rnd_TE1_White_Tracer_762x51_DMR","20Rnd_762x51_Mag" };
			WeaponReward[]		= { "CUP_srifle_M14", "CUP_arifle_M4A1_BUIS_GL", "CUP_arifle_M4A1_black" };
		};
		
		class MAJOR : base_reward
		{
			BackpackReward[]	= { "B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli" };
			ItemReward[]		= { "CUP_optic_LeupoldMk4_CQ_T", "CUP_optic_LeupoldMk4", "CUP_optic_Leupold_VX3" };
			MagazineReward[]	= { "CUP_20Rnd_762x51_B_M110","CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110","CUP_20Rnd_TE1_Red_Tracer_762x51_M110","CUP_20Rnd_TE1_Green_Tracer_762x51_M110","CUP_20Rnd_TE1_White_Tracer_762x51_M110"};
			WeaponReward[]		= { "CUP_srifle_M110", "CUP_srifle_DMR" };

		};
		
		class COLONEL : base_reward
		{
			MagazineReward[]	= { "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M","CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M" };
			WeaponReward[]		= { "CUP_lmg_M240" };
			ItemReward[]		= { "CUP_optic_ELCAN_SpecterDR", "V_PlateCarrier1_rgr", "V_PlateCarrier2_rgr", "V_PlateCarrierSpec_rgr", "V_PlateCarrier1_blk", "V_PlateCarrierGL_rgr", "V_PlateCarrier3_rgr" };
		};
		
		class GENERAL : base_reward
		{
			ItemReward[]		= { "CUP_optic_LeupoldMk4_10x40_LRT_Desert", "CUP_bipod_VLTOR_Modpod", "CUP_V_B_RRV_DA1", "CUP_V_B_RRV_DA2" };
			MagazineReward[]	= { "CUP_5Rnd_762x51_M24", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M" };
			WeaponReward[]		= { "CUP_srifle_M24_des", "CUP_lmg_M60A4" };
		};
	};

	class CUP_BLUFOR_USMC_fullArsenal : CUP_BLUFOR_USMC { fullArsenal = 1; };
	class CUP_BLUFOR_USA_fullArsenal : CUP_BLUFOR_USA { fullArsenal = 1; };


	// --------------------------------------------------------------
	//	RHS Rewards
	//

	class RHS_INDEP
	{
		fullArsenal			= 0;
		playerSide			= REDFOR;
		friendlyFaction		= "RHS_OPFOR_GUER";
		
	// always available vehicles
		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "rhs_kamaz5350_vdv";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "rhs_tigr_ffv_vdv";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "rhs_tigr_sts_vdv";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
			
			class mission_vehicle_04
			{
				type			= "RHS_Mi8mt_Cargo_vdv";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "rhs_gaz66_ap2_vdv";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "rhs_btr60_vdv";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "RHS_Mi24P_CAS_vdv";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { "rhs_assault_umbts" };
			ItemReward[]		= {	"ACE_SpareBarrel","ACE_EarPlugs","ToolKit","ACE_wirecutter","ACE_MapTools","ACE_fieldDressing","ACE_morphine","ACE_epinephrine","ACE_bloodIV","ACE_microDAGR","ACE_RangeTable_82mm","ACE_NVG_Gen1","ACE_NVG_Gen2","ACE_NVG_Gen4","ACE_NVG_Wide","ACE_SpottingScope","ACE_Tripod","ACE_key_west","ACE_ATragMX","ACE_IR_Strobe_Item","ACE_CableTie","ACE_DAGR","ACE_Clacker","ACE_DefusalKit","ACE_M26_Clacker","ACE_DeadManSwitch","ACE_Kestrel4500","ACE_RangeCard","FirstAidKit", "Medikit""B_UavTerminal","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP","ToolKit","FirstAidKit","Medikit",
									"rhs_vydra_3m","rhs_6sh92_digi","rhs_6sh92","V_BandollierB_cbr","V_BandollierB_blk","V_BandollierB_oli",
									"H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_tan","H_Booniehat_dgtl","rhs_beanie_green","rhs_acc_1p29",
									"rhs_Booniehat_flora", "CUP_H_FR_BandanaGreen", 
									"rhs_uniform_gorka_r_y", "rhs_uniform_gorka_r_g", "rhs_uniform_flora_patchless", "rhs_uniform_flora_patchless_alt", "U_BG_Guerrilla_6_1", "U_BG_Guerilla2_3", "rhs_uniform_df15"
								};
			MagazineReward[]	= { "rhs_weap_rshg2", "rhs_mag_9x18_12_57N181S",
									"rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_7N10_AK","rhs_30Rnd_545x39_AK_green",
									"rhs_mag_rgo","B_IR_Grenade","Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","SmokeShell","SmokeShellYellow","SmokeShellRed","SmokeShellGreen","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange","DemoCharge_Remote_Mag"
								};
			WeaponReward[]		= { "rhs_weap_rshg2", "rhs_weap_makarov_pmm", "rhs_weap_ak74m_2mag_camo" };
		};
		
		class CORPORAL : base_reward 
		{
			ItemReward[]		= { "H_HelmetSpecB_blk", "H_HelmetSpecB_paint2", "H_HelmetSpecB_paint1", "H_HelmetSpecB", "H_HelmetB_plain_blk", "H_HelmetB_plain_mcamo", "optic_Holosight", "optic_Holosight_smg", "muzzle_snds_acp", "muzzle_snds_H", "muzzle_snds_L" };
			WeaponReward[]		= { "arifle_MX_Black_F", "arifle_MXC_Black_F", "arifle_MX_SW_Black_F" };		
		};
		
		class SERGEANT : base_reward 
		{
			ItemReward[]		= { "bipod_01_F_snd", "bipod_01_F_mtp", "bipod_01_F_blk", "ACE_HuntIR_monitor" };
			MagazineReward[]	= { "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell", "ACE_HuntIR_M203" };
			WeaponReward[]		= { "arifle_MXM_Black_F", "arifle_MXM_F", "arifle_MX_GL_F", "arifle_MX_GL_Black_F" };		
		};
		
		class LIEUTENANT : base_reward 
		{
			ItemReward[]		= { "ACE_acc_pointer_green_IR", "ACE_acc_pointer_green", "ACE_acc_pointer_red", "B_Bergen_blk", "B_Bergen_sgg", "B_Bergen_rgr", "B_Bergen_mcamo", "optic_MRCO", "optic_Hamr", "optic_Arco", "V_Chestrig_khk", "V_Chestrig_oli", "V_Chestrig_blk", "V_Chestrig_rgr" };
		};
		
		class CAPTAIN : base_reward
		{
			ItemReward[]		= { "muzzle_snds_B", "optic_DMS", "H_HelmetB_light_grass", "H_HelmetB_light_snakeskin", "H_HelmetB_light_desert", "H_HelmetB_light_black", "H_HelmetB_light_sand" };
			MagazineReward[]	= { "20Rnd_762x51_Mag" };
			WeaponReward[]		= { "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_F" };
		};
		
		class MAJOR : base_reward
		{
			ItemReward[]		= { "muzzle_snds_338_sand", "optic_AMS_snd" };
			MagazineReward[]	= { "10Rnd_338_Mag" };
			WeaponReward[]		= { "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F" };

		};
		
		class COLONEL : base_reward
		{
			MagazineReward[]	= { "130Rnd_338_Mag" };
			WeaponReward[]		= { "MMG_02_camo_F", "MMG_02_black_F", "MMG_02_sand_F" };
			ItemReward[]		= { "V_PlateCarrier1_rgr", "V_PlateCarrier2_rgr", "V_PlateCarrierSpec_rgr", "V_PlateCarrier1_blk", "V_PlateCarrierGL_rgr", "V_PlateCarrier3_rgr" };
		};
		
		class GENERAL : base_reward
		{
			ItemReward[]		= { "V_PlateCarrierGL_blk", "V_PlateCarrierGL_mtp", "V_PlateCarrierSpec_blk", "V_PlateCarrierGL_mtp" };
		};
	};
	
	class RHS_INDEP_fullArsenal : RHS_INDEP { fullArsenal = 1; };


	// --------------------------------------------------------------
	//	RHS USMC Rewards
	//

	class RHS_USMC
	{
		fullArsenal			= 0;
		playerSide			= BLUFOR;
		friendlyFaction		= "RHS_BLUFOR_ARMY_OCP";
		
	// always available vehicles
		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "rhsusf_m1025_d";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_vehicle_02
			{
				type			= "rhsusf_M1232_usarmy_d";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_vehicle_03
			{
				type			= "rhsusf_M1232_M2_usarmy_d";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
			
			class mission_vehicle_04
			{
				type			= "RHS_UH60M_d";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "rhsusf_M1232_usarmy_wd";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_02
			{
				type			= "rhsusf_rg33_m2_usmc_wd";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "RHS_MELB_AH6M_H";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "whitelistHelicopter";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};

		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { 
			//BACKPACK
			"rhsusf_assault_eagleaiii_coy"
                     			};
			ItemReward[]		= {	
			//MISC
			"FirstAidKit",
			"Medikit",
			"ToolKit",
			"ItemWatch",
			"ItemCompass",
			"ItemGPS",
			"ItemRadio",
			"ItemMap",
			"Binocular",
			"MineDetector",
			"B_UavTerminal",
			"rhsusf_ANPVS_15",
			//UNIFORM
			"rhsusf_lwh_helmet_marpatwd_headset_blk",
			"rhs_uniform_FROG01_wd",
			"rhsusf_spc_squadleader",
			"rhsusf_spc_rifleman",
			"rhsusf_spc_light",
			"rhsusf_spc_marksman",
			"rhs_booniehat2_marpatwd",
			"rhsusf_lwh_helmet_marpatwd",
			"rhsusf_lwh_helmet_marpatwd_blk_ess",
			"rhsusf_mich_helmet_marpatwd_norotos_arc",
			"rhs_googles_black",
			"rhs_googles_clear",
			"rhs_ess_black",
			//ATTACHMENTS
			"rhsusf_acc_eotech_552",
			"rhsusf_acc_compm4",
			"rhsusf_acc_ACOG",
			"rhsusf_acc_M8541",
			"rhsusf_acc_grip3",
								};
			MagazineReward[]	= { 
			//MAGAZINES
			"rhs_mag_30Rnd_556x45_M855A1_Stanag",
			"rhs_mag_M441_HE",
			"rhs_200rnd_556x45_M_SAW",
			"rhsusf_5Rnd_762x51_m118_special_Mag",
			"rhs_m136_mag","rhs_mag_m67",
			"rhsusf_mag_15Rnd_9x19_JHP"
								};
			WeaponReward[]		= { 
			//WEAPONS
			"rhs_weap_m4a1_carryhandle",
			"rhs_weap_m249_pip_S",
			"rhs_weap_m24sws_blk",
			"rhs_weap_M136",
			"rhsusf_weap_m9"
                    			};
		};
		
		class CORPORAL : base_reward 
		{
			ItemReward[]		= { 
			"rhsusf_acc_harris_bipod",
			"rhsusf_acc_premier"
                    			};
			MagazineReward[]    = { 
			"rhsusf_20Rnd_762x51_m118_special_Mag",
			"rhs_mag_an_m8hc",
			"rhs_mag_smaw_HEDP" 
			                    };
			WeaponReward[]		= { 
			"rhs_weap_m16a4",
			"rhs_weap_smaw_green",
			"rhs_weap_sr25"
                    			};		
		};
		
		class SERGEANT : base_reward 
		{
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};		
		};
		
		class LIEUTENANT : base_reward 
		{
			ItemReward[]		= {};
		};
		
		class CAPTAIN : base_reward
		{
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class MAJOR : base_reward
		{
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};

		};
		
		class COLONEL : base_reward
		{
			MagazineReward[]	= {};
			WeaponReward[]		= {};
			ItemReward[]		= {};
		};
		
		class GENERAL : base_reward
		{
			ItemReward[]		= {};
		};
	};
	
	class RHS_USMC_fullArsenal : RHS_USMC { fullArsenal = 1; };





	// --------------------------------------------------------------
	//	IFA3 Rewards
	//	
	
	class IFA3_BLUFOR_WEHR
	{
		fullArsenal			= 0;
		playerSide			= BLUFOR;
		friendlyFaction		= "IFA3_BLUFOR_WEHR";	

		class missionVehicles
		{
			class mission_vehicle_01
			{
				type			= "LIB_opelblitz_open_y_camo";
				spawn			= "mission_marker_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 0;
			};
			
			class mission_vehicle_02
			{
				type			= "LIB_opelblitz_tent_y_camo";
				spawn			= "mission_marker_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 1;		
			};

			class mission_vehicle_03
			{
				type			= "LIB_Kfz1_MG42";
				spawn			= "mission_marker_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
			
			class mission_vehicle_04
			{
				type			= "LIB_Kfz1_MG42";
				spawn			= "mission_marker_vehicle_04_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};			
		}
		
		class missionRewardVehicles
		{
			class mission_reward_vehicle_01
			{
				type			= "LIB_SdKfz251_FFV";
				spawn			= "mission_marker_reward_vehicle_01_spawn";
				whiteList		= "";
				mobileRespawn	= 1;
				mobileArsenal	= 1;
			};
			
			class mission_reward_vehicle_02
			{
				type			= "LIB_StuG_III_G";
				spawn			= "mission_marker_reward_vehicle_02_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};

			class mission_reward_vehicle_03
			{
				type			= "LIB_PzKpfwIV_H";
				spawn			= "mission_marker_reward_vehicle_03_spawn";
				whiteList		= "";
				mobileRespawn	= 0;
				mobileArsenal	= 0;
			};
		};
		
		missionReward01		= "LIB_SdKfz251_FFV";
		missionReward02		= "LIB_StuG_III_G";
		missionReward03		= "LIB_PzKpfwIV_H";
		
		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward
		{
			BackpackReward[]	= { "B_LIB_GER_A_frame","B_LIB_GER_A_frame_AT","B_LIB_GER_A_frame_Gef","B_LIB_GER_Backpack","B_LIB_GER_Bag","B_LIB_GER_ExplosivesBag","B_LIB_GER_GrenadesBag","B_LIB_GER_K89AmmoBag","B_LIB_GER_LW_Paradrop","B_LIB_GER_MGAmmoBag","B_LIB_GER_MedicBackpack","B_LIB_GER_MedicBackpack_Empty","B_LIB_GER_MineBag","B_LIB_GER_Panzer","B_LIB_GER_Panzer_Empty","B_LIB_GER_Radio","B_LIB_GER_SapperBackpack","B_LIB_GER_SapperBackpack2","B_LIB_GER_Tonister34_cowhide" };
			ItemReward[]		= { "ItemGPS","ItemRadio","ItemWatch","ItemCompass","ItemMap","ToolKit","FirstAidKit","Medikit","Binocular","LIB_ToolKit","LIB_ACC_K98_Bayo","LIB_Binocular_GER","U_LIB_GER_Soldier_camo","H_LIB_GER_Cap","H_LIB_GER_Cap_w","H_LIB_GER_Fieldcap","H_LIB_GER_Helmet","H_LIB_GER_HelmetCamo","H_LIB_GER_HelmetCamo2","H_LIB_GER_HelmetCamo_w","H_LIB_GER_Helmet_net","H_LIB_GER_Helmet_net_painted","H_LIB_GER_Helmet_ns","H_LIB_GER_Helmet_ns_painted","H_LIB_GER_Helmet_painted","H_LIB_GER_Helmet_w","H_LIB_GER_LW_PilotHelmet","H_LIB_GER_LW_PilotHelmet_w","H_LIB_GER_OfficerCap","H_LIB_GER_OfficerCap_w","H_LIB_GER_SPGPrivateCap","H_LIB_GER_SPGPrivateCap_w","H_LIB_GER_TankOfficerCap","H_LIB_GER_TankOfficerCap2","H_LIB_GER_TankOfficerCap_w","H_LIB_GER_TankPrivateCap","H_LIB_GER_TankPrivateCap2","H_LIB_GER_TankPrivateCap_w","H_LIB_GER_Ushanka","U_LIB_GER_Art_leutnant","U_LIB_GER_Art_leutnant_w","U_LIB_GER_Art_schutze","U_LIB_GER_Art_schutze_w","U_LIB_GER_Art_unterofficer","U_LIB_GER_Art_unterofficer_w","U_LIB_GER_Funker","U_LIB_GER_Funker_w","U_LIB_GER_Gefreiter","U_LIB_GER_Gefreiter_w","U_LIB_GER_Hauptmann","U_LIB_GER_Hauptmann_w","U_LIB_GER_LW_pilot","U_LIB_GER_LW_pilot_w","U_LIB_GER_Leutnant","U_LIB_GER_Leutnant_w","U_LIB_GER_MG_schutze","U_LIB_GER_MG_schutze_w","U_LIB_GER_Medic","U_LIB_GER_Medic_w","U_LIB_GER_Oberleutnant","U_LIB_GER_Oberleutnant_w","U_LIB_GER_Oberschutze","U_LIB_GER_Oberschutze_w","U_LIB_GER_Oberst","U_LIB_GER_Oberst_w","U_LIB_GER_Officer_camo","U_LIB_GER_Officer_camo_w","U_LIB_GER_Pionier","U_LIB_GER_Pionier_w","U_LIB_GER_Recruit","U_LIB_GER_Recruit_w","U_LIB_GER_Scharfschutze","U_LIB_GER_Scharfschutze_w","U_LIB_GER_Schutze","U_LIB_GER_Schutze_w","U_LIB_GER_Soldier","U_LIB_GER_Soldier2","U_LIB_GER_Soldier3","U_LIB_GER_Soldier_camo","U_LIB_GER_Soldier_camo3","U_LIB_GER_Soldier_camo4","U_LIB_GER_Soldier_camo5","U_LIB_GER_Soldier_camo_w","U_LIB_GER_Spg_crew_leutnant","U_LIB_GER_Spg_crew_leutnant_w","U_LIB_GER_Spg_crew_private","U_LIB_GER_Spg_crew_private_w","U_LIB_GER_Spg_crew_unterofficer","U_LIB_GER_Spg_crew_unterofficer_w","U_LIB_GER_Tank_crew_leutnant","U_LIB_GER_Tank_crew_leutnant_w","U_LIB_GER_Tank_crew_private","U_LIB_GER_Tank_crew_private_w","U_LIB_GER_Tank_crew_unterofficer","U_LIB_GER_Tank_crew_unterofficer_w","U_LIB_GER_Unterofficer","U_LIB_GER_Unterofficer_w","V_LIB_GER_FieldOfficer","V_LIB_GER_FieldOfficer_w","V_LIB_GER_OfficerBelt","V_LIB_GER_OfficerBelt_w","V_LIB_GER_OfficerVest","V_LIB_GER_OfficerVest_w","V_LIB_GER_PioneerVest","V_LIB_GER_PrivateBelt","V_LIB_GER_PrivateBelt_w","V_LIB_GER_SniperBelt","V_LIB_GER_SniperBelt_w","V_LIB_GER_TankPrivateBelt","V_LIB_GER_TankPrivateBelt_w","V_LIB_GER_VestG43","V_LIB_GER_VestG43_w","V_LIB_GER_VestKar98","V_LIB_GER_VestKar98_w","V_LIB_GER_VestMG","V_LIB_GER_VestMG_w","V_LIB_GER_VestMP4","V_LIB_GER_VestMP40_w","V_LIB_GER_VestSTG","V_LIB_GER_VestSTG_w","V_LIB_GER_VestUnterofficer","V_LIB_GER_VestUnterofficer_w" };
			MagazineReward[]	= { "LIB_8Rnd_9x19","LIB_32Rnd_9x19","LIB_5Rnd_792x57","LIB_10Rnd_792x57","LIB_30Rnd_792x33","LIB_47Rnd_762x54","LIB_50Rnd_792x57","LIB_nb39","LIB_5Rnd_792x57_t","LIB_5Rnd_792x57_sS","LIB_5Rnd_792x57_SMK","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_T2","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_SMK","LIB_50Rnd_792x57_sS","LIB_50Rnd_792x57_SMK","LIB_shg24","LIB_shg24x7","LIB_1Rnd_flare_white","LIB_1Rnd_flare_green","LIB_1Rnd_flare_red","LIB_1Rnd_flare_yellow","LIB_1Rnd_RPzB","LIB_1Rnd_PzFaust_30m","LIB_STMI_MINE_mag","LIB_shumine_42_MINE_mag","LIB_Ladung_Small_MINE_mag","LIB_Ladung_Big_MINE_mag","LIB_Ladung_PM_MINE_mag" };
			WeaponReward[]		= { "LIB_P38","LIB_MP40","LIB_MP44","LIB_K98","LIB_G3340","LIB_G43","LIB_MG42","LIB_K98ZF39","LIB_PzFaust_30m","LIB_RPzB","LIB_RPzB_w" };
		};
		
		class CORPORAL : base_reward {};
		class SERGEANT : base_reward {};
		class LIEUTENANT : base_reward {};
		class CAPTAIN : base_reward {};
		class MAJOR : base_reward {};
		class COLONEL : base_reward {};
		class GENERAL : base_reward {};
	};

	class IFA3_BLUFOR_WEHR_fullArsenal : IFA3_BLUFOR_WEHR { fullArsenal = 1; };
};