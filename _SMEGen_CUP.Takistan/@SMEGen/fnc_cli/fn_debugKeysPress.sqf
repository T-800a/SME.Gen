/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_debugKeysPress.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if ( isMultiplayer ) exitWith {};
if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


private [ "_cursor", "_return", "_exportSite", "_exportVehicle" ];

params [ "_dispaly", "_key", "_shift", "_ctrl", "_alt" ];

_cursor		= cursorTarget;
_return		= false;

/*
	F5 = 63 
	F6 = 64 
	F7 = 65 
	F8 = 66 
*/

_fnc_makeFile = 
{
    switch (typeName _this) do {
        case "STRING" : {
            _this = _this + "|" + (missionNamespace getVariable ["export_locations_temp", ""]);
            missionNamespace setVariable ["export_locations_temp", nil];
            "make_file" callExtension _this;
        };
        case "TEXT" : {
            missionNamespace setVariable [
                "export_locations_temp", 
                (missionNamespace getVariable ["export_locations_temp", ""]) + str _this + "\n"
            ];
        };
    };
};

_exportSite =
{
	private [ "_type", "_pos", "_dir", "_dirN", "_locArray", "_loc", "_locText", "_locTextStr", "_locPos", "_dirTo" ];
	_type = _this select 0;
	
	_pos = getPos player;
	_dir = getDir player;
	_dirN = "";
	
	_locArray = nearestLocations [ _pos, [ "NameMarine", "NameCityCapital", "NameCity", "NameVillage", "NameLocal"], 1500 ];
	_loc = _locArray select 0;
	_locText = text _loc;
	_locPos = position _loc;
	
	_locTextStr = toLower ( _locText );
	_locTextStr = _locTextStr splitString " ";
	_locTextStr = _locTextStr joinString "";
	
    _dirTo = [ _locPos, _pos ] call BIS_fnc_dirTo;
	
	switch true do {
		case (_dirTo >= 000.00 && _dirTo< 011.25) : {_dirN="N";};		
		case (_dirTo >= 011.25 && _dirTo< 033.75) : {_dirN="NNE";};
		case (_dirTo >= 033.75 && _dirTo< 056.25) : {_dirN="NE";};		
		case (_dirTo >= 056.25 && _dirTo< 078.75) : {_dirN="ENE";};
		case (_dirTo >= 078.75 && _dirTo< 101.25) : {_dirN="E";};		
		case (_dirTo >= 101.25 && _dirTo< 123.75) : {_dirN="ESE";};
		case (_dirTo >= 123.75 && _dirTo< 146.25) : {_dirN="SE";};		
		case (_dirTo >= 146.25 && _dirTo< 168.75) : {_dirN="SSE";};
		case (_dirTo >= 168.75 && _dirTo< 191.25) : {_dirN="S";};	
		case (_dirTo >= 191.25 && _dirTo< 213.75) : {_dirN="SSW";};
		case (_dirTo >= 213.75 && _dirTo< 236.25) : {_dirN="SW";};		
		case (_dirTo >= 236.25 && _dirTo< 258.75) : {_dirN="WSW";};
		case (_dirTo >= 258.75 && _dirTo< 281.25) : {_dirN="W";};		
		case (_dirTo >= 281.25 && _dirTo< 303.75) : {_dirN="WNW";};
		case (_dirTo >= 303.75 && _dirTo< 326.25) : {_dirN="NW";};
		case (_dirTo >= 326.25 && _dirTo< 348.75) : {_dirN="NNW";};
		case (_dirTo >= 348.75 && _dirTo< 360.00) : {_dirN="N";};
	};
	
	switch ( _type ) do 
	{
		case "TOWN" :
		{
			_str = 'class town_%1 : base_town \n{\nscope = 1;\nname = "%2";\nmarker = "site_town_%1";\nposition[] = { %3, %4, 0 };\n};\n';
			( text format [_str, ( _locTextStr ), _locText, ( _pos select 0 ), ( _pos select 1 )] ) call _fnc_makeFile;
			hint format [ "TOWN: %1", ( str _locText )];
		};

		case "MIL" : 
		{
			_str = 'class mil_%1 : base_mil \n{\nscope = 1;\nname = "%2 Military Base";\nmarker = "site_mil_%1";\nposition[] = { %3, %4, 0 };\n};\n';
			( text format [_str, ( _locTextStr ), _locText, ( _pos select 0 ), ( _pos select 1 )] ) call _fnc_makeFile;
			hint format [ "MIL: %1", ( str _locText )];
		};

		case "ROAD" : 
		{
			_str = 'class road_%1_%6 : base_road \n{\nscope = 1;\nname = "Road %6 of %2";\nmarker = "site_road_%1_%6";\nposition[] = { %3, %4, 0 };\nangle = %5;\n};\n';
			( text format [_str, ( _locTextStr ), _locText, ( _pos select 0 ), ( _pos select 1 ), (( floor _dir ) + 90 ), _dirN ] ) call _fnc_makeFile;
			hint format [ "ROAD: %1", ( str _locText )];
		};

		case "COMP" : 
		{
			_str = 'class comp_%1_%5 : base_comp \n{\nscope = 1;\nname = "%5 of %2";\nmarker = "site_comp_%1_%5";\nposition[] = { %3, %4, 0 };\n};\n';
			( text format [_str, ( _locTextStr ), _locText, ( _pos select 0 ), ( _pos select 1 ), _dirN ]) call _fnc_makeFile;
			hint format [ "COMP: %1", ( str _locText )];
		};
		
		case "FIELD" : 
		{
			_str = 'class field_%1_%5 : base_field \n{\nscope = 1;\nname = "%5 of %2";\nmarker = "site_field_%1_%5";\nposition[] = { %3, %4, 0 };\n};\n';
			( text format [_str, ( _locTextStr ), _locText, ( _pos select 0 ), ( _pos select 1 ), _dirN ]) call _fnc_makeFile;
			hint format [ "FIELD: %1", ( str _locText )];
		};
	};
};

