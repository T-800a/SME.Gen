/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_arraySites", "_arrayTypes", "_arraySitesUsed" ];

waitUntil { !isNil "T8U_var_InitDONE" };

if ( isnil "T8RMG_fnc_checkFlatGround" )	then { T8RMG_fnc_checkFlatGround	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_checkFlatGround.sqf" ); };
if ( isnil "T8RMG_fnc_checkOutside" )		then { T8RMG_fnc_checkOutside		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_checkOutside.sqf" ); };
if ( isnil "T8RMG_fnc_cleanUP" )			then { T8RMG_fnc_cleanUP			= compile preProcessFileLineNumbers ( "@randomMission\f\fn_cleanUP.sqf" ); };
if ( isnil "T8RMG_fnc_createMarker" )		then { T8RMG_fnc_createMarker		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createMarker.sqf" ); };
if ( isnil "T8RMG_fnc_createAO" )			then { T8RMG_fnc_createAO			= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createAO.sqf" ); };
if ( isnil "T8RMG_fnc_createConvoy" )		then { T8RMG_fnc_createConvoy		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createConvoy.sqf" ); };
if ( isnil "T8RMG_fnc_createAmmoDump" )		then { T8RMG_fnc_createAmmoDump		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createAmmoDump.sqf" ); };
if ( isnil "T8RMG_fnc_createFuelDump" )		then { T8RMG_fnc_createFuelDump		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createFuelDump.sqf" ); };
if ( isnil "T8RMG_fnc_createRoadblock" )	then { T8RMG_fnc_createRoadblock	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createRoadblock.sqf" ); };
if ( isnil "T8RMG_fnc_createMortarPos" )	then { T8RMG_fnc_createMortarPos	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_createMortarPos.sqf" ); };
if ( isnil "T8RMG_fnc_findObjectivePos" )	then { T8RMG_fnc_findObjectivePos	= compile preProcessFileLineNumbers ( "@randomMission\f\fn_findObjectivePos.sqf" ); };
if ( isnil "T8RMG_fnc_handleReward" )		then { T8RMG_fnc_handleReward		= compile preProcessFileLineNumbers ( "@randomMission\f\fn_handleReward.sqf" ); };

// for temp testing
if ( isnil "T8RMG_fnc_testFnc" )			then { T8RMG_fnc_testFnc			= compile preProcessFileLineNumbers ( "@randomMission\f\fn_testFnc.sqf" ); };


T8RMG_var_amountSites		= getNumber	( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnedSitesCount" );
T8RMG_var_arraySites		= [];
T8RMG_var_arrayCleanup		= [];
T8RMG_var_arrayTypes		= [];
T8RMG_var_checkMissions		= [];

if ( isNil "T8RMG_var_arraySitesBlacklist" ) then { T8RMG_var_arraySitesBlacklist = []; };
if ( isNil "T8RMG_var_objectReward01" ) then { T8RMG_var_objectReward01 = objNull; };
if ( isNil "T8RMG_var_objectReward02" ) then { T8RMG_var_objectReward02 = objNull; };
if ( isNil "T8RMG_var_objectReward03" ) then { T8RMG_var_objectReward03 = objNull; };

true spawn
{
	while { true } do
	{
		sleep 15;
		
		private [ "_allTasksDone" ];
		_allTasksDone = 0;

		{
			if !( [ _x select 0 ] call BIS_fnc_taskCompleted ) then 
			{
				if ( call compile ( _x select 1 )) then 
				{
					[ _x select 0, "SUCCEEDED", true ] call BIS_fnc_taskSetState;
				};
			} else { _allTasksDone = _allTasksDone + 1; };
			
			false
		} count T8RMG_var_checkMissions;
		
		_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> _allTasksDone >> %2", ( round diag_fps ), _allTasksDone ]; conFile( _ftxt );
		
		if ( T8RMG_var_amountSites isEqualTo _allTasksDone ) exitWith { [] spawn T8RMG_fnc_cleanUP; [] spawn T8RMG_fnc_handleReward; };
	};
};

_arraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" );
_arrayTypes = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" );

{ T8RMG_var_arraySites pushback ( configName _x ); false } count _arraySites;
{ T8RMG_var_arrayTypes pushback ( configName _x ); false } count _arrayTypes;

_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> T8RMG_var_arraySites >> %2", ( round diag_fps ), T8RMG_var_arraySites ]; conFile( _ftxt );
_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> T8RMG_var_arraySitesBlacklist >> %2", ( round diag_fps ), T8RMG_var_arraySitesBlacklist ]; conFile( _ftxt );

T8RMG_var_arraySites = T8RMG_var_arraySites - T8RMG_var_arraySitesBlacklist;

_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> NEW: T8RMG_var_arraySites >> %2", ( round diag_fps ), T8RMG_var_arraySites ]; conFile( _ftxt );

_arraySitesUsed = T8RMG_var_arraySites call BIS_fnc_arrayShuffle;
_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> _arraySitesUsed >> %2", ( round diag_fps ), _arraySitesUsed ]; conFile( _ftxt );

_arraySitesUsed resize T8RMG_var_amountSites;
T8RMG_var_arraySitesBlacklist = _arraySitesUsed;
_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> _arraySitesUsed >> %2", ( round diag_fps ), _arraySitesUsed ]; conFile( _ftxt );
{
	_x call T8RMG_fnc_createAO;
	_ftxt = format [ "T8RMG >> init.sqf >>>>> %1 >> _x >> %2", ( round diag_fps ), _x ]; conFile( _ftxt );
	
	false
} count _arraySitesUsed;

T8RMG_var_INITDONE = true;
publicVariable "T8RMG_var_INITDONE";
