/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_cleanUP.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	T8RMG_var_checkMissions		// tasks to delete
	T8RMG_var_arrayCleanup		// objs to delete
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_baseTime", "_cleanDelay", "_spawnDelay" ];
_baseTime = if ( isMultiplayer ) then { 60 } else { 1 };

_cleanDelay = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionCleanDelay" );
_spawnDelay = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionSpawnDelay" );

sleep ( _baseTime / 6 );

[ 1, "New mission sites will be created in 3 minutes!<br /><br />Cleanup will start in 2 miuntes!", 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 

sleep ( _cleanDelay * _baseTime );

_ftxt = format [ "T8RMG >> fn_cleanUP.sqf >>>>> %1 >> INIT", ( round diag_fps )]; conFile( _ftxt );

{
	_ftxt = format [ "T8RMG >> fn_cleanUP.sqf >>>>> %1 >> DELETE: %2", ( round diag_fps ), _x ]; conFile( _ftxt );
	
	if (( typeName _x ) isEqualTo ( typeName "STRING" ))	then { deleteMarkerLocal _x; };
	if (( typeName _x ) isEqualTo ( typeName [] ))			then {{ if ( !isNull _x ) then { deleteVehicle _x;  sleep 0.20; }; false } count _x; };
	if (( typeName _x ) isEqualTo ( "OBJECT" ))				then { if ( !isNull _x ) then { deleteVehicle _x;  sleep 0.20; }; };

} forEach T8RMG_var_arrayCleanup;

{ [ _x select 0 ] call BIS_fnc_deleteTask; false } count T8RMG_var_checkMissions;

[ 1, "New mission sites will be created in 1 minute!", 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 

sleep ( _spawnDelay * _baseTime );

[] execVM "@randomMission\init.sqf";