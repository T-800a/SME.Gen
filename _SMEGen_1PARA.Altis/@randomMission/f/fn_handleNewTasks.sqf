/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_handleNewTasks.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug

// );


T8RMG_var_arrayConditions	= [];
T8RMG_var_arraySites		= [];
T8RMG_var_arrayTypes		= [];

private [ "_arraySites", "_arrayTypes", "_arraySitesUsed" ];

_arraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" );
_arrayTypes = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" );

{ T8RMG_var_arraySites pushback ( configName _x ); false } count _arraySites;
{ T8RMG_var_arrayTypes pushback ( configName _x ); false } count _arrayTypes;

DEBUG( __FILE__, "T8RMG_var_arraySites", T8RMG_var_arraySites );
DEBUG( __FILE__, "T8RMG_var_arraySitesBlacklist", T8RMG_var_arraySitesBlacklist );

T8RMG_var_arraySites = T8RMG_var_arraySites - T8RMG_var_arraySitesBlacklist;   	 	DEBUG( __FILE__, "T8RMG_var_arraySites", T8RMG_var_arraySites );

_arraySitesUsed = T8RMG_var_arraySites call BIS_fnc_arrayShuffle;					DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );

_arraySitesUsed resize T8RMG_var_amountSites;
T8RMG_var_arraySitesBlacklist = _arraySitesUsed;									DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );

{
	_x call T8RMG_fnc_createAO;
	DEBUG( __FILE__, "_x", _x );
	
	false
} count _arraySitesUsed;
