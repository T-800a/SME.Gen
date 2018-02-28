/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_keysPress.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

private [ "_msg" ];

params [ "_display", "_key", "_shift", "_ctrl", "_alt" ];

private _return		= false;

private _fnc_getNearest = 
{
	params [ "_base", "_array", "_dis", "_return" ];
	_dis	= 1e39;
	_return = objNull;
	{ if ( _base distance _x < _dis ) then { _dis = _base distance _x; _return = _x; }; false } count _array;
	_return
};

private _helipadObj		= nearestObject [ player, "Helipad_base_F" ];
private _vehicleObj		= nearestObject [ player, "LandVehicle" ];
private _infoStandObj	= nearestObject [ player, "Infostand_base_F" ];
private _reviveTargets	= ( player nearEntities [ "Man", 5 ] ) - [ player ];
private _reviveTarget	= [ player, _reviveTargets ] call _fnc_getNearest;

// Prepare VR-Ammobox
private [ "_arsenalAccess" ];
_arsenalAccess = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> "fullArsenal" );

if ( T8SME_client_var_inAction ) exitWith {};

switch ( _key ) do 
{
	// F1
	case 59 : 
	{
		if ( T8SME_client_var_keySpam > ( diag_tickTime - 0.50 )) exitWith { __DEBUG( __FILE__, "KEYSPAM", "" ); };
		T8SME_client_var_keySpam = diag_ticktime;
		
		if ( FAR_isEnabled ) then
		{
			if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
			{
				__DEBUG( __FILE__, "REVIVE", _reviveTarget );
			
				if ( !isNull _reviveTarget AND { [ _reviveTarget ] call FAR_fnc_checkRevive } ) then
				{
					__DEBUG( __FILE__, "REVIVE", "SUCCESS" );
					[ "action_revive", _reviveTarget ] call FAR_fnc_handleActions;
					
					_msg = format [ localize "STR_FAR_revive", ( name _reviveTarget )]; 
					[ 0, _msg, 4 ] spawn T8C_fnc_hintProcess;
				};
			
				_return = true;
			};
		};
	};


	// F2
	case 60 : 
	{
		if ( T8SME_client_var_keySpam > ( diag_tickTime - 0.50 )) exitWith { __DEBUG( __FILE__, "KEYSPAM", "" ); };
		T8SME_client_var_keySpam = diag_ticktime;
		
		if ( FAR_isEnabled ) then
		{
			if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
			{
				__DEBUG( __FILE__, "DRAG", _reviveTarget );
				
				if ( !isNull _reviveTarget AND { ! FAR_isDragging } AND { ! FAR_isCarrying } AND { [ _reviveTarget ] call FAR_fnc_checkDragging } ) then
				{
					__DEBUG( __FILE__, "DRAG", "SUCCESS" );
					[ "action_drag", _reviveTarget ] call FAR_fnc_handleActions;
					_msg = format [ localize "STR_FAR_drag", ( name _reviveTarget )]; 
					[ 0, _msg, 4 ] spawn T8C_fnc_hintProcess;
					T8SME_client_var_keySpam = ( diag_ticktime + 2.00 );
				};
				
				if ( FAR_isDragging OR { FAR_isCarrying }) then
				{
					__DEBUG( __FILE__, "DRAG", "RELEASE" );
					[ "action_release" ] call FAR_fnc_handleActions;
					_msg = localize "STR_FAR_released"; 
					[ 0, _msg, 4 ] spawn T8C_fnc_hintProcess;
				};
				
				_return = true;
			};
			
			if ( ! _shift AND { ! _ctrl } AND { _alt }) then 
			{
				__DEBUG( __FILE__, "CARRY", _reviveTarget );
			
				if ( !isNull _reviveTarget AND { ! FAR_isDragging } AND { ! FAR_isCarrying } AND { [ _reviveTarget ] call FAR_fnc_checkCarrying } ) then
				{
					__DEBUG( __FILE__, "CARRY", "SUCCESS" );
					[ "action_carry", _reviveTarget ] call FAR_fnc_handleActions;
					_msg = format [ localize "STR_FAR_carry", ( name _reviveTarget )]; 
					[ 0, _msg, 4 ] spawn T8C_fnc_hintProcess;
					T8SME_client_var_keySpam = ( diag_ticktime + 9.00 );
				};
				
				if ( FAR_isDragging OR { FAR_isCarrying }) then
				{
					__DEBUG( __FILE__, "CARRY", "RELEASE" );
					[ "action_release" ] call FAR_fnc_handleActions;
					_msg = format [ localize "STR_FAR_released", ( name _reviveTarget )]; 
					[ 0, _msg, 4 ] spawn T8C_fnc_hintProcess;
				};
			
				_return = true;
			};		
		};
	};


	// F3
	case 61 : 
	{
		if ( T8SME_client_var_keySpam > ( diag_tickTime - 0.50 )) exitWith { __DEBUG( __FILE__, "KEYSPAM", "" ); };
		T8SME_client_var_keySpam = diag_ticktime;

		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{

	// stand installed in base
			if ( !isnull mission_obj_arsenal_post AND {( player distance mission_obj_arsenal_post ) < 10 } AND {( vehicle player ) isEqualTo player }) then 
			{
				if ( _arsenalAccess isEqualTo 1 ) then 
				{
					[ "Open", true	] spawn BIS_fnc_arsenal;
				} else {
					[ "Open", false	] spawn BIS_fnc_arsenal;
				};
			};

	// mobile arsenal vehicle
			if ( __GetOVAR( _vehicleObj, "T8SME_object_var_isArsenal", false ) AND {( player distance _vehicleObj ) < 10 } AND {( vehicle player ) isEqualTo player }) then 
			{
				if ( _arsenalAccess isEqualTo 1 ) then 
				{
					[ "Open", true	] spawn BIS_fnc_arsenal;
				} else {
					[ "Open", false	] spawn BIS_fnc_arsenal;
				};
			};

			_return = true;
		};
	};


	// F4
	case 62 : 
	{
		if ( T8SME_client_var_keySpam > ( diag_tickTime - 0.50 )) exitWith { __DEBUG( __FILE__, "KEYSPAM", "" ); };
		T8SME_client_var_keySpam = diag_ticktime;
		
		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{
			if ( !isnull _helipadObj AND {( player distance _helipadObj ) < 11 } AND { _helipadObj getVariable [ "mission_var_isRepairPad", false ] }) then { [ _helipadObj ] spawn T8SME_client_fnc_serviceVehicle; };
			_return = true;
		};
	};

	default {};
};

