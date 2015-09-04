/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_handleReward.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_skip", "_classReward01", "_classReward02", "_classReward03", "_restrictionReward01", "_restrictionReward02", "_restrictionReward03" ];

_classReward01			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionReward01" );
_restrictionReward03	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction03" );

DEBUG( __FILE__, "_classReward01", _classReward01 );
DEBUG( __FILE__, "_restrictionReward03", _restrictionReward03 );

if ( isNil "T8C_var_playerRank" ) then { T8C_var_playerRank = "PRIVATE"; };

switch ( T8C_var_playerRank ) do
{
	case "COLONEL" :		{ T8C_var_playerRank = "GENERAL";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\general_gs.paa"; };
	case "MAJOR" :			{ T8C_var_playerRank = "COLONEL";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa"; };
	case "CAPTAIN" :		{ T8C_var_playerRank = "MAJOR";			_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\major_gs.paa"; };
	case "LIEUTENANT" :		{ T8C_var_playerRank = "CAPTAIN";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa"; };
	case "SERGEANT" :		{ T8C_var_playerRank = "LIEUTENANT";	_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa"; };
	case "CORPORAL" :		{ T8C_var_playerRank = "SERGEANT";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa"; };
	default					{ T8C_var_playerRank = "CORPORAL";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa"; };
};

// hint new Rank
_msg = format [ localize "STR_SMEGen_hint_playerRankUp", _icon, T8C_var_playerRank ]; 
[ 1, _msg, 3 ] spawn T8C_fnc_hintProcess;

switch ( T8C_var_playerRank ) do
{
	case "CORPORAL" :		{};
	case "SERGEANT" :		{};
	case "LIEUTENANT" :		{};
	case "CAPTAIN" :		{};
	case "MAJOR" :			{};
	case "COLONEL" :		{};
	case "GENERAL" :		{};
	default {};
};

// or bool
true
