/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_createAO.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_return = "site" call T8RMG_fnc_createAO;
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [	"_ftxt", "_site", "_type", "_configArrayGroups", "_arrayGroups", "_inf", "_siteMkr", "_sitePos", "_siteName", "_siteSize", "_siteAngle", "_typeDesc", "_siteType",
			"_typeTask", "_typeTaskShort", "_typeName", "_typeCond", "_setTaskName", "_setTaskDesc", "_condSize", "_spawnedUnits", "_modPlayer", "_modGroup", "_conditions" ];

_site			= _this;
_inf			= [];
_arrayGroups	= [];

_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _this >> %2", ( round diag_fps ), _this ]; conFile( _ftxt );
if ( _site isEqualTo "" ) exitWith { _ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> %2", ( round diag_fps ), "wrong _site" ]; conFile( _ftxt ); false };

_siteMkr			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "marker" );
_sitePos			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "position" );
_siteName			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "name" );
_siteSize			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "size" );
_siteAngle			= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "angle" );
_siteType			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "type" );
_siteAllowedTypes	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "allowedTypes" );

_type				= _siteAllowedTypes call BIS_fnc_selectRandom;
_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _type >> %2", ( round diag_fps ), _type ]; conFile( _ftxt );

_typeTask		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "task" );
_typeTaskShort	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "taskShort" );
_typeName		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "name" );
_typeCond		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "condition" );
_typeDesc		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "description" );

_modPlayer		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModPlayer" );
_modGroup		= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "spawnModGroup" );

_setTaskName 	= format [ "%1: %2", _typeTaskShort, _siteName ];
_setTaskDesc 	= format [ "<t align = 'left' shadow = '1' size = '1.0'>Task: %1</t><br /><t align = 'left' shadow = '1' size = '0.8'>Location: %2</t><br /><br />%3", _typeTask, _siteName, _typeDesc ];

_condSize = if (( _siteSize select 0 ) > ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };

_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> %2", ( round diag_fps ), [ _siteMkr, _sitePos, _siteName, _siteSize, _siteAngle ]]; conFile( _ftxt );


// create marker (local to server only)
[ _siteMkr, _sitePos, "", _siteSize, _siteAngle ] call T8RMG_fnc_createMarker;




// missionType specific stuff
switch ( _type ) do 
{ 
	case "convoy":
	{
		[ _sitePos, _siteAngle ] call T8RMG_fnc_createConvoy;
		_typeCond = format [ _typeCond, _siteMkr, _condSize ];
	};
	
	case "roadblock":
	{
		[ _sitePos, _siteAngle ] call T8RMG_fnc_createRoadblock;
		_typeCond = format [ _typeCond, _siteMkr, _condSize ];
	};
	
	case "mortars":
	{
		private [ "_range", "_obj01", "_obj02", "_varName" ];
		_range = if (( _siteSize select 0 ) < ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };
		_obj01 = [( [ _sitePos, _range ] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createMortarPos;
		_obj02 = [( [ _sitePos, _range ] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createMortarPos;
		
		_varName = format [ "OBJECTIVE_mortars_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, [ _obj01, _obj02 ]];
		
		_typeCond = format [ _typeCond, _varName ];
		
		_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _varName >> %2", ( round diag_fps ), missionNamespace getVariable [ _varName, []] ]; conFile( _ftxt );
		_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _typeCond >> %2", ( round diag_fps ), _typeCond ]; conFile( _ftxt );
	};
	
	case "resupplies":
	{
		private [ "_range", "_obj01", "_obj02", "_varName" ];
		_range = if (( _siteSize select 0 ) < ( _siteSize select 1)) then { _siteSize select 0 } else { _siteSize select 1 };
		_obj01 = [( [ _sitePos, _range ] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createFuelDump;
		_obj02 = [( [ _sitePos, _range ] call T8RMG_fnc_findObjectivePos )] call T8RMG_fnc_createAmmoDump;
		
		_varName = format [ "OBJECTIVE_resupplies_%1", _siteMkr ];	
		missionNamespace setVariable [ _varName, [ _obj01, _obj02 ]];
		
		_typeCond = format [ _typeCond, _varName ];
		
		_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _varName >> %2", ( round diag_fps ), missionNamespace getVariable [ _varName, []] ]; conFile( _ftxt );
		_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _typeCond >> %2", ( round diag_fps ), _typeCond ]; conFile( _ftxt );
	};
	
	default { _typeCond = format [ _typeCond, _siteMkr, _condSize ]; };
};

// build unit array
_configArrayGroups = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" );
{ _arrayGroups pushback ( configName _x ); false } count _configArrayGroups;
_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _arrayGroups >> %2", ( round diag_fps ), _arrayGroups ]; conFile( _ftxt );

{
	private [ "_task", "_units", "_unitsFiller", "_subArray" ];
	_task			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "task" );
	_units			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "units" );
	_unitsFiller	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "groups" >> _x >> "units" );
	
	// if filler units available adjust groupsize on playercount
	if ( count _unitsFiller > 0 ) then 
	{
		private [ "_playerCount", "_groupCount", "_mod" ];
		_playerCount = if ( isMultiplayer ) then { count allPlayers } else { count ( units ( group player ))};
		_groupCount = count _units;
		_mod = ceil( _groupCount + (( _playerCount /_modPlayer )*(( _groupCount / _modGroup )*1,25)) * 2 );
		
		for "_i" from 1 to _mod do
		{
			private [ "_filler" ];
			_filler = _unitsFiller call BIS_fnc_selectRandom;
			_units pushBack _filler;
		};
	};
	
	if ( _task isEqualTo "GARRISON" OR _task isEqualTo "DEFEND" OR _task isEqualTo "DEFEND_BASE" ) then
	{
		_subArray = [ [ _units, getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "marker" ) ], [ _task ], [ true, false, false ] ];
	} else {
		_subArray = [ [ _units, getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> _site >> "marker" ) ], [ _task ] ];
	};
	
	_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _subArray >> %2", ( round diag_fps ), _subArray ]; conFile( _ftxt );
	_inf pushBack _subArray;

	false
} count _arrayGroups;


_ftxt = format [ "T8RMG >> fn_createAO.sqf >>>>> %1 >> _inf >> %2", ( round diag_fps ), _inf ]; conFile( _ftxt );

// spawn the units
_spawnedUnits = [ _inf ] call T8U_fnc_Spawn;
T8RMG_var_arrayCleanup pushBack _spawnedUnits;

// create a task
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

// add task to condition-loop
// T8RMG_var_arrayConditions pushBack [ _siteMkr, _typeCond ];

//_typeCond		= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" );

_conditions = "true" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" );

{
	private [ "_con", "_fnc" ];
	_con = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _x >> "condition" );
	_fnc = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionTypes" >> _type >> "conditions" >> _x >> "function" );
	
	T8RMG_var_arrayConditions pushBack [ _x, _siteMkr, _con, _fnc ];
	
	false
} count _conditions;

// Return
true
