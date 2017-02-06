/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_drawMapIcons.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

if ( isNil "T8SME_client_var_drawVehiclesMap" ) then { T8SME_client_var_drawVehiclesMap = []; };

private _icons		= [];
private _players	= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};
private _map		= (findDisplay 12) displayCtrl 51;
private _scale		= ctrlMapScale _map;
private _o			= ( 6 * ( 1 - _scale * _scale ));	if ( _o < 0 ) then { _o = 0; };
private _a			= ( 1 * ( 1 - _scale * 50 ));	if ( _a < 0 ) then { _a = 0; };

// hintSilent parseText format [ "SCALE: %1<br />OFFSET: %2<br />ALPHA: %3", _scale, _o, _a ];

// show rewards vehicles on map	
/*
{
	if ( !isNull _x ) then
	{
		private [ "_c", "_v", "_n" ];
		_c = [ 0, 0.3, 0.6, 1 ];
		if ( !canMove _x ) then { _c = [ 1, 0.1, 0.1, 1 ] };
		if ( !alive _x ) then { _c = [ 0, 0, 0, 1 ] };
		
		_v = getText ( configfile >> "CfgVehicles" >> typeOf _x >> "displayName" );
		_n = if !( isNull ( driver _x )) then { format [ "%1:%2", _v, ( name ( driver _x ))]} else { _v };
		
		_icons pushBack [( getPos _x ), 32, _n, _c, "iconCar", ( getDir _x )];
	};

	false
} count [ T8SME_server_var_objectReward01, T8SME_server_var_objectReward02, T8SME_server_var_objectReward03 ];
*/

// show vehicles that were -added-
{
	if ( !isNull _x ) then
	{
		private _c = [ 0, 0.3, 0.6, 1 ];
		private _i = "iconCar";
		if ( !canMove _x ) then { _c = [ 1, 0.1, 0.1, 1 ] };
		if ( !alive _x ) then { _c = [ 0, 0, 0, 1 ] };
		
		if ( _x isKindOf "Plane"		) then { _i = "iconPlane"; };
		if ( _x isKindOf "Helicopter"	) then { _i = "iconHelicopter"; };
		if ( _x isKindOf "Tank"			) then { _i = "iconTank"; };
		if ( _x isKindOf "Ship"			) then { _i = "iconShip"; };
		
//		if ( _x isKindOf "" ) then { _i = "iconAPC"; };
		
		private _v = getText ( configfile >> "CfgVehicles" >> typeOf _x >> "displayName" );
		private _n = if !( isNull ( driver _x )) then { format [ "%1:%2 (%3)", _v, ( name ( driver _x )), ( count crew _x )]} else { _v };
		
		_icons pushBack [( getPos _x ), 32, _n, _c, _i, ( getDir _x )];
	};

	false
} count T8SME_client_var_drawVehiclesMap;

// show players
{
	if ( _scale < 0.035 ) then
	{
		if ( vehicle _x isEqualTo _x ) then
		{
			private _c = [ 0, 0.3, 0.6, _a ];
			private _d = ( getDir _x );
			private _i = "\A3\ui_f\data\map\markers\military\triangle_CA.paa";
			if ( _x getVariable [ "ACE_isUnconscious", false ] ) then { _c = [ 1, 0, 0, _a ]; _d = 0; _i = "\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa"; };

			_icons pushBack [( getPos _x ), 32, ( name _x ), _c, _i, _d ];
		};
	};
	
	if ( _x isEqualTo ( leader ( group _x ))) then
	{
		private _c = [ 0, 0.3, 0.6, 1 ];
		private _i = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
		private _p = ( getPos vehicle _x );
		
		private _pa = if ( vehicle _x isEqualTo _x ) then { [( _p select 0 ), ( _p select 1 ) + _o, 0 ] } else { [( _p select 0 ) + ( 1.5 * _o ), ( _p select 1 ) + ( 1.5 * _o ), 0 ] };

		_icons pushBack [ _pa, 32, ( groupId ( group _x )), _c, _i, 0 ];
	};
	
	false
} count _players;

// draw the icons
{
	( _this select 0 ) drawIcon 
	[
		( _x select 4 ),		//	_iconType
		( _x select 3 ),		//	_color,
		( _x select 0 ),		//	_pos
		( _x select 1 ),		//	_iconSize
		( _x select 1 ),		//	_iconSize
		( _x select 5 ),		//	_dir
		( _x select 2 ),		//	_text
		1,						// _shadow
		0.04,					// _textSize
		"puristaMedium",		// _textFont
		"right"					// _textOffset
	];
	
	false
} count _icons;