/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_handleConditions.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	T8RMG_var_arrayConditions  ->  [[ _x, _siteMkr, _con, _fnc ], [], ... ]
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );


while { true } do
{
	sleep 10;
	
	private [ "_allTasksDone" ];
	_allTasksDone = 0;

	{
		DEBUG( __FILE__, "T8RMG_var_arrayConditions > _x", _x );
		
		if ( count _x > 0 ) then
		{
			private [ "_task" ];
			_task = ( _x select 1 );
			
			if ( call compile ( _x select 2 )) then 
			{
				private [ "_arg" ];
				switch ( _x select 0 ) do 
				{ 
					case "win":		{ _arg = [ _task, "SUCCEEDED", true ]; };
					case "fail":	{ _arg = [ _task, "FAILED", true ]; };
					default			{ _arg = [ _task ]; };
				};
				
				_arg spawn missionNamespace getVariable [ ( _x select 3 ), "T8RMG_fnc_debug" ];
				T8RMG_var_arrayConditions set [ _forEachIndex, []];
			};
			
			if ( [ _task ] call BIS_fnc_taskCompleted ) then { _allTasksDone = _allTasksDone + 1; };
		};

	} forEach T8RMG_var_arrayConditions;
	
	DEBUG( __FILE__, "_allTasksDone", _allTasksDone );
	if ( T8RMG_var_amountSites isEqualTo _allTasksDone ) exitWith { [] spawn T8RMG_fnc_cleanUP; [] spawn T8RMG_fnc_handleReward; };
};


