/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createVehiclePatrols.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private [	"_missionType", "_markerName", "_spawnMarker", "_inf", "_arrayGroups", "_configArrayGroups", 
			"_spawnedUnits", "_modPlayer", "_modGroup", "_missionSide", "_missionSideN" ];

params [[ "_sites", [], [[]]]];

__DEBUG( __FILE__, "INIT", _this );

if ( count _sites < 1 ) exitWith { false };

private _markerArray	= [];
private _players		= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

{
	private _sitePos	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _x >> "position" );
	private _siteSize	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _x >> "size" );
	private _siteAngle	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _x >> "angle" );
	private _marker		= format [ "%1_veh", ( getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _x >> "marker" )) ];
	[ _marker, _sitePos, "", _siteSize, _siteAngle, "ELLIPSE", "empty", "ColorBlue", 0.2 ] call T8SME_server_fnc_createMarker;

	_markerArray pushBack _marker;
	false
} count _sites;

__DEBUG( __FILE__, "_markerArray", _markerArray );

switch ( true ) do
{
	case (( count _players ) <= 5 ):								{ _missionType = "vehicle_patrol_small"; };
	case (( count _players ) > 5 AND ( count _players ) <= 10 ):	{ _missionType = "vehicle_patrol_medium"; };
	case (( count _players ) > 10 ):								{ _missionType = "vehicle_patrol_heavy"; };
	default															{ _missionType = "vehicle_patrol_small"; };
};


// build unit array
_inf			= [];
_arrayGroups	= [];
_modPlayer		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModPlayer" );
_modGroup		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModGroup" );
_configArrayGroups = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _missionType >> "groups" );
{ _arrayGroups pushback ( configName _x ); false } count _configArrayGroups;

// get the faction
_missionSideN	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8SME_param_enemyFaction >> "spawnUnitsSide" );

switch ( _missionSideN ) do
{
	case 0 :	{ _missionSide = EAST };
	case 1 :	{ _missionSide = WEST };
	case 2 :	{ _missionSide = INDEPENDENT };
	default		{ _missionSide = EAST };
};

__DEBUG( __FILE__, "_arrayGroups", _arrayGroups );

{
	private [ "_task", "_units", "_filler", "_subArray", "_vehicleGroup" ];
	_task			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _missionType >> "groups" >> _x >> "task" );
	_units			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _missionType >> "groups" >> _x >> "units" );
	_filler			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _missionType >> "groups" >> _x >> "unitsFiller" );
	_vehicleGroup	= [ _missionType, _x ] call T8SME_server_fnc_getVehicleGroup;

	_units = [ _units, _filler ] call T8SME_server_fnc_fillUnitArray;
	_units = [ _units ] call T8SME_server_fnc_buildUnitArray;
	
	_subArray = [ [ _units, _markerArray, _missionSide, _vehicleGroup ], [ _task ]];
	
	_inf pushBack _subArray;

	false
} count _arrayGroups;

// spawn the units
_spawnedUnits = [ _inf ] call T8U_fnc_Spawn;
T8SME_server_var_arrayCleanup pushBack _spawnedUnits;

// Return
true
