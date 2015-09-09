/*
 =======================================================================================================

	File:		CIM_admin.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	[ "ID_01", "Action 01", "true", "hint 'Action 01';", 20, true, [1,1,1,1] ] call ASC_CIM_fnc_AltActionAdd;
	[ "ID_01"] call ASC_CIM_fnc_AltActionRemove;

 =======================================================================================================================
*/

private [ "_access" ];
_access = false;

if ( isMultiplayer ) then
{
	private [ "_uid" ];
	_uid = getPlayerUID player;
	
	switch ( _uid ) do 
	{ 
		case "76561197962343988": 
		{
			//	[ "SAG | ALT.CIM", "Welcome Hauke,<br />you have acces to admin in the CIM: ALT.menu!<br />(default: ALT + WIN Left)", 0 ] spawn ASC_NH_fnc_sendHint;
			_access = true; 
			// cutText [ "Welcome Hauke you have acces to admin in the CIM: ALT.menu (ALT + WIN Left)!", "PLAIN", 2];
		};
		
		case "76561198027698781": 
		{
			// [ "SAG | ALT.CIM", "Welcome Paul,<br />you have acces to admin in the CIM: ALT.menu!<br />(default: ALT + WIN Left)", 0 ] spawn ASC_NH_fnc_sendHint;
			_access = true;
			// cutText [ "Welcome Paul you have acces to admin in the CIM: ALT.menu (ALT + WIN Left)!", "PLAIN", 2];
		};
		
		default	{ _access = false; }; 
	};
} else { _access = true; /* [ "SAG | ALT.CIM", "Welcome,<br />you have acces to admin in the CIM: ALT.menu!<br />(default: ALT + WIN Left)", 0 ] spawn ASC_NH_fnc_sendHint; */ };

// add "dynamic groups" button in ALT.CIM
[ "ID_dynGroups", "- Dynamic Groups -", "true", "([] call BIS_fnc_displayMission) createDisplay 'RscDisplayDynamicGroups';", 5 ] call ASC_CIM_fnc_AltActionAdd;

// GO AWAY RANDOM ...
if ( ! _access ) exitWith {};

[ "ADMIN_01", "- Teleport -", "visibleMap", "[] call T8C_fnc_addMapClick;", 100 ] call ASC_CIM_fnc_AltActionAdd;
[ "ADMIN_02", "- Virtual Arsenal -", "!visibleMap", "['Open',true] spawn BIS_fnc_arsenal;", 110 ] call ASC_CIM_fnc_AltActionAdd;
[ "ADMIN_03", "Register Units with Zeus",	"true", "T8S_pVar_execServer = [ 99 ]; publicVariableServer 'T8S_pVar_execServer'; [ 'CIM Admin', 'Register Units with Zeus', 0 ] spawn ASC_NH_fnc_sendHint;", 9001 ] call ASC_CIM_fnc_AltActionAdd;


// Mission sepcific
// [ "ID_02", "Spawn: OPFOR CAMP", "true", "if ( !isMultiplayer ) then { [] spawn fnc_OPFOR_camp; }; T8S_pVar_execServer = [  1 ]; publicVariableServer 'T8S_pVar_execServer'; [ 'CIM Admin', 'EXEC - Spawn: OPFOR CAMP', 0 ] spawn ASC_NH_fnc_sendHint; [ 'ID_02'] call ASC_CIM_fnc_AltActionRemove;", 510 ] call ASC_CIM_fnc_AltActionAdd;
// [ "ID_03", "Spawn: OPFOR HAR", "true", "if ( !isMultiplayer ) then { [] spawn fnc_OPFOR_har; }; T8S_pVar_execServer = [  0 ]; publicVariableServer 'T8S_pVar_execServer'; [ 'CIM Admin', 'EXEC - Spawn: OPFOR HAR', 0 ] spawn ASC_NH_fnc_sendHint; [ 'ID_03'] call ASC_CIM_fnc_AltActionRemove;", 500 ] call ASC_CIM_fnc_AltActionAdd;

// [ "ID_03", "Spawn: INDEP Convoy", "true", "if ( !isMultiplayer ) then { [] spawn fnc_INDEP_spawn; };T8S_pVar_execServer = [  1 ]; publicVariableServer 'T8S_pVar_execServer'; [ 'CIM Admin', 'EXEC - Spawn: INDEP Convoy', 0 ] spawn ASC_NH_fnc_sendHint; [ 'ID_03'] call ASC_CIM_fnc_AltActionRemove;", 510 ] call ASC_CIM_fnc_AltActionAdd;
// [ "ID_01", "Spawn: RADAR WAVE", "true", "T8S_pVar_execServer = [ 0 ]; publicVariableServer 'T8S_pVar_execServer';" ] call ASC_CIM_fnc_AltActionAdd;
// [ "ID_02", "Activate DAC", "true", "SAG_DAC_activate = true; publicVariableServer 'SAG_DAC_activate'; [ 'ID_02'] call ASC_CIM_fnc_AltActionRemove;" ] call ASC_CIM_fnc_AltActionAdd;
// [ "ID_03", "Damage MH47E", "true", "[ [], 'SAG_damage_MH47E', true ] spawn BIS_fnc_MP;  [ 'ID_03'] call ASC_CIM_fnc_AltActionRemove;" ] call ASC_CIM_fnc_AltActionAdd;



