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
		missionReward01		= "ASC_B_LandRover_AMB";
		missionReward02		= "UK3CB_BAF_Jackal2_L2A1_D";
		missionReward03		= "MELB_AH6M_M";
		
		class startingGear
		{
			Backpack[]	= {};
			Item[]		= {};
			Magazine[]	= {};
			Weapon[]	= {};
		};
		
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
	
	class vanilla_BLUFOR
	{
		fullArsenal			= 0;	
		missionReward01		= "ASC_B_LandRover_AMB";
		missionReward02		= "UK3CB_BAF_Jackal2_L2A1_D";
		missionReward03		= "MELB_AH6M_M";
		
		class startingGear
		{
			Backpack[]	= {};
			Item[]		= {};
			Magazine[]	= {};
			Weapon[]	= {};
		};
		
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
};