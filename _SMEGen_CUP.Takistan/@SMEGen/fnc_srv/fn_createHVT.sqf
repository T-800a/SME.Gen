/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createHVT.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Reutns:		Object
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

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
_missionSideN	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8SME_param_enemyFaction >> "spawnUnitsSide" );

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
	
	if (( _nb distance2D _this ) > 500 ) exitWith 
	{
//		[( format [ "%1_%2_%3", _nb, random time, random time]), ( getPos _nb ), str ( _nb distance2D _this ), [1,1], 0, "ICON", "mil_circle", "ColorPink", 1 ] call T8SME_server_fnc_createMarker;
		__DEBUG( __FILE__, "_findBuildingPos: ABORT", ( _nb distance2D _this ) );
		[]
	};
	
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

__DEBUG( __FILE__, "_building", _building );

if ( _noBuilding ) then 
{
	private [ "_objPos", "_relPos" ];
	
	_objPos = [];
	_objPos = [ _pos, _range, 1 ] call T8SME_server_fnc_findObjectivePositions;
	__DEBUG( __FILE__, "_objPos", _objPos );
	if ( _objPos isEqualTo [] ) then { _objPos = [ _pos, _range ] call T8SME_server_fnc_findObjectivePos; __DEBUG( __FILE__, "_objPos", _objPos ); };

	_campBuilding	= [ _objPos select 0 ] call T8SME_server_fnc_createSmallCamp;
	_building		= _campBuilding call _findBuildingPos;
};

__DEBUG( __FILE__, "_building", _building );

_n = ( count ( _building select 0 )) - 2;
__DEBUG( __FILE__, "_n", _n );

if ( 9 < _n ) then { _n = 9; };
for "_i" from 1 to _n do { _vehicleArray pushBack _typeGuard; };

_finalArray append _vehicleArray;
_finalArray = [ _finalArray ] call T8SME_server_fnc_buildUnitArray;

__DEBUG( __FILE__, "_finalArray", _finalArray );

_spawnPos	= [ _pos, 200 ] call T8SME_server_fnc_findObjectivePos;
_group		= [ _spawnPos, _missionSide, _finalArray ] call BIS_fnc_spawnGroup;
_units		= ( units _group );

__SetOVAR(( _building select 1 ),"occupied",true);

{
	// _x disableAI "MOVE";
	_x forceSpeed 0;
	_x setPosATL (( _building select 0 ) select _forEachIndex );
	_x setDir ( random 360 );
	_x setDir (([ (( _building select 0 ) select _forEachIndex ), ( _building select 1 ) ] call BIS_fnc_dirTo ) + 180 );
	
	private [ "_c" ];
	_c = [ _typeHVT, "units" ] call T8SME_server_fnc_getVehicleClass;
	if ( typeOf _x isEqualTo _c ) then { _officer = _x; };
} forEach _units;

{ _x addCuratorEditableObjects [ _units, true ]; false } count allCurators;
T8SME_server_var_arrayCleanup pushBack _units;

__DEBUG( __FILE__, "_officer", _units );

// Return
_officer
