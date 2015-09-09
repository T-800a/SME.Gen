/*
 =======================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================
*/ 

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );


// hint config
#include <hintConfig.sqf>


T8C_var_initDONE = true;

///// ALL INIT DONE /////////////////////////////////////////////////////////////////////////////////////////////////////


// check slots restrictions
[] call T8C_fnc_checkSlots;



// create vehicle restrictions
[ mission_heli_01, "whitelistHelicopter" ] call T8C_fnc_restricVehicle;


// Prepare VR-Ammobox
private [ "_arsenalAccess" ];
_arsenalAccess = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8RMG_var_playerRewardSet >> "fullArsenal" );
DEBUG( __FILE__, "_arsenalAccess", _arsenalAccess );
if ( _arsenalAccess isEqualTo 1 ) then 
{
	[ "AmmoboxInit", [ mission_obj_arsenal_post, true ]] spawn BIS_fnc_arsenal;
} else {
	[ "INIT" ] call T8C_fnc_updateArsenal;
	[ "AmmoboxInit", mission_obj_arsenal_post ] spawn BIS_fnc_arsenal;
};

// [] spawn T8C_fnc_welcome;



// 1PARA Relic!
#include <CIM_admin.sqf>


waitUntil {sleep 0.1; !(isNull (findDisplay 12))};
( ( findDisplay 12 ) displayCtrl 51 ) ctrlAddEventHandler [ "Draw", T8C_fnc_drawMapIcons ];