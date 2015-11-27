/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_handleFollowingTask.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_newSite" ];

params [[ "_oldSite", "", [""]]];

_newSite = [ true ] call T8RMG_fnc_handleNewTasks;
[ _oldSite, "SUCCEEDED", true ] call BIS_fnc_taskSetState;

__DEBUG( __FILE__, "_oldSite", _oldSite );
__DEBUG( __FILE__, "_newSite", _newSite );

[ _newSite ] call T8RMG_fnc_createAO;

[ 1, 8, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];