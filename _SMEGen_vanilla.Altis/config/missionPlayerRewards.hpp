/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionPlayerRewards.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class missionPlayerRewards 
{
	class SAG_gear
	{
	// allow full arsenal
	// 0 - no
	// 1 - yes
		fullArsenal			= 1;
		
	// vehicle rewards
		missionReward01		= "UK3CB_BAF_Coyote_Passenger_L111A1_D";
		missionReward02		= "UK3CB_BAF_Jackal2_L2A1_D";
		missionReward03		= "MELB_AH6M_M";
		
		class base_reward 
		{
			BackpackReward[]	= {};
			ItemReward[]		= {};
			MagazineReward[]	= {};
			WeaponReward[]		= {};
		};
		
		class startingGear : base_reward {};
		class CORPORAL : base_reward {};
		class SERGEANT : base_reward {};
		class LIEUTENANT : base_reward {};
		class CAPTAIN : base_reward {};
		class MAJOR : base_reward {};
		class COLONEL : base_reward {};
		class GENERAL : base_reward {};
	};
	
	class vanilla_BLUFOR
	{
		fullArsenal			= 0;	
		missionReward01		= "B_Truck_01_medical_F";
		missionReward02		= "B_MRAP_01_hmg_F";
		missionReward03		= "B_Heli_Light_01_armed_F";
		
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
	
	class vanilla_BLUFOR_fullArsenal : vanilla_BLUFOR { fullArsenal = 0; };
};