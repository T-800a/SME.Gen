/*
 =======================================================================================================================
	
	@server
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if ( !isServer ) exitWith {};


// build base via SQF (XCam export)
if ( worldName isEqualTo "Altis" ) then {
#include <sites\altis_mainbase.sqf>
};

if ( worldName isEqualTo "mske" ) then {
#include <sites\mske_mainbase.sqf>
};

T8S_var_initDONE = true;

// Remove DiscoBodies
addMissionEventHandler [ "HandleDisconnect", { _this spawn { sleep 2; deleteVehicle ( _this select 0 ); }; } ];


// register Units with Curators automatically
[] spawn 
{
	sleep 10;

	while { true } do
	{
		{
			private [ "_curator", "_registerd" ];
			_curator = _x;			
			_registerd = curatorEditableObjects _curator;
			{ 
				if !( _x in _registerd ) then { _curator addCuratorEditableObjects [ [ _x ], true ]; }; 
				false
			} count allUnits;	

			false
		} count allCurators;
		
		sleep 30;
	};
};
