/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
 
	File:		fn_handleReward.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

private [ "_icon", "_arsenalAccess" ];

// no need for Rewards if full arsenal
_arsenalAccess = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8SME_param_playerRewardSet >> "fullArsenal" );
if ( _arsenalAccess isEqualTo 1 ) exitWith {};

// _classReward01			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionReward01" );
// _restrictionReward03		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction03" );

// __DEBUG( __FILE__, "_classReward01", _classReward01 );
// __DEBUG( __FILE__, "_restrictionReward03", _restrictionReward03 );


if ( isNil "T8SME_client_var_playerRank" ) then { T8SME_client_var_playerRank = "PRIVATE"; }; if ( T8SME_client_var_playerRank isEqualTo "GENERAL" ) exitWith {};
_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa";

switch ( T8SME_client_var_playerRank ) do
{
	case "COLONEL" :		{ T8SME_client_var_playerRank = "GENERAL";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\general_gs.paa"; };
	case "MAJOR" :			{ T8SME_client_var_playerRank = "COLONEL";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa"; };
	case "CAPTAIN" :		{ T8SME_client_var_playerRank = "MAJOR";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\major_gs.paa"; };
	case "LIEUTENANT" :		{ T8SME_client_var_playerRank = "CAPTAIN";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa"; };
	case "SERGEANT" :		{ T8SME_client_var_playerRank = "LIEUTENANT";	_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa"; };
	case "CORPORAL" :		{ T8SME_client_var_playerRank = "SERGEANT";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa"; };
	default					{ T8SME_client_var_playerRank = "CORPORAL";		_icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa"; };
};



// hint new Rank
_msg = format [ localize "STR_SMEGen_hint_playerRankUp", _icon, T8SME_client_var_playerRank ]; 
[ 1, _msg, 3 ] spawn T8C_fnc_hintProcess;

switch ( T8SME_client_var_playerRank ) do
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

[] call T8SME_client_fnc_updateArsenal;

// or bool
true
