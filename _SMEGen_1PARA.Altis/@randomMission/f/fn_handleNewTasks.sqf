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

private [ "_configArraySites", "_arraySites", "_arraySitesAvailable", "_arraySitesUsed", "_players" ];

_configArraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName );

{ _arraySites pushback ( configName _x ); false } count _configArraySites;
DEBUG( __FILE__, "_arraySites", _arraySites );
DEBUG( __FILE__, "T8RMG_var_arraySitesBlacklist", T8RMG_var_arraySitesBlacklist );

_arraySites = _arraySites - T8RMG_var_arraySitesBlacklist;
DEBUG( __FILE__, "_arraySites", _arraySites );

_arraySitesUsed = [];
_arraySites = _arraySites call BIS_fnc_arrayShuffle;					DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );
_players = if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

while {( count _arraySitesUsed ) < T8RMG_var_amountSites } do
{
	// build useable sites
	{
		private [ "_site", "_sitePos" ];
		_site = _x;
		_sitePos = getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
		
		if ( !( _site in _arraySitesUsed ) AND { ({( _sitePos distance ( getPos _x )) < 600 } count _players ) < 1 }) then { _arraySitesUsed pushBack _site; };
		
		false
	} count _arraySites; 

	DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );
	
	// worst case
	if (( count _arraySitesUsed ) < T8RMG_var_amountSites ) then
	{
		DEBUG( __FILE__, "_arraySitesUsed", "____________EXTENDET WAIT" );
		[ 1, 5, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; 
		sleep 30;
	};
};



// resize to defined (in config) amount of targets
_arraySitesUsed resize T8RMG_var_amountSites;
T8RMG_var_arraySitesBlacklist = _arraySitesUsed;									DEBUG( __FILE__, "_arraySitesUsed", _arraySitesUsed );

{
	_x call T8RMG_fnc_createAO;
	DEBUG( __FILE__, "_arraySitesUsed > _x", _x );
	
	false
} count _arraySitesUsed;
