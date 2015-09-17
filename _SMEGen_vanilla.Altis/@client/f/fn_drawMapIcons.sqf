/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_drawMapIcons.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_icons", "_players" ];
if ( isNil "T8C_var_drawVehiclesMap" ) then { T8C_var_drawVehiclesMap = []; };

_icons		= [];
_players	= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

// show rewards vehicles on map	
{
	if ( !isNull _x ) then
	{
		private [ "_c", "_v", "_n" ];
		_c = [ 0, 0.3, 0.6, 1 ];
		if ( !canMove _x ) then { _c = [ 1, 0.1, 0.1, 1 ] };
		if ( !alive _x ) then { _c = [ 0, 0, 0, 1 ] };
		
		_v = getText ( configfile >> "CfgVehicles" >> typeOf _x >> "displayName" );
		_n = if !( isNull ( driver _x )) then { format [ "%1:%2", _v, ( name ( driver _x ))]} else { _v };
		
		_icons pushBack [( getPos _x ), 32, _n, _c, "iconModule", ( getDir _x )];
	};

	false
} count [ T8RMG_var_objectReward01, T8RMG_var_objectReward02, T8RMG_var_objectReward03 ];

// show vehicles that were -added-
{
	if ( !isNull _x ) then
	{
		private [ "_c", "_v", "_n" ];
		_c = [ 0, 0.3, 0.6, 1 ];
		if ( !canMove _x ) then { _c = [ 1, 0.1, 0.1, 1 ] };
		if ( !alive _x ) then { _c = [ 0, 0, 0, 1 ] };
		
		_v = getText ( configfile >> "CfgVehicles" >> typeOf _x >> "displayName" );
		_n = if !( isNull ( driver _x )) then { format [ "%1:%2", _v, ( name ( driver _x ))]} else { _v };
		
		_icons pushBack [( getPos _x ), 32, _n, _c, "iconModule", ( getDir _x )];
	};

	false
} count T8C_var_drawVehiclesMap;

// show players
{
	if ( vehicle _x isEqualTo _x ) then
	{
		private [ "_c", "_i", "_d" ];
		_c = [ 0, 0.3, 0.6, 1 ];
		_d = ( getDir _x );
		_i = "\A3\ui_f\data\map\markers\military\triangle_CA.paa";
		if ( _x getVariable [ "ACE_isUnconscious", false ] ) then { _c = [ 1, 0, 0, 1 ]; _d = 0; _i = "\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa"; };

		_icons pushBack [( getPos _x ), 32, ( name _x ), _c, _i, _d ];
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