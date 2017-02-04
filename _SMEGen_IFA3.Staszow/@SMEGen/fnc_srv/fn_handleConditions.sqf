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
	
	private _allTasks = [];

	{
//
//		private _debugArray = [( _x select 0 ), ( _x select 1 ), ( _x select 3 ), ( _x select 4 ), ( _x select 2 )];
//		__DEBUG( __FILE__, "T8SME_server_var_arrayConditions > _x", _debugArray );
//					0					1		 		2				3				4			5		
		_x params [	"_conditonName",	"_taskMarker",	"_conditon",	"_conditonFnc",	"_isFinal",	"_taskType" ];

		if !(( typeName _conditonFnc ) isEqualTo ( typeName true )) then
		{
			if ( call compile _conditon ) then 
			{
				private [ "_arg" ];
				switch ( toUpper _conditonName ) do 
				{ 
					case "WIN":		{ _arg = [ _taskMarker, "SUCCEEDED", true ]; };
					case "FAIL":	{ _arg = [ _taskMarker, "FAILED", true ]; };
					default			{ _arg = [ _taskMarker, _taskType, _conditonName ]; };
				};

//				__DEBUG( __FILE__, "CONDITION __TRUE__ > _arg", _arg );

				// spawn the function defined in the condition

				if !( [ _taskMarker ] call BIS_fnc_taskCompleted ) then 
				{
					_arg spawn ( missionNamespace getVariable [ _conditonFnc, "T8C_fnc_debug" ]);
					
//					_fnc = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "function" );
				
				};

				// if condition is a win > communicate a rewards ( player / server )
				if (( toUpper _conditonName ) isEqualTo "WIN" AND _isFinal ) then 
				{
					remoteExec [ "T8SME_client_fnc_handleReward", 0 ];
					[] call T8SME_server_fnc_handleReward;
				};
				
				_x set [ 3, true ];
			};
		};
		
		if ( _isFinal AND {( typeName _conditonFnc ) isEqualTo ( typeName true )} AND {[ _taskMarker ] call BIS_fnc_taskCompleted } AND { !( _taskMarker in _allTasks )}) then { _allTasks pushBack _taskMarker; };
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
	
	
	// handle mission vehicles
	[] call T8SME_server_fnc_handleVehicles;
};


