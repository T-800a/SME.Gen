/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleFollowingTask.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_newSite" ];

params [
	[ "_oldSite", "", [""]],
	[ "_type", "", [""]],
	[ "_name", "", [""]]
];

private _followUpSite = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "site" );
private _followUpTask = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "task" );

if ( _followUpSite isEqualTo "" ) then { _followUpSite = "any"; };

_newSite = [ true, _followUpSite ] call T8SME_server_fnc_handleNewTasks;
[ _oldSite, "SUCCEEDED", true ] call BIS_fnc_taskSetState;

__DEBUG( __FILE__, "_oldSite", _oldSite );
__DEBUG( __FILE__, "_newSite", _newSite );

[ _newSite, _followUpTask ] call T8SME_server_fnc_createAO;

[ 1, 8, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];