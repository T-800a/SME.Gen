/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_handleConditions.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	T8RMG_var_arrayConditions  ->  [[ _x, _siteMkr, _con, _fnc ], [], ... ]
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_baseTime", "_cleanDelay", "_spawnDelay" ];
_baseTime = if ( isMultiplayer ) then { 60 } else { 1 };
_cleanDelay = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionCleanDelay" );
_spawnDelay = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionSpawnDelay" );


while { true } do
{
	sleep 10;
	
	private [ "_allTasksDone" ];
	_allTasksDone = 0;

	{
		DEBUG( __FILE__, "T8RMG_var_arrayConditions > _x", _x );
		DEBUG( __FILE__, "T8RMG_var_arrayConditions > _x", count _x );
		
		if !(( typeName ( _x select 0 )) isEqualTo ( typeName true )) then
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
				
				DEBUG( __FILE__, "CONDITION __TRUE__ > _arg", _arg );
				
				// spawn the function defined in the condition
				_arg spawn ( missionNamespace getVariable [ ( _x select 3 ), "T8RMG_fnc_debug" ]);
				
				// if condition is a win > communicate a !player! reward / levelup
				if ( toUpper ( _x select 0 ) isEqualTo "WIN" ) then { remoteExec [ "T8C_fnc_handleReward", -2 ]; };
				
				_x set [ 0, true ];
			};
		};

		DEBUG( __FILE__, "T8RMG_var_arrayConditions > Task:", ( _x select 1 ) );
		if ( [ ( _x select 1 ) ] call BIS_fnc_taskCompleted ) then { _allTasksDone = _allTasksDone + 1; };

	} forEach T8RMG_var_arrayConditions;
	DEBUG( __FILE__, "_allTasksDone", _allTasksDone );
	
	
	// start new tasks if needed	
	if ( T8RMG_var_amountSites isEqualTo _allTasksDone ) then 
	{
		// handle rewards
		[] call T8RMG_fnc_handleReward;

		[ 1, 3, 0 ] remoteExec [ "T8C_fnc_hintProcess", -2 ]; 

		sleep ( _cleanDelay * _baseTime );

		// clean up all stuff
		[] call T8RMG_fnc_cleanUP;

		[ 1, 4, 0 ] remoteExec [ "T8C_fnc_hintProcess", -2 ]; 

		sleep ( _spawnDelay * _baseTime );

		// start new tasks set
		[] call T8RMG_fnc_handleNewTasks;
	};
};


