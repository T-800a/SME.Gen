/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_checkCarrying.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private [ "_return", "_isPlayerUnconscious", "_isTargetUnconscious", "_isTargetDragged", "_isTargetCarried" ];

params [[ "_target", objNull, [ objNull ]]];

if ( isNull _target ) then { _target = cursorTarget; };
if ( isNull _target ) exitWith { false };

_return = false;
_isPlayerUnconscious = player getVariable "FAR_isUnconscious";

if( !alive player OR _isPlayerUnconscious == 1 OR FAR_isDragging OR FAR_isCarrying OR isNil "_target" OR !alive _target OR (!isPlayer _target AND !FAR_Debugging) OR (_target distance player) > 2 ) exitWith
{
	_return;
};

// Target of the action
_isTargetUnconscious	= _target getVariable [ "FAR_isUnconscious", 0 ];
_isTargetDragged		= _target getVariable [ "FAR_isDragged", 0 ];
_isTargetCarried		= _target getVariable [ "FAR_isCarried", 0 ];

if( _isTargetUnconscious == 1 AND _isTargetDragged == 0 AND _isTargetCarried == 0 ) then
{
	_return = true;
};
	
_return
