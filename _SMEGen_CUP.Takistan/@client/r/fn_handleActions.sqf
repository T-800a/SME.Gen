/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_handleActions.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private [ "_action", "_target" ];

_action		= [ _this, 0, "", [ "" ] ] call BIS_fnc_param;
_target		= [ _this, 1, objNull, [ objNull ] ] call BIS_fnc_param;
if ( isNull _target ) then { _target = cursorTarget; };

////////////////////////////////////////////////
// Handle actions
////////////////////////////////////////////////
if (_action == "action_revive") then
{
	[ _target ] spawn FAR_fnc_handleRevive;
};

if (_action == "action_suicide") then
{
	player enableSimulation true;
	player allowDamage true;
	player setCaptive false;
	player setDamage 1;
};

if (_action == "action_drag") then
{
	[ _target ] spawn FAR_fnc_drag;
};

if (_action == "action_carry") then
{
	[ _target ] spawn FAR_fnc_carry;
};

if (_action == "action_release") then
{
	[] spawn FAR_fnc_release;
};