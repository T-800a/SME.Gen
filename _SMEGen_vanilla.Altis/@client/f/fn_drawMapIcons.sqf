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

_icons		= [];
_players	= if ( isMultiplayer ) then { allPlayers } else { units ( group player )};

// show rewards vehicles on map	
{
	if ( !isNull ( _x select 0 )) then
	{
		private [ "_c" ];
		_c = if ( alive ( _x select 0 )) then { [ 0, 0.3, 0.6, 1 ] } else { [ 0, 0, 0, 1 ] };
		if ( !canMove ( _x select 0 )) then { _c = [ 1, 0.1, 0.1, 1 ] };
		_icons pushBack [( getPos ( _x select 0 ) ), 32, ( _x select 1 ), _c, "iconModule", ( getDir ( _x select 0 ))];
	};

	false
} count [[ T8RMG_var_objectReward01, localize "STR_SMEGen_mapName_Reward01" ], [ T8RMG_var_objectReward02, localize "STR_SMEGen_mapName_Reward02" ], [ T8RMG_var_objectReward03, localize "STR_SMEGen_mapName_Reward03" ]];

// show vehicles that were -added-
{
	if ( !isNull _x ) then
	{
		private [ "_c", "_n" ];
		_c = if ( alive _x ) then { [ 0, 0.3, 0.6, 1 ] } else { [ 0, 0, 0, 1 ] };
		if ( !canMove _x ) then { _c = [ 1, 0.1, 0.1, 1 ] };
		_n = if !( isNull ( driver _x )) then { name ( driver _x )} else { "" };
		_icons pushBack [( getPos _x ), 32, _n, _c, "iconModule", ( getDir _x )];
	};

	false
} count T8C_var_drawVehiclesMap;

// show players
{
	private [ "_c", "_i" ];
	_c = [ 0, 0.3, 0.6, 1 ];
	_i = "mil_triangle";
	if ( _x getVariable [ "ACE_isUnconscious", false ] ) then { _c = [ 1, 0, 0, 1 ]; _i = "KIA"; };

	_icons pushBack [( getPos _x ), 32, ( name _x ), _c, _i, ( getDir _x )];

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