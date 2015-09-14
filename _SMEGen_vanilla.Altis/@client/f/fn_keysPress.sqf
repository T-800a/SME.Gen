/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_keysPress.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

private [ "_dispaly", "_key", "_shift", "_ctrl", "_alt", "_return" ];

_dispaly	= _this select 0;
_key		= _this select 1;
_shift		= _this select 2;
_ctrl		= _this select 3;
_alt		= _this select 4;

_return		= false;

if ( T8C_var_inAction ) exitWith {};

switch ( _key ) do 
{
	case 19 : 
	{
		if ( ! _shift AND { ! _ctrl } AND { _alt }) then 
		{
			hint "<< REPAIR - R >>";
			[] spawn T8C_fnc_serviceVehicle;
			_return = true;
		};
	};
	
	case 62 : 
	{
		if ( ! _shift AND { ! _ctrl } AND { ! _alt }) then 
		{
			hint "<< REPAIR - F4 >>";
			[] spawn T8C_fnc_serviceVehicle;
			_return = true;
		};
	};
};

// RETURN: true/false (needed for keyevent!)
_return

