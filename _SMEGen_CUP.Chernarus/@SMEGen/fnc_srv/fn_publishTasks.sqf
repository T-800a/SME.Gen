/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER
 
	File:		fn_publishTasks.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	
	
	remoteExec [ "T8SME_server_fnc_publishTasks", 2 ]; 
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

{
	_x params [ "_siteMkr", "_setTaskDesc", "_setTaskName", "_taskPos" ];
	
	private _arg = [ _siteMkr, true, [ _setTaskDesc, _setTaskName, "" ], _taskPos, "CREATED", 10, true, true, "Attack", true ];
	
	if !([ _siteMkr ] call BIS_fnc_taskCompleted ) then
	{
		_arg call BIS_fnc_setTask;
		// [ 1, ( str _arg ), 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 
	};

	false
} count T8SME_server_var_arrayCurrentTasks;