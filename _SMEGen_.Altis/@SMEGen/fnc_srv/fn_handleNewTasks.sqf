/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleNewTasks.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [ "_configArraySites", "_arraySites", "_arrayShuff", "_arraySitesAvailable", "_arraySitesFree", "_arraySitesUsed", "_amountSites", "_players" ];

params [[ "_returnSite", false, [true]]];

_arraySites			= [];
_arraySitesFree		= [];
_arraySitesUsed		= [];

_amountSites = if ( _returnSite ) then { 1 } else { T8SME_param_amountSites; };

_configArraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName );

{ _arraySites pushback ( configName _x ); false } count _configArraySites;

__DEBUG( __FILE__, "T8SME_server_var_arraySitesBlacklist", T8SME_server_var_arraySitesBlacklist );
__DEBUG( __FILE__, "_amountSites", _amountSites );
__DEBUG( __FILE__, "_arraySites", _arraySites );

__DEBUG( __FILE__, "_arraySites", _arraySites );

_arrayShuff = [ _arraySites ] call T8SME_server_fnc_shuffleArray;	
__DEBUG( __FILE__, "_arrayShuff", _arrayShuff );

_players = if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

while {( count _arraySitesUsed ) < _amountSites } do
{
	__DEBUG( __FILE__, "MAIN WHILE", "___" );
	private [ "_first", "_firstSitePos", "_firstSiteType", "_siteMaxDist" ];
	
	_siteMaxDist = 1500;
	
	// build useable sites
	{
		private [ "_site", "_sitePos" ];
		_site = _x;
		_sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		
		if ( !( _site in T8SME_server_var_arraySitesBlacklist ) AND {!( _site in _arraySitesFree )} AND {({( _sitePos distance ( getPos _x )) < 600 } count _players ) < 1 }) then { _arraySitesFree pushBack _site; };
		
		false
	} count _arrayShuff; 

	__DEBUG( __FILE__, "_arraySitesFree", _arraySitesFree );
	
	_first = selectRandom _arraySitesFree;
	_arraySitesFree deleteAt ( _arraySitesFree find _first );
	_arraySitesUsed pushBack _first;

	_firstSitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _first >> "position" );
	_firstSiteType = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _first >> "type" );
	
	__DEBUG( __FILE__, "_arraySitesFree", _arraySitesFree );
	__DEBUG( __FILE__, "_first", _first );
	__DEBUG( __FILE__, "_firstSitePos", _firstSitePos );
	
	
	{
		private [ "_site", "_sitePos", "_firstType" ];
		_site = _x;
		_sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		_firstType = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "type" );
		
		if ( !( _site in _arraySitesUsed ) AND {( _sitePos distance _firstSitePos ) < _siteMaxDist } AND { !(_firstSiteType isEqualTo _firstType )}) then { _arraySitesUsed pushBack _site; };
		
		false
	} count _arraySitesFree; 
	
	__DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );
	
	// worst case
	if (( count _arraySitesUsed ) < _amountSites ) then
	{
		__DEBUG( __FILE__, "_arraySitesUsed", "____________EXTENDET WAIT" );
		[ 1, 5, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 
		_siteMaxDist = _siteMaxDist + 500;
		sleep 20;
	};
};



// resize to defined (in config) amount of targets
_arraySitesUsed resize _amountSites;

if (( count T8SME_server_var_arraySitesBlacklist ) > (( count _arrayShuff ) / 3 )) then { T8SME_server_var_arraySitesBlacklist = []; };

__DEBUG( __FILE__, "T8SME_server_var_arraySitesBlacklist", T8SME_server_var_arraySitesBlacklist );
T8SME_server_var_arraySitesBlacklist append _arraySitesUsed;
__DEBUG( __FILE__, "T8SME_server_var_arraySitesBlacklist", T8SME_server_var_arraySitesBlacklist );

// return site if _returnSite (used for multistage objectives follow ups)
if ( _returnSite ) exitWith {( _arraySitesUsed select 0 )}; 

{
	[ _x ] call T8SME_server_fnc_createAO;
	__DEBUG( __FILE__, "_arraySitesUsed > _x", _x );
	
	false
} count _arraySitesUsed;

if ( T8SME_param_allowVehiclePatrols ) then { [ _arraySitesUsed ] call T8SME_server_fnc_createVehiclePatrols; };

// return
true
