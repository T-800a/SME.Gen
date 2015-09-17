/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_handleNewTasks.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_configArraySites", "_arraySites", "_arrayShuff", "_arraySitesAvailable", "_arraySitesFree", "_arraySitesUsed", "_players" ];

_arraySites			= [];
_arraySitesFree		= [];
_arraySitesUsed		= [];

_configArraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName );

{ _arraySites pushback ( configName _x ); false } count _configArraySites;

DEBUG( __FILE__, "T8RMG_var_arraySitesBlacklist", T8RMG_var_arraySitesBlacklist );
DEBUG( __FILE__, "T8RMG_var_amountSites", T8RMG_var_amountSites );
DEBUG( __FILE__, "_arraySites", _arraySites );

_arraySites = _arraySites - T8RMG_var_arraySitesBlacklist;
DEBUG( __FILE__, "_arraySites", _arraySites );

_arrayShuff = _arraySites call BIS_fnc_arrayShuffle;	
DEBUG( __FILE__, "_arrayShuff", _arrayShuff );

_players = if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

while {( count _arraySitesUsed ) < T8RMG_var_amountSites } do
{
	DEBUG( __FILE__, "MAIN WHILE", "___" );
	private [ "_first", "_firstSitePos", "_firstSiteType", "_siteMaxDist" ];
	
	_siteMaxDist = 1750;
	
	// build useable sites
	{
		private [ "_site", "_sitePos" ];
		_site = _x;
		_sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		
		if ( !( _site in _arraySitesFree ) AND {({( _sitePos distance ( getPos _x )) < 600 } count _players ) < 1 }) then { _arraySitesFree pushBack _site; };
		
		false
	} count _arrayShuff; 

	DEBUG( __FILE__, "_arraySitesFree", _arraySitesFree );
	
	_first = _arraySitesFree select 0;
	_arraySitesFree deleteAt 0;
	_arraySitesUsed pushBack _first;
	_firstSitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _first >> "position" );
	_firstSiteType = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _first >> "type" );
	
	DEBUG( __FILE__, "_arraySitesFree", _arraySitesFree );
	DEBUG( __FILE__, "_first", _first );
	DEBUG( __FILE__, "_firstSitePos", _firstSitePos );
	
	
	{
		private [ "_site", "_sitePos", "_firstType" ];
		_site = _x;
		_sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		_firstType = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "type" );
		
		if ( !( _site in _arraySitesUsed ) AND {( _sitePos distance _firstSitePos ) < _siteMaxDist } AND { !(_firstSiteType isEqualTo _firstType )}) then { _arraySitesUsed pushBack _site; };
		
		false
	} count _arraySitesFree; 
	
	DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );
	
	// worst case
	if (( count _arraySitesUsed ) < T8RMG_var_amountSites ) then
	{
		DEBUG( __FILE__, "_arraySitesUsed", "____________EXTENDET WAIT" );
		[ 1, 5, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 
		_siteMaxDist = _siteMaxDist + 1000;
		sleep 30;
	};
};



// resize to defined (in config) amount of targets
_arraySitesUsed resize T8RMG_var_amountSites;
T8RMG_var_arraySitesBlacklist = _arraySitesUsed;									DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );

{
	[ _x ] call T8RMG_fnc_createAO;
	DEBUG( __FILE__, "_arraySitesUsed > _x", _x );
	
	false
} count _arraySitesUsed;