if ( _key in ( actionKeys "Action" )) then
{
	if ( T8SME_client_var_keySpam > ( diag_tickTime - 0.50 )) exitWith { __DEBUG( __FILE__, "KEYSPAM", "" ); };
	T8SME_client_var_keySpam = diag_ticktime;

	private _distance 	= if ( player isEqualTo ( vehicle player )) then { 3 } else { 5 };
	
// Teleport from Infostand
	if ( __GetOVAR( _infoStandObj, "T8SME_object_var_isTeleport", false ) AND {( player distance _infoStandObj ) < _distance }  AND { !_return }) then 
	{
		if !( dialog ) then 
		{
			[ "open_menu", _infoStandObj ] spawn T8SME_client_fnc_teleport;
		};
		
		_return = true;
	};

// Arsenal from Infostand
	if ( __GetOVAR( _infoStandObj, "T8SME_object_var_isArsenal", false ) AND {( player distance _infoStandObj ) < _distance } AND { !_return }) then 
	{
		if !( dialog ) then 
		{
			if ( _arsenalAccess isEqualTo 1 ) then 
			{
				[ "Open", true	] spawn BIS_fnc_arsenal;
			} else {
				[ "Open", false	] spawn BIS_fnc_arsenal;
			};
		};
		
		_return = true;
	};

// Repair from Infostand
	if ( __GetOVAR( _infoStandObj, "T8SME_object_var_isRepair", false ) AND {( player distance _infoStandObj ) < _distance } AND { !_return }) then 
	{
		if !( dialog ) then 
		{
			 [ _infoStandObj ] spawn T8SME_client_fnc_serviceVehicle; 
		};
		
		_return = true;
	};

// Arsenal from Vehicle	
	if ( __GetOVAR( _vehicleObj, "T8SME_object_var_isArsenal", false ) AND {( player distance _vehicleObj ) < _distance } AND {( vehicle player ) isEqualTo player }  AND { !_return }) then 
	{
		if !( dialog ) then 
		{
			if ( _arsenalAccess isEqualTo 1 ) then 
			{
				[ "Open", true	] spawn BIS_fnc_arsenal;
			} else {
				[ "Open", false	] spawn BIS_fnc_arsenal;
			};
		};
		
		_return = true;
	};
};

// RETURN: true/false (needed for keyevent!)
_return


