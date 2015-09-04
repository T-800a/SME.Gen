/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createAO.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_return = "site" call T8RMG_fnc_createAO;
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [	"_site", "_type", "_configArrayGroups", "_arrayGroups", "_inf", "_siteMkr", "_sitePos", "_siteName", "_siteSize", "_siteAngle", "_typeDesc",
			"_typeTask", "_typeTaskShort", "_typeName", "_setTaskName", "_setTaskDesc", "_condSize", "_spawnedUnits", "_modPlayer", "_modGroup", "_conditions" ];

_site			= _this;
_inf			= [];
_arrayGroups	= [];

DEBUG( __FILE__, "INIT!", _this );
if ( _site isEqualTo "" ) exitWith { DEBUG( __FILE__, "_____ERROR!", "wrong_site" ); };

_siteMkr			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "marker" );
_sitePos			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "position" );
_siteName			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "name" );
_siteSize			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "size" );
_siteAngle			= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "angle" );
_siteAllowedTypes	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "allowedTypes" );
_type				= _siteAllowedTypes call BIS_fnc_selectRandom;

DEBUG( __FILE__, "SITE _siteMkr", _siteMkr );
DEBUG( __FILE__, "SITE _sitePos", _sitePos );
DEBUG( __FILE__, "SITE _siteName", _siteName );
DEBUG( __FILE__, "SITE _siteSize", _siteSize );
DEBUG( __FILE__, "SITE _siteAngle", _siteAngle );
DEBUG( __FILE__, "SELECTED _type", _type );

_typeTask		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "task" );
_typeTaskShort	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "taskShort" );
_typeName		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "name" );
_typeDesc		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "description" );

_modPlayer		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModPlayer" );
_modGroup		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModGroup" );

_setTaskName 	= format [ "%1: %2", _typeTaskShort, _siteName ];
_setTaskDesc 	= format [ "<t align = 'left' shadow = '1' size = '1.0'>Task: %1</t><br /><t align = 'left' shadow = '1' size = '0.8'>Location: %2</t><br /><br />%3", _typeTask, _siteName, _typeDesc ];

_condSize		= if (( _siteSize select 0 ) > ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };
_varName		= "NO_VAR_SET";

// create marker (local to server only)
[ _siteMkr, _sitePos, "", _siteSize, _siteAngle ] call T8RMG_fnc_createMarker;


