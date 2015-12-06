/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_drag.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private ["_target", "_id"];

FAR_isDragging = true;

_target = _this select 0;


player playAction "grabDrag";
_target attachTo [ player, [ 0, 1.1, 0.092 ] ];

if ( !isNil "ASC_NH_fnc_sendHint" ) then { [ "S.A.G. - Medical Service", "You can only drag backwards!<br />Press [ C ] if you can not move.", 0 ] spawn ASC_NH_fnc_sendHint; } else { hint "You can only drag backwards! Press [ C ] if you can not move."; };

_target setDir 180;
_target setVariable ["FAR_isDragged", 1, true];	

// Rotation fix
FAR_isDragging_EH = _target;
publicVariable "FAR_isDragging_EH";

// Add release action and save its id so it can be removed
if ( isNil "ASC_CIM_fnc_OpenMenu" ) then 
{
	_id = player addAction ["<t color=""#C90000"">" + "Stop dragging" + "</t>", { ( _this select 3 ) call FAR_fnc_handleActions; }, ["action_release"], 10, true, true, "", "true"];
};

// Wait until release action is used
waitUntil 
{ 
	!alive player OR player getVariable "FAR_isUnconscious" == 1 OR !alive _target OR _target getVariable "FAR_isUnconscious" == 0 OR !FAR_isDragging OR _target getVariable "FAR_isDragged" == 0 
};

// Handle release action
FAR_isDragging = false;
FAR_isDraggingProneStopped = false;
player playAction "released";

if ( !isNull _target AND alive _target ) then
{
	_target setVariable [ "FAR_isDragged", 0, true ];
	detach _target;
};

if ( isNil "ASC_CIM_fnc_OpenMenu" ) then 
{
	player removeAction _id;
};
