/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createHVT.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

#include <..\MACRO.hpp>

private [	"_findBuildingPos", "_site", "_typeHVT", "_typeGuard", "_building", "_finalArray", "_vehicleArray", "_spawnPos", "_group", 
			"_units", "_missionSide", "_missionSideN", "_officer", "_i" ];

params [ "_pos", "_range" ];

__DEBUG( __FILE__, "INIT > _this", _this );

_typeHVT			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "killHVT" >> "typeHVT" );
_typeGuard			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> "killHVT" >> "typeGuard" );

_finalArray			= [ _typeHVT ];
_vehicleArray		= [];
_building			= [];
_noBuilding			= false;
_officer			= objNull;
_i					= 0;

// get the faction
_missionSideN	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8RMG_var_enemyFaction >> "spawnUnitsSide" );

switch ( _missionSideN ) do
{
	case 0 :	{ _missionSide = EAST };
	case 1 :	{ _missionSide = WEST };
	case 2 :	{ _missionSide = INDEPENDENT };
	default		{ _missionSide = EAST };
};

// find building with min 6 pos
_findBuildingPos =
{
	private [ "_nb", "_tmpArray", "_loop", "_n", "_return" ];
	
	if (( typeName _this ) isEqualTo ( typeName [] ))		then { _nb = nearestBuilding _this; };
	if (( typeName _this ) isEqualTo ( typeName objNull ))	then { _nb = _this; };
	
	__DEBUG( __FILE__, "call _findBuildingPos > _nb", _nb );
	
	_tmpArray	= [];
	_loop		= true;
	_n			= 0;
	_return		= [];
		
	while { _loop } do
	{
		private [ "_p" ];
		_p = ( _nb buildingPos _n );
		__DEBUG( __FILE__, "call _findBuildingPos > buildingPos > _p", _p );		
		if (!( _p isEqualTo [0,0,0] )) then 
		{
			_tmpArray pushBack _p;
		} else {
			_loop = false;
		}; 
		_n = _n + 1;
	};
	
	_tmpArray = _tmpArray call BIS_fnc_arrayShuffle;
	_return = if ( count _tmpArray > 5 ) then { [ _tmpArray, _nb ] } else { _return };
	
	_nb setVariable [ "occupied", true ];
	
	__DEBUG( __FILE__, "call _findBuildingPos > _return", _return );
	_return
};

while {( count _building ) < 1 AND ! _noBuilding } do
{
	private [ "_p" ];
	_p			= [ _pos , random _range, random 360 ] call BIS_fnc_relPos;
	_building	= _p call _findBuildingPos;
	
	_i = _i + 1;
	if ( _i > 200 ) then { _noBuilding = true; };
};


if ( _noBuilding ) then 
{
	private [ "_objPos", "_relPos" ];
	
	_objPos = [];
	
	while { count _objPos < 2 } do 
	{
		_relPos = [ _sitePos, ( _range * 0.25 ), random 360 ] call BIS_fnc_relPos;
		_objPos = [ _relPos, _range, 1 ] call T8RMG_fnc_findObjectivePositions;
	};

	_campBuilding	= [ _objPos select 0 ] call T8RMG_fnc_createSmallCamp;
	_building		= _campBuilding call _findBuildingPos;
};


__DEBUG( __FILE__, "_building", _building );

_n = ( count ( _building select 0 )) - 2;
__DEBUG( __FILE__, "_n", _n );

if ( 9 < _n ) then { _n = 9; };
for "_i" from 1 to _n do { _vehicleArray pushBack _typeGuard; };

_finalArray append _vehicleArray;
_finalArray = [ _finalArray ] call T8RMG_fnc_buildUnitArray;

__DEBUG( __FILE__, "_finalArray", _finalArray );

_spawnPos	= [ _pos, 200 ] call T8RMG_fnc_findObjectivePos;
_group		= [ _spawnPos, _missionSide, _finalArray ] call BIS_fnc_spawnGroup;
_units		= ( units _group );

{
	// _x disableAI "MOVE";
	_x forceSpeed 0;
	_x setPosATL (( _building select 0 ) select _forEachIndex );
	_x setDir ( random 360 );
	_x setDir (([ (( _building select 0 ) select _forEachIndex ), ( _building select 1 ) ] call BIS_fnc_dirTo ) + 180 );
	
	private [ "_c" ];
	_c = [ _typeHVT, "units" ] call T8RMG_fnc_getVehicleClass;
	if ( typeOf _x isEqualTo _c ) then { _officer = _x; };
} forEach _units;

{ _x addCuratorEditableObjects [ _units, true ]; false } count allCurators;
T8RMG_var_arrayCleanup pushBack _units;

__DEBUG( __FILE__, "_officer", _units );

// Return
_officer
