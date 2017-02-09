/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		paramsBisRevive.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	COPY & PASTE from A3 because the suggested include (form the BIKI)  brings up a error
	
 =======================================================================================================================
*/


class ReviveMode
{
	title = $STR_A3_ReviveMode;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_Disabled,
		$STR_A3_EnabledForAllPlayers
	};
	default = -100;
	function = "bis_fnc_paramReviveMode";
};

class ReviveDuration
{
	title = $STR_A3_ReviveDuration;
	isGlobal = 1;

	values[] = {
		-100,
		6,
		8,
		10,
		12,
		15,
		20,
		25,
		30
	};
	texts[] = {
		$STR_A3_MissionDefault,
		6,
		8,
		10,
		12,
		15,
		20,
		25,
		30
	};
	default = -100;
	function = "bis_fnc_paramReviveDuration";
};

class ReviveRequiredTrait
{
	title = $STR_A3_RequiredTrait;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_None,
		$STR_A3_Medic
	};
	default = -100;
	function = "bis_fnc_paramReviveRequiredTrait";
};

class ReviveMedicSpeedMultiplier
{
	title = $STR_A3_RequiredTrait_MedicSpeedMultiplier;
	isGlobal = 1;

	values[] = {
		-100,
		1,
		1.5,
		2,
		2.5,
		3
	};
	texts[] = {
		$STR_A3_MissionDefault,
		"1x",
		"1.5x",
		"2x",
		"2.5x",
		"3x"
	};
	default = -100;
	function = "bis_fnc_paramReviveMedicSpeedMultiplier";
};

class ReviveRequiredItems
{
	title = $STR_A3_RequiredItems;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1,
		2
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_None,
		$STR_A3_Medikit,
		$STR_A3_FirstAidKitOrMedikit
	};
	default = -100;
	function = "bis_fnc_paramReviveRequiredItems";
};

class ReviveRequiredItemsFakConsumed
{
	title = $STR_A3_RequiredItems_ConsumeFirstAidKit;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_lib_info_no,
		$STR_lib_info_yes
	};
	default = -100;
	function = "bis_fnc_paramReviveRequiredItemsFakConsumed";
};

class UnconsciousStateMode
{
	title = $STR_A3_IncapacitationMode;
	isGlobal = 1;

	values[] = {
		-100,
		0,
		1,
		2
	};
	texts[] = {
		$STR_A3_MissionDefault,
		$STR_A3_Basic,
		$STR_A3_Advanced,
		$STR_A3_Realistic
	};
	default = -100;
	function = "bis_fnc_paramReviveUnconsciousStateMode";
};

class ReviveBleedOutDuration
{
	title = $STR_A3_BleedOutDuration;
	isGlobal = 1;

	values[] = {
		-100,
		10,
		15,
		20,
		30,
		45,
		60,
		90,
		180,
		210,
		240
	};
	texts[] = {
		$STR_A3_MissionDefault,
		10,
		15,
		20,
		30,
		45,
		60,
		90,
		180,
		210,
		240
	};
	default = -100;
	function = "bis_fnc_paramReviveBleedOutDuration";
};

class ReviveForceRespawnDuration
{
	title = $STR_A3_ForceRespawnDuration;
	isGlobal = 1;

	values[] = {
		-100,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10
	};
	texts[] = {
		$STR_A3_MissionDefault,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10
	};
	default = -100;
	function = "bis_fnc_paramReviveForceRespawnDuration";
};