/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_keysPress.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

private [ "_return", "_helipadObj", "_reviveTargets", "_reviveTarget", "_fnc_getNearest" ];

params [ "_dispaly", "_key", "_shift", "_ctrl", "_alt" ];

_return		= false;

_fnc_getNearest = 
{
	params [ "_base", "_array", "_dis", "_return" ];
	_dis	= 1e39;
	_return = objNull;
	{ if ( _base distance _x < _dis ) then { _dis = _base distance _x; _return = _x; }; false } count _array;
	_return
};

_helipadObj		= nearestObject [ player, "Helipad_base_F" ];
_reviveTargets	= ( player nearEntities [ "Man", 5 ] ) - [ player ];
_reviveTarget	= [ player, _reviveTargets ] call _fnc_getNearest;

if ( T8C_var_inAction ) exitWith {};

switch ( _key ) do 
{
	// F1
	case 59 : 
	{
		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{
			__DEBUG( __FILE__, "REVIVE", _reviveTarget );
		
			if ( !isNull _reviveTarget AND { [ _reviveTarget ] call FAR_fnc_checkRevive } ) then
			{
				__DEBUG( __FILE__, "REVIVE", "SUCCESS" );
				[ "action_revive", _reviveTarget ] call FAR_fnc_handleActions;
			};
		
			_return = true;
		};
	};
	

	// F2
	case 60 : 
	{
		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{
			__DEBUG( __FILE__, "DRAG", _reviveTarget );
		
			if ( !isNull _reviveTarget AND { [ _reviveTarget ] call FAR_fnc_checkDragging } ) then
			{
				__DEBUG( __FILE__, "DRAG", "SUCCESS" );
				[ "action_drag", _reviveTarget ] call FAR_fnc_handleActions;
			};
		
			_return = true;
		};
	};

	// F3
	case 61 : 
	{
		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{
			if ( !isnull mission_obj_arsenal_sign AND {( player distance mission_obj_arsenal_sign ) < 10 } AND {( vehicle player ) isEqualTo player }) then 
			{
				// Prepare VR-Ammobox
				private [ "_arsenalAccess" ];
				_arsenalAccess = getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8RMG_var_playerRewardSet >> "fullArsenal" );
				__DEBUG( __FILE__, "_arsenalAccess", _arsenalAccess );

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
		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{
			if ( !isnull _helipadObj AND {( player distance _helipadObj ) < 11 } AND { _helipadObj getVariable [ "mission_var_isRepairPad", false ] }) then { [ _helipadObj ] spawn T8C_fnc_serviceVehicle; };
			_return = true;
		};
	};
	
	default {};
};

// RETURN: true/false (needed for keyevent!)
_return

