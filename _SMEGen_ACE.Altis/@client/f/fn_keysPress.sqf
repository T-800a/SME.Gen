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

private [ "_return", "_helipadObj" ];

params [ "_dispaly", "_key", "_shift", "_ctrl", "_alt" ];

_return		= false;

_helipadObj = nearestObject [ player, "Helipad_base_F" ];


if ( T8C_var_inAction ) exitWith {};

switch ( _key ) do 
{

/*
	case 19 : 
	{
		if ( ! _shift AND { ! _ctrl } AND { _alt }) then 
		{
			hint "<< REPAIR - R >>";
			[] spawn T8C_fnc_serviceVehicle;
			_return = true;
		};
	};
*/
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

