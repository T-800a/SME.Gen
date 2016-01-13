/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_createAO.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_return = "site" call T8SME_server_fnc_createAO;
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

__DEBUG( __FILE__, "INIT: _this", _this );

private [	"_type", "_configArrayGroups", "_arrayGroups", "_inf", "_siteMkr", "_sitePos", "_taskPos", "_siteName", "_siteSize", "_siteAngle", "_typeDesc",
			"_typeDescNew", "_typeTask", "_range", "_typeTaskShort", "_typeName", "_setTaskName", "_setTaskDesc", "_spawnedUnits", "_modPlayer", "_modGroup", "_conditions",
			"_missionSideN", "_missionSide", "_missionSideString", "_missionPlayerSide", "_missionPlayerSideString", "_varName", "_varName02", "_index", "_objPos" ];

params [
	[ "_site", "NO-SITE", [""]],
	[ "_followUp", "", [""]]
];

_inf			= [];
_arrayGroups	= [];
_objPos			= [];

if ( _site isEqualTo "NO-SITE" ) exitWith 
{ 
__DEBUG( __FILE__, "_____ERROR!", "wrong_site" ); 
};

_siteMkr			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "marker" );
_sitePos			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "position" );
_siteName			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "name" );
_siteSize			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "size" );
_siteAngle			= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "angle" );
_siteAllowedTypes	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "allowedTypes" );

_type				=  if ( _followUp isEqualTo "" ) then { _siteAllowedTypes call BIS_fnc_selectRandom; } else { _followUp };
_taskPos			= [( _sitePos select 0 ), ( _sitePos select 1 ), 25 ];

__DEBUG( __FILE__, "SITE _siteMkr", _siteMkr );
__DEBUG( __FILE__, "SITE _sitePos", _sitePos );
__DEBUG( __FILE__, "SITE _siteName", _siteName );
__DEBUG( __FILE__, "SITE _siteSize", _siteSize );
__DEBUG( __FILE__, "SITE _siteAngle", _siteAngle );
__DEBUG( __FILE__, "SELECTED _type", _type );

_typeTask		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "task" );
_typeTaskShort	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "taskShort" );
_typeName		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "name" );
_typeDesc		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "description" );
_typeDesc = _typeDesc splitString "#";
_typeDescNew = [];
{ _typeDescNew set [ _forEachIndex, _x ]; if ( _x isEqualTo "__LOCATION__" ) then { _typeDescNew set [ _forEachIndex, _siteName ]; }; } forEach _typeDesc;
_typeDesc = _typeDescNew joinString "";

_modPlayer		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModPlayer" );
_modGroup		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModGroup" );

_setTaskName 	= format [ "%1: %2", _typeTaskShort, _siteName ];
_setTaskDesc 	= format [ "<br /><font align='left' size='20' face='PuristaBold'>Task: %1</font><br /><font align='left' size='20' face='PuristaMedium'>%2</font><br /><br />%3", _typeTask, _siteName, _typeDesc ];

_range			= if (( _siteSize select 0 ) < ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };
_varName		= "NO_VAR_SET";
_varName02		= "NO_VAR_SET";

// get the faction
_missionSideN	= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8SME_param_enemyFaction >> "spawnUnitsSide" );

switch ( _missionSideN ) do
{
	case 0 :	{ _missionSide = EAST;			_missionSideString = "EAST"; };
	case 1 :	{ _missionSide = WEST;			_missionSideString = "WEST"; };
	case 2 :	{ _missionSide = INDEPENDENT;	_missionSideString = "INDEPENDENT" };
	default		{ _missionSide = WEST;			_missionSideString = "WEST" };
};

switch ( T8SME_param_playerFaction ) do
{
	case 0 :	{ _missionPlayerSide = EAST;		_missionPlayerSideString = "EAST"; };
	case 1 :	{ _missionPlayerSide = WEST;		_missionPlayerSideString = "WEST"; };
	case 2 :	{ _missionPlayerSide = INDEPENDENT;	_missionPlayerSideString = "INDEPENDENT" };
	default		{ _missionPlayerSide = WEST;		_missionPlayerSideString = "WEST" };
};



