/*
 =======================================================================================================

	@common
	
	File:		fn_vars.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================
*/ 

// HINTs

T8C_var_hintBuffer			= [];
T8C_var_hintActive			= false;
T8C_var_hintMinShowTime		= 8;


// headline presets for hints
T8C_var_hintHeadArray =
[
	"",													// 0
	"<img image='images\usoc.paa'/><br/>",				// 1
	"[ T8 Units ]<br />- ERROR -"						// 2 - T8U
];


// text presets for hints
T8C_var_hintPresetArray =
[
	"<t size='6' color='#FFFFFF' align='left'>%1</t><br /><t size='1.2' color='#E6E6E6' align='left'>%2</t>",		// 0 - for U.SOC image header
	"<t size='1' color='#2ECCFA' align='right'>%1</t><br /><t size='1.2' color='#58ACFA' align='left'>%2</t>",		// 1
	"<t size='1.5' color='#FE9A2E' align='center'>%1</t><br /><t size='1' color='#FE9A2E' align='left'>%2</t>",		// 2 - for T8U
	"<t size='6' color='#FFFFFF' align='left'>%1</t><br />%2",														// 3 - centred main text for RankUp
	"%1 %2"																											// 4 - empty
];


// predefined text for hints sent via server
private [ "_timeC", "_timeS" ];
_timeC = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionCleanDelay" );
_timeS = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionSpawnDelay" );

T8C_var_hintTextArray =
[ 
	localize "STR_SMEGen_hint_Reward01",												// 0
	localize "STR_SMEGen_hint_Reward02",												// 1
	localize "STR_SMEGen_hint_Reward03",												// 2
	format [ localize "STR_SMEGen_upcommingCleanUp", ( _timeC + _timeS ), _timeC ],		// 3
	format [ localize "STR_SMEGen_upcommingNewTasks", _timeS ],							// 4
	localize "STR_SMEGen_errorNewTasks",												// 5
	localize "STR_SMEGen_unlockUGV",													// 6
	localize "STR_SMEGen_hint_intelProcess",											// 7
	localize "STR_SMEGen_hint_followingTask"											// 8
];


// all vars initialized
T8C_var_INITvars = true;
