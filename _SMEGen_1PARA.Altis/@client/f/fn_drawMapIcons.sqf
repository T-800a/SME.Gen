/*
 =======================================================================================================================

	T8C Script
	
	Funktion:	fn_drawMapIcons.sqf
	Author:		T-800a

=======================================================================================================================
*/

private [ "_icons" ];

_icons	= [];

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