/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createAttack.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#include <..\MACRO.hpp>

private [	"_attackMarkerPos", "_objectPos", "_n", "_players", "_markerName", "_spawnMarker", "_inf", "_arrayGroups", "_configArrayGroups", 
			"_spawnedUnits", "_modPlayer", "_modGroup", "_missionSide", "_missionSideN" ];

params [ "_attackMarker" ];

_attackMarkerPos	= getMarkerPos _attackMarker;
_objectPos			= [];
_n					= 1;
_players			= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

__DEBUG( __FILE__, "_this", _this );

while { count _objectPos < 1 } do
{
	private [ "_relPos", "_tmpPos" ];
	
	_relPos = [ _attackMarkerPos, 1100, random 360 ] call BIS_fnc_relPos;
	_tmpPos = _relPos findEmptyPosition [ 5, 50, "Land_VR_Block_02_F" ];
	
	if ( count _tmpPos > 1 AND { !surfaceIsWater _tmpPos } AND { ({( _tmpPos distance ( getPos _x )) < 900 } count _players ) < 1 } ) then { _objectPos = _tmpPos; };
	if ( _n > 100 ) exitWith {};
	_n = _n + 1;
};


_markerName = format [ "%2_attack_%2", _attackMarker, diag_tickTime ];
_spawnMarker = [ _markerName, _objectPos, "", [1,1], 0, "ICON", "empty" ] call T8RMG_fnc_createMarker;
T8RMG_var_arrayCleanup pushBack _spawnMarker;



// build unit array
_inf			= [];
_arrayGroups	= [];
_modPlayer		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModPlayer" );
_modGroup		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModGroup" );
_configArrayGroups = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "attack" >> "groups" );
{ _arrayGroups pushback ( configName _x ); false } count _configArrayGroups;

// get the faction
_missionSideN	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8RMG_var_enemyFaction >> "spawnUnitsSide" );

switch ( _missionSideN ) do
{
	case 0 :	{ _missionSide = EAST };
	case 1 :	{ _missionSide = WEST };
	case 2 :	{ _missionSide = INDEPENDENT };
	default		{ _missionSide = EAST };
};

__DEBUG( __FILE__, "_arrayGroups", _arrayGroups );

{
	private [ "_task", "_units", "_unitsFiller", "_subArray" ];
	_task			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "attack" >> "groups" >> _x >> "task" );
	_units			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "attack" >> "groups" >> _x >> "units" );
	_unitsFiller	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "attack" >> "groups" >> _x >> "unitsFiller" );
	
	// if filler units available adjust groupsize on playercount
	if ( count _unitsFiller > 0 ) then 
	{
		private [ "_playerCount", "_groupCount", "_mod" ];
		_playerCount = if ( isMultiplayer ) then { count allPlayers } else { count ( units ( group player ))};
		_groupCount = count _units;
		_mod = ceil(((( _playerCount /_modPlayer ) * 2 ) * (( _groupCount / _modGroup ) * 2 )) * 2 );
		
		__DEBUG( __FILE__, "MOD GROUP SIZE: _playerCount", _playerCount );
		__DEBUG( __FILE__, "MOD GROUP SIZE: _modPlayer", _modPlayer );
		__DEBUG( __FILE__, "MOD GROUP SIZE: _groupCount", _groupCount );
		__DEBUG( __FILE__, "MOD GROUP SIZE: _modGroup", _modGroup );
		__DEBUG( __FILE__, "MOD GROUP SIZE: _mod", _mod );
		
		for "_i" from 1 to _mod do
		{
			if ( _i > 32 ) exitWith {};
			private [ "_filler" ];
			_filler = _unitsFiller call BIS_fnc_selectRandom;
			_units pushBack _filler;
			__DEBUG( __FILE__, "ADD UNIT TO GROUP", _filler );
		};
		
		__DEBUG( __FILE__, "____________NEW GROUP SIZE: _groupCount", count _units );
	};
	
	_units = [ _units ] call T8RMG_fnc_buildUnitArray;
	_subArray = [ [ _units, _spawnMarker, _missionSide ], [ "ATTACK", _attackMarker ]];
	
	_inf pushBack _subArray;

	false
} count _arrayGroups;

// spawn the units
_spawnedUnits = [ _inf ] call T8U_fnc_Spawn;
T8RMG_var_arrayCleanup pushBack _spawnedUnits;

// Return
true
