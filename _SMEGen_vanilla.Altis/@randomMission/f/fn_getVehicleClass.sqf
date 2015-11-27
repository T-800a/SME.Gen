/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_getVehicleClass.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) // [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

params [[ "_type", "ERROR", [""]]];

private [ "_return" ];
_return	= "";

if ( _type isEqualTo "ERROR" ) exitWith { _return };

_return = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8RMG_var_enemyFaction >> "vehicles" >> _type );


// return
_return
