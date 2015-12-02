/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_findObjectivePos.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_inputPos", "_areaSize", "_rad", "_arrayBasePos", "_arrayRoadPos", "_arrayBuildingPos", "_loop", "_pX", "_pY", "_n" ];
__DEBUG( __FILE__, "INIT", _this );


_inputPos	= getPos player;
_areaSize	= 300;
_rad		= (( _areaSize / 2 ) + 5 );
_useRoad	= false;

_arrayBasePos		= [];
_arrayRoadPos		= [];
_arrayBuildingPos	= [];

_pX = (( _inputPos select 0 ) - _rad );
_pY = (( _inputPos select 1 ) - _rad );

_loop = true;
_n = 1;

_fnc_getNearest = 
{
	params [ "_basePos", "_arrayPos", "_return" ];
	
	_return = 1e39;
	
	{
		if ( _basePos distance2D _x < _return ) then { _return = _basePos distance2D _x; };
		false
	} count _arrayPos;
	
	_return
};




while { _loop } do
{
	private [ "_tmpPos" ]; 
	
	_tmpPos = [ _pX, _pY, 0 ];
	if ( !surfaceIsWater _tmpPos AND {( _tmpPos distance2D _inputPos ) < _rad }) then 
	{
		if ( _useRoad ) then 
		{
		
			if ( isOnRoad _tmpPos ) then { _arrayRoadPos pushBack _tmpPos; [( format [ "%1_%2_%3", ( _tmpPos select 0 ), ( _tmpPos select 1 ), time ]), _tmpPos, "", [1,1], 0, "ICON", "mil_dot", "colorGreen", 0.75 ] call T8RMG_fnc_createMarker; } else { _arrayBasePos pushBack _tmpPos; };
		} else {
			if ( !isOnRoad _tmpPos ) then { _arrayBasePos pushBack _tmpPos; } else { _arrayBuildingPos pushBack _tmpPos; [( format [ "%1_%2_%3", ( _tmpPos select 0 ), ( _tmpPos select 1 ), time ]), _tmpPos, "", [1,1], 0, "ICON", "mil_dot", "colorCivilian", 0.75 ] call T8RMG_fnc_createMarker; };
		};
	};
	
	_pX = _pX + 5;
	
	if ( _pX > (( _inputPos select 0 ) + _rad)) then
	{
		_pX = (( _inputPos select 0 ) - _rad);
		_pY = _pY + 5;
		
		if ( _pY > (( _inputPos select 1 ) + _rad)) then
		{
			_loop = false;
		};
	};
};

{
	
	if ([ _x ] call T8RMG_fnc_checkOutside ) then 
	{
		_arrayBuildingPos pushBack _x;
		[( format [ "%1_%2_%3", ( _x select 0 ), ( _x select 1 ), time ]), _x, "", [1,1], 0, "ICON", "mil_dot", "colorCivilian", 0.75 ] call T8RMG_fnc_createMarker;
	};
	
	false
} count _arrayBasePos;

_arrayBasePos = _arrayBasePos - _arrayBuildingPos;

{
	private [ "_tmpPos", "_m" ]; 

	_tmpPos = _x;

	_m = [( format [ "%1_%2_%3", _pX, _pY, _n ]), _tmpPos, "", [1,1], 0, "ICON", "mil_dot", "ColorBlack", 0.75 ] call T8RMG_fnc_createMarker; 
	
	_n = _n + 1;
	
	if ( 	count _tmpPos > 1 
			AND { [ _tmpPos ] call T8RMG_fnc_checkFlatGround }
	) then {

		_no = nearestObject _tmpPos;
		
		if ( !isNull _no ) then
		{
			if (( _tmpPos distance2D ( _no )) >  5 AND {( [ _tmpPos, _arrayBuildingPos ] call _fnc_getNearest ) >  5 }) then	{ _m setMarkerColorLocal "ColorRed"; };
			if (( _tmpPos distance2D ( _no )) > 10 AND {( [ _tmpPos, _arrayBuildingPos ] call _fnc_getNearest ) > 10 }) then	{ _m setMarkerColorLocal "ColorOrange"; };
			if (( _tmpPos distance2D ( _no )) > 15 AND {( [ _tmpPos, _arrayBuildingPos ] call _fnc_getNearest ) > 15 }) then	{ _m setMarkerColorLocal "ColorYellow"; };
			if (( _tmpPos distance2D ( _no )) > 30 AND {( [ _tmpPos, _arrayBuildingPos ] call _fnc_getNearest ) > 30 }) then	{ _m setMarkerColorLocal "ColorGreen"; };
		};
	};
	
	false

} count _arrayBasePos;
