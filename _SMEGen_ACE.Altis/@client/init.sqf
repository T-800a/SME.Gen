/*
 =======================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================
*/ 

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );


// hint config
#include <hintConfig.sqf>

T8C_var_drawVehiclesMap = [];
T8C_var_initDONE = true;

///// ALL INIT DONE /////////////////////////////////////////////////////////////////////////////////////////////////////


// check slots restrictions
[] call T8C_fnc_checkSlots;


// INIT Arsenal
[ "INIT" ] call T8C_fnc_updateArsenal;


// add key presses
[] spawn T8C_fnc_keysAdd;


// add diary entries
[] call T8C_fnc_addDiary;


// start map markers if enabled
if ( T8RMG_var_allowMapMarker ) then
{
	waitUntil {sleep 0.1; !(isNull (findDisplay 12))};
	( ( findDisplay 12 ) displayCtrl 51 ) ctrlAddEventHandler [ "Draw", T8C_fnc_drawMapIcons ];
};



// debug add keys for missionSites export
if !( isMultiplayer ) exitWith { waitUntil { !isNil "t8rmg_var_arraycleanup" }; [] spawn T8C_fnc_debugKeysAdd; [] spawn T8C_fnc_debugSiteMarkers; };