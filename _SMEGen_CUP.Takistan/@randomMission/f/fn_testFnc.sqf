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

private [ "_inputPos", "_areaSize", "_loop", "_pX", "_pY", "_n" ];
__DEBUG( __FILE__, "INIT", _this );


_inputPos	= getPos player;
_areaSize	= 400;

_pX = (( _inputPos select 0 ) - ( _areaSize / 2 ));
_pY = (( _inputPos select 1 ) - ( _areaSize / 2 ));

_loop = true;
_n = 1;

while { _loop } do
{
	_tmpPos = [ _pX, _pY, 0 ];
	
	private [ "_m" ]; 
	_m = [( format [ "%1_%2_%3", _pX, _pY, _n ]), _tmpPos, "", [1,1], 0, "ICON", "mil_dot", "ColorBlack", 0.25 ] call T8RMG_fnc_createMarker; 
	
	_n = _n + 1;
	
	if ([ _tmpPos ] call T8RMG_fnc_checkOutside ) then				{ _m setMarkerColorLocal "colorCivilian"; };
	if (( _tmpPos distance2D _inputPos ) > ( _areaSize / 2 )) then	{ _m setMarkerColorLocal "ColorGrey"; };
	
	if ( 	count _tmpPos > 1 
			AND { ( _tmpPos distance2D _inputPos ) < ( _areaSize / 2 ) }
			AND { !isOnRoad _tmpPos }
			AND { !surfaceIsWater _tmpPos }
			AND { [ _tmpPos ] call T8RMG_fnc_checkFlatGround }
			AND { !([ _tmpPos ] call T8RMG_fnc_checkOutside )}
	) then {
	
		private [ "_skip" ];
		_skip = true;
		
		if (( _tmpPos distance2D ( nearestObject _tmpPos )) >  5 ) then	{ _m setMarkerColorLocal "ColorRed"; };
		if (( _tmpPos distance2D ( nearestObject _tmpPos )) > 10 ) then	{ _m setMarkerColorLocal "ColorOrange"; };
		if (( _tmpPos distance2D ( nearestObject _tmpPos )) > 15 ) then	{ _m setMarkerColorLocal "ColorYellow"; };
		if (( _tmpPos distance2D ( nearestObject _tmpPos )) > 30 ) then	{ _m setMarkerColorLocal "ColorGreen"; };	
	};
	
	_pX = _pX + 5;
	
	if ( _pX > (( _inputPos select 0 ) + ( _areaSize / 2 ))) then
	{
		_pX = (( _inputPos select 0 ) - ( _areaSize / 2 ));
		_pY = _pY + 5;
		
		if ( _pY > (( _inputPos select 1 ) + ( _areaSize / 2 ))) then
		{
			_loop = false;
		};
	};
};