_exportVehicle =
{
	private [ "_configVehiclesArray", "_configWeaponArray" ];
	_configVehiclesArray	= "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( configFile >> "cfgVehicles" );
	_configWeaponArray		= "(( getText ( _x >> 'dlc' )) isEqualTo 'CUP_Weapons' )" configClasses ( configFile >> "cfgWeapons" );
	
	// vehicleClass = "";
	
	{
		if	(	getText ( _x >> "vehicleClass" ) isEqualTo "Air" OR
				getText ( _x >> "vehicleClass" ) isEqualTo "Armored" OR
				getText ( _x >> "vehicleClass" ) isEqualTo "Car" OR
				getText ( _x >> "vehicleClass" ) isEqualTo "Ship" OR
				getText ( _x >> "vehicleClass" ) isEqualTo "Support" OR
				getText ( _x >> "vehicleClass" ) isEqualTo "Submarine" OR
				getText ( _x >> "vehicleClass" ) isEqualTo "Static"
			) then
		{
			( text ( format [ "%1  -  %2", ( configName _x ), getText ( _x >> "displayName" )])) call _fnc_makeFile; 
			__DEBUG( __FILE__, ( configName _x ), getText ( _x >> "displayName" ));
		};
		
		false 
	} count _configVehiclesArray;	

	{
		( text ( format [ "%1  -  %2", ( configName _x ), getText ( _x >> "displayName" )])) call _fnc_makeFile; 
		__DEBUG( __FILE__, ( configName _x ), getText ( _x >> "displayName" ));
		
		false 
	} count _configWeaponArray;	
	
	( "export_CUP_vehicles.txt" ) call _fnc_makeFile;
	( "export_CUP_weapons.txt" ) call _fnc_makeFile;
};

switch ( _key ) do 
{
	// F5
	case 63 : 
	{
		[ "TOWN" ] call _exportSite;
		_return = true;
	};
	
	// F6
	case 64 : 
	{
		[ "MIL" ] call _exportSite;
		_return = true;
	};
	
	// F7
	case 65 : 
	{
		[ "ROAD" ] call _exportSite;
		_return = true;
	};
	
	// F8
	case 66 : 
	{
		if ( _shift OR _ctrl OR _alt ) then
		{
			if ( _alt ) then { [ "FIELD" ] call _exportSite; };
		} else {
			[ "COMP" ] call _exportSite;
		};
		
		_return = true;
	};
	
	// F9
	case 67 : 
	{
		hint "<< WRITE: EXPORT_LOCATION FILE >>";
		
		( format [ "export_locations_%1_%2.hpp", worldName, diag_tickTime ] ) call _fnc_makeFile;
		_return = true;
	};
	
	// F10
	case 68 : 
	{
		[] spawn T8SME_server_fnc_testFnc;
		// call _exportVehicle;
		_return = true;
	};
};	


// RETURN: true/false (needed for keyevent!)
_return

