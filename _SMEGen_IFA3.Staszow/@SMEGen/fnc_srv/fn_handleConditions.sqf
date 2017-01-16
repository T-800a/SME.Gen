/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleConditions.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	T8SME_server_var_arrayConditions  ->  [[ _x, _siteMkr, _con, _fnc ], [], ... ]
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_baseTime", "_cleanDelay", "_spawnDelay" ];
_baseTime = if ( isMultiplayer ) then { 60 } else { 1 };
_cleanDelay = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionCleanDelay" );
_spawnDelay = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionSpawnDelay" );


while { true } do
{
	sleep 10;
	
	private [ "_allTasks" ];
	_allTasks		= [];

	{
		private [ "_debugArray" ];
		_debugArray = [( _x select 0 ), ( _x select 1 ), ( _x select 3 ), ( _x select 4 ), ( _x select 2 )];
//		__DEBUG( __FILE__, "T8SME_server_var_arrayConditions > _x", _debugArray );
		
		if !(( typeName ( _x select 3 )) isEqualTo ( typeName true )) then
		{
			if ( call compile ( _x select 2 )) then 
			{
				private [ "_arg" ];
				switch ( toUpper ( _x select 0 )) do 
				{ 
					case "WIN":		{ _arg = [ ( _x select 1 ), "SUCCEEDED", true ]; };
					case "FAIL":	{ _arg = [ ( _x select 1 ), "FAILED", true ]; };
					default			{ _arg = [ ( _x select 1 ) ]; };
				};

//				__DEBUG( __FILE__, "CONDITION __TRUE__ > _arg", _arg );

				// spawn the function defined in the condition

				if !( [ ( _x select 1 ) ] call BIS_fnc_taskCompleted ) then { _arg spawn ( missionNamespace getVariable [ ( _x select 3 ), "T8C_fnc_debug" ]); };

				// if condition is a win > communicate a rewards ( player / server )
				if ( toUpper ( _x select 0 ) isEqualTo "WIN" AND ( _x select 4 )) then 
				{
					remoteExec [ "T8SME_client_fnc_handleReward", 0 ];
					[] call T8SME_server_fnc_handleReward;
				};
				
				_x set [ 3, true ];
			};
		};
		
		if (( _x select 4 ) AND {( typeName ( _x select 3 )) isEqualTo ( typeName true )} AND {[( _x select 1 )] call BIS_fnc_taskCompleted } AND { !(( _x select 1 ) in _allTasks )}) then { _allTasks pushBack ( _x select 1 ); };
	} forEach T8SME_server_var_arrayConditions;
	
//	__DEBUG( __FILE__, "_allTasks", _allTasks );
	__DEBUG( __FILE__, "_allTasks > DONE", ({[ _x ] call BIS_fnc_taskCompleted } count _allTasks ));


	// start new tasks if needed	
	if ( T8SME_param_amountSites isEqualTo  ({[ _x ] call BIS_fnc_taskCompleted } count _allTasks )) then 
	{
		[ 1, 3, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 

		sleep ( _cleanDelay * _baseTime );

		// clean up all stuff
		[] call T8SME_server_fnc_cleanUP;

		[ 1, 4, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 

		sleep ( _spawnDelay * _baseTime );

		// start new tasks set
		[] call T8SME_server_fnc_handleNewTasks;
	};
};