// missionType specific stuff
switch ( _type ) do 
{ 
	case "convoy":
	{
		private [ "_obj" ];
		_obj = [ _sitePos, _siteAngle ] call T8SME_server_fnc_createConvoy;
		
		_varName = format [ "OBJECTIVE_convoy_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "roadblock":
	{
		[ _sitePos, _siteAngle ] call T8SME_server_fnc_createRoadblock;
	};
	
	case "roadblockHouse":
	{
		[ _sitePos, _siteAngle ] call T8SME_server_fnc_createRoadblockHouse;
	};

	case "roadIED":
	{
		private [ "_objs" ];
		_objs = [ _sitePos, _siteAngle ] call T8SME_server_fnc_createRoadIED; 
		
		_varName = format [ "OBJECTIVE_roadIED_%1", _siteMkr ];
		missionNamespace setVariable [ _varName, _objs ];
	};
	
	case "roadIEDintel":
	{
		private [ "_objs" ];
		_objs = [ _sitePos, _siteAngle, true ] call T8SME_server_fnc_createRoadIED;
		
		[( _objs select 0 )] remoteExec [ "T8SME_client_fnc_addActionIntel", 0, ( format [ "OBJECTIVE_roadIEDintel_actionID_%1", _siteMkr ]) ];
		
		_varName = format [ "OBJECTIVE_roadIEDintel_%1", _siteMkr ];
		missionNamespace setVariable [ _varName, ( _objs select 0 )];
		
		missionNamespace setVariable [( format [ "OBJECTIVE_roadIEDintel_IED_%1", _siteMkr ]), ( _objs select 1 )];
	};
	
	case "mortars":
	{
		private [ "_relPos", "_obj01", "_obj02" ];
		
		while { count _objPos < 2 } do 
		{
			_relPos = [ _sitePos, ( _range * 0.25 ), random 360 ] call BIS_fnc_relPos;
			_objPos = [ _relPos, ( _range * 0.8 )] call T8SME_server_fnc_findObjectivePositions;
		};
		
		_obj01 = [ _objPos select 0 ] call T8SME_server_fnc_createMortarPos;
		_obj02 = [ _objPos select 1 ] call T8SME_server_fnc_createMortarPos;
		
		_varName = format [ "OBJECTIVE_mortars_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, [ _obj01, _obj02 ]];
	};
	
	case "resupplies":
	{
		private [ "_relPos", "_obj01", "_obj02" ];
		
		while { count _objPos < 2 } do 
		{
			_relPos = [ _sitePos, ( _range * 0.25 ), random 360 ] call BIS_fnc_relPos;
			_objPos = [ _relPos, ( _range * 0.8 )] call T8SME_server_fnc_findObjectivePositions;
		};
		
		_obj01 = [ _objPos select 0 ] call T8SME_server_fnc_createFuelDump;
		_obj02 = [ _objPos select 1 ] call T8SME_server_fnc_createAmmoDump;
		
		_varName = format [ "OBJECTIVE_resupplies_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, [ _obj01, _obj02 ]];
	};
	
	case "radiotower":
	{
		private [ "_obj" ];
		_obj = [ _sitePos ] call T8SME_server_fnc_createRadioTower; 
		
		_varName = format [ "OBJECTIVE_radiotower_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "recoverUGV":
	{
		private [ "_obj" ];
		_siteSize = [( _range * 0.7 ), ( _range * 0.7 )];
		_obj = [ _sitePos ] call T8SME_server_fnc_createrecoverUGV; 
		
		_varName = format [ "OBJECTIVE_recoverUGV_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "killHVT":
	{
		private [ "_obj" ];
		_siteSize = [( _range * 0.7 ), ( _range * 0.7 )];
		_obj = [ _sitePos, ( _range * 0.7 ) ] call T8SME_server_fnc_createHVT; 
		
		_sitePos = getPos _obj;
		
		_varName = format [ "OBJECTIVE_killHVT_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "intelHVT":
	{
		private [ "_obj" ];
		_siteSize = [( _range * 0.8 ), ( _range * 0.8 )];
		_obj = [ _sitePos, ( _range * 0.8 ) ] call T8SME_server_fnc_createHVT; 
		
		[ _obj ] remoteExec [ "T8SME_client_fnc_addActionIntel", 0, ( format [ "OBJECTIVE_intelHVT_actionID_%1", _siteMkr ]) ];
		
		_sitePos = getPos _obj;
		
		_varName = format [ "OBJECTIVE_intelHVT_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "getIntel":
	{
		private [ "_obj" ];
		_siteSize = [( _range * 0.4 ), ( _range * 0.4 )];
		_obj = [ _sitePos ] call T8SME_server_fnc_createGetIntel; 
		
		[ _obj, 245670 ] remoteExec [ "T8L_fnc_addActionLaptop", 0, ( format [ "OBJECTIVE_getIntel_actionID_%1", _siteMkr ]) ];
		
		_varName = format [ "OBJECTIVE_getIntel_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "getIntelFollowUP":
	{
		private [ "_obj" ];
		_siteSize = [( _range * 0.4 ), ( _range * 0.4 )];
		_obj = [ _sitePos ] call T8SME_server_fnc_createGetIntel;
		
		[ _obj ] remoteExec [ "T8SME_client_fnc_addActionIntel", 0, ( format [ "OBJECTIVE_getIntelFollowUP_actionID_%1", _siteMkr ])];
		
		_varName = format [ "OBJECTIVE_getIntelFollowUP_%1", _siteMkr ];
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	case "heliCrash":
	{
		private [ "_obj" ];
		_obj = [ _sitePos, _range ] call T8SME_server_fnc_createHeliCrash; 
		
		[ _obj ] remoteExec [ "T8SME_client_fnc_addActionIntel", 0, ( format [ "OBJECTIVE_heliCrash_actionID_%1", _siteMkr ]) ];

		_varName = format [ "OBJECTIVE_heliCrash_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, _obj ];
	};
	
	default {};
};

// create markers (local to server only)
[ _siteMkr, _sitePos, "", _siteSize, _siteAngle ] call T8SME_server_fnc_createMarker;
__DEBUG( __FILE__, "MARKER", _siteMkr );

if ( count _objPos > 0 ) then
{
	{
		private [ "_m" ];
		_m = format [ "%1_%2", _siteMkr, _forEachIndex ];
		__DEBUG( __FILE__, "MARKER", _m );
		[ _m, _x, "", [1,1], 0, "ICON" ] call T8SME_server_fnc_createMarker; 
	} forEach _objPos;
};

// build unit array
_configArrayGroups = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" );
{ _arrayGroups pushback ( configName _x ); false } count _configArrayGroups;

__DEBUG( __FILE__, "_arrayGroups", _arrayGroups );

_index = 0;

{
	private [ "_task", "_units", "_marker", "_filler", "_subArray", "_vehicleGroup" ];
	_task			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "task" );
	_units			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "units" );
	_filler			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "unitsFiller" );
	_vehicleGroup	= [ _type, _x ] call T8SME_server_fnc_getVehicleGroup;
	
	_units = [ _units, _filler ] call T8SME_server_fnc_fillUnitArray;
	_units = [ _units ] call T8SME_server_fnc_buildUnitArray;
	
	_marker = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "marker" );
	
	switch ( _task ) do
	{
		case "DEFEND_BASE" :
		{ 
			if ( count _objPos > 0 AND { _index < ( count _objPos )}) then
			{
				_marker = format [ "%1_%2", _siteMkr, _index ];
				_index = _index + 1;
				
				if (( markerPos _marker ) isEqualTo [0,0,0]) then { _marker = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "marker" ); };
			} else {
				_marker = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> _site >> "marker" );
			};
		
			_subArray = [[ _units,  _marker, _missionSide, _vehicleGroup ], [ _task ], [ true, false, false ]];	
		};
		
		case "DEFEND" :			{ _subArray = [[ _units, _marker, _missionSide, _vehicleGroup ], [ _task ], [ true, false, false ]]; };
		case "GARRISON" :		{ _subArray = [[ _units, _marker, _missionSide, _vehicleGroup ], [ _task ], [ true, false, false ]]; };
		case "OCCUPY" :			{ _subArray = [[ _units, _marker, _missionSide, _vehicleGroup ], [ _task ], [ true, false, false ]]; };
		default					{ _subArray = [[ _units, _marker, _missionSide, _vehicleGroup ], [ _task ]]; };
	};
	
	__DEBUG( __FILE__, "GROUP ARRAY", _subArray );
	_inf pushBack _subArray;

	false
} count _arrayGroups;

// spawn the units
_spawnedUnits = [ _inf ] call T8U_fnc_Spawn;
T8SME_server_var_arrayCleanup pushBack _spawnedUnits;


// create the task
[
	_siteMkr,
	true,
	[ _setTaskDesc, _setTaskName, "" ],
	_taskPos,
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
	private [ "_name", "_con", "_newcon", "_fnc", "_fin" ];
	
	_name = configName ( _x );
	_newcon = [];
	_con = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "condition" );
	_fnc = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "function" );

	_con = _con splitString "#";
	
	{
		_newcon set [ _forEachIndex, _x ];
		if ( _x isEqualTo "__MARKER_NAME__" )	then { _newcon set [ _forEachIndex, _siteMkr ]; };
		if ( _x isEqualTo "__MARKER_SIZE__" )	then { _newcon set [ _forEachIndex, _range ]; };
		if ( _x isEqualTo "__VARIABLE__" )		then { _newcon set [ _forEachIndex, _varName ]; };
		if ( _x isEqualTo "__VARIABLE_02__" )	then { _newcon set [ _forEachIndex, _varName02 ]; };
		if ( _x isEqualTo "__SIDEAI__" )		then { _newcon set [ _forEachIndex, _missionSideString ]; };
		if ( _x isEqualTo "__SIDEPLAYER__" )	then { _newcon set [ _forEachIndex, _missionPlayerSideString ]; };
	} forEach _con;	
	
	_con = _newcon joinString "";
	__DEBUG( __FILE__, "_conditions > _con", _con );
	
	_fin = if ( getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _name >> "isFinal" ) isEqualTo 1 ) then { true } else { false };
	T8SME_server_var_arrayConditions pushBack [ configName ( _x ), _siteMkr, _con, _fnc, _fin ];
	
	false
} count _conditions;

// Return
true
