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

params [[ "_oldSite", "", [""]]];

_newSite = [ true ] call T8SME_server_fnc_handleNewTasks;
[ _oldSite, "SUCCEEDED", true ] call BIS_fnc_taskSetState;

__DEBUG( __FILE__, "_oldSite", _oldSite );
__DEBUG( __FILE__, "_newSite", _newSite );

[ _newSite ] call T8SME_server_fnc_createAO;

[ 1, 8, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];