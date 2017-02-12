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

params [
	[ "_returnSite", false, [true]],
	[ "_whitListType", "any", [""]]
];

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


// max distance for first set of sites (7500m)
if ( T8SME_server_var_firstSite ) then
{
	T8SME_server_var_firstSite = false;
	private _tempSites = [];
	
	{
		private _sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _x >> "position" );
		if (( _sitePos distance2D mission_homebase ) < 5000 ) then { _tempSites pushBack _x; };
		
		false
	} count _arraySites;
	
	_arraySites = _tempSites;
};


_arrayShuff = [ _arraySites ] call T8SME_server_fnc_shuffleArray;	
__DEBUG( __FILE__, "_arrayShuff", _arrayShuff );

_players = if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

while {( count _arraySitesUsed ) < _amountSites } do
{
	__DEBUG( __FILE__, "MAIN WHILE", "___" );
	private [ "_first", "_firstSitePos", "_firstSiteType", "_siteMaxDist" ];
	
	_siteMaxDist = T8SME_param_sitesMinDist + 1500;
	
	// build useable sites
	{
		private _site		= _x;
		private _sitePos	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		private _siteType	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "type" );
		
		if ( _whitListType isEqualTo "any" ) then
		{
			if ( !( _site in T8SME_server_var_arraySitesBlacklist ) AND {!( _site in _arraySitesFree )} AND {({( _sitePos distance2D ( getPos _x )) < 600 } count _players ) < 1 }) then { _arraySitesFree pushBack _site; };
		} else {
			if ( !( _site in T8SME_server_var_arraySitesBlacklist ) AND { _siteType isEqualTo _whitListType }  AND {!( _site in _arraySitesFree )} AND {({( _sitePos distance2D ( getPos _x )) < 600 } count _players ) < 1 }) then { _arraySitesFree pushBack _site; };
		};

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
		private _site = _x;
		private _sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		private _siteType = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "type" );

		if (
			!( _site in _arraySitesUsed )
			AND {( _sitePos distance2D _firstSitePos ) < _siteMaxDist }
			AND { !(_firstSiteType isEqualTo _siteType )}
			AND {({( _sitePos distance2D getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _x >> "position" )) < T8SME_param_sitesMinDist } count _arraySitesUsed ) < 1 }
		) then { _arraySitesUsed pushBack _site; };
		
		false
	} count _arraySitesFree; 
	
	__DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );
	
	// worst case
	if (( count _arraySitesUsed ) < _amountSites ) then
	{
		__DEBUG( __FILE__, "_arraySitesUsed", "____________EXTENDET WAIT" );
		[ 1, 5, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 
		_siteMaxDist = _siteMaxDist + 1000;
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