// missionType specific stuff
switch ( _type ) do 
{ 
	case "convoy":
	{
		[ _sitePos, _siteAngle ] call T8RMG_fnc_createConvoy;
	};
	
	case "roadblock":
	{
		[ _sitePos, _siteAngle ] call T8RMG_fnc_createRoadblock;
	};
	
	case "mortars":
	{
		private [ "_range", "_obj01", "_obj02" ];
		_range = if (( _siteSize select 0 ) < ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };
		_obj01 = [( [ _sitePos, ( _range * 0.7 )] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createMortarPos;
		_obj02 = [( [ _sitePos, ( _range * 0.7 )] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createMortarPos;
		
		_varName = format [ "OBJECTIVE_mortars_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, [ _obj01, _obj02 ]];
	};
	
	case "resupplies":
	{
		private [ "_range", "_obj01", "_obj02" ];
		_range = if (( _siteSize select 0 ) < ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };
		_obj01 = [( [ _sitePos, ( _range * 0.7 )] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createFuelDump;
		_obj02 = [( [ _sitePos, ( _range * 0.7 )] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createAmmoDump;
		
		_varName = format [ "OBJECTIVE_resupplies_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, [ _obj01, _obj02 ]];
	};
	
	case "radiotower":
	{
		private [ "_obj" ];
		_obj = [ _sitePos ] call T8RMG_fnc_createRadioTower; 
		
		_varName = format [ "OBJECTIVE_radiotower_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "recoverUAV":
	{
		private [ "_obj" ];
		_obj = [ _sitePos ] call T8RMG_fnc_createRecoverUAV; 
		
		_varName = format [ "OBJECTIVE_recoverUAV_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	default {};
};

// build unit array
_configArrayGroups = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" );
{ _arrayGroups pushback ( configName _x ); false } count _configArrayGroups;

DEBUG( __FILE__, "_arrayGroups", _arrayGroups );

{
	private [ "_task", "_units", "_unitsFiller", "_subArray" ];
	_task			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "task" );
	_units			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "units" );
	_unitsFiller	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "unitsFiller" );
	
	// if filler units available adjust groupsize on playercount
	if ( count _unitsFiller > 0 ) then 
	{
		private [ "_playerCount", "_groupCount", "_mod" ];
		_playerCount = if ( isMultiplayer ) then { count allPlayers } else { count ( units ( group player ))};
		_groupCount = count _units;
		_mod = ceil(((( _playerCount /_modPlayer ) * 2 ) * (( _groupCount / _modGroup ) * 2 )) * 2 );
		
		DEBUG( __FILE__, "MOD GROUP SIZE: _playerCount", _playerCount );
		DEBUG( __FILE__, "MOD GROUP SIZE: _modPlayer", _modPlayer );
		DEBUG( __FILE__, "MOD GROUP SIZE: _groupCount", _groupCount );
		DEBUG( __FILE__, "MOD GROUP SIZE: _modGroup", _modGroup );
		DEBUG( __FILE__, "MOD GROUP SIZE: _mod", _mod );
		
		for "_i" from 1 to _mod do
		{
			if ( _i > 32 ) exitWith {};
			private [ "_filler" ];
			_filler = _unitsFiller call BIS_fnc_selectRandom;
			_units pushBack _filler;
			DEBUG( __FILE__, "ADD UNIT TO GROUP", _filler );
		};
		
		DEBUG( __FILE__, "____________NEW GROUP SIZE: _groupCount", count _units );
	};
	
	if ( _task isEqualTo "GARRISON" OR _task isEqualTo "DEFEND" OR _task isEqualTo "DEFEND_BASE" ) then
	{
		_subArray = [ [ _units, getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "marker" ) ], [ _task ], [ true, false, false ] ];
	} else {
		_subArray = [ [ _units, getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "marker" ) ], [ _task ] ];
	};
	
	_inf pushBack _subArray;

	false
} count _arrayGroups;

// spawn the units
_spawnedUnits = [ _inf ] call T8U_fnc_Spawn;
T8RMG_var_arrayCleanup pushBack _spawnedUnits;


// create the task
[
	_siteMkr,
	true,
	[ _setTaskDesc, _setTaskName, "" ],
	getMarkerPos ( _siteMkr ),
	"CREATED", 
	10,
	true,
	true, 
	"Attack",
	true	
] call BIS_fnc_setTask; 


// add conditions to handle
_conditions = "true" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" );

{
	private [ "_name", "_con", "_newcon", "_fnc" ];
	
	_name = configName ( _x );
	_newcon = [];
	_con = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "condition" );
	_fnc = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "function" );
	
	_con = _con splitString "#";
	
	{
		_newcon set [ _forEachIndex, _x ];
		if ( _x isEqualTo "__MARKER_NAME__" )	then { _newcon set [ _forEachIndex, _siteMkr ]; };
		if ( _x isEqualTo "__MARKER_SIZE__" )	then { _newcon set [ _forEachIndex, _condSize ]; };
		if ( _x isEqualTo "__VARIABLE__" )		then { _newcon set [ _forEachIndex, _varName ]; };
	} forEach _con;	
	
	_con = _newcon joinString "";
	DEBUG( __FILE__, "_conditions > _con", _con );
	
	T8RMG_var_arrayConditions pushBack [ configName ( _x ), _siteMkr, _con, _fnc ];
	
	false
} count _conditions;

// Return
true
