/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_publicEH.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if( count _this < 2 ) exitWith {};

params [ "_EH", "_target" ];

// FAR_isDragging
if (_EH == "FAR_isDragging_EH") then
{
	_target setDir 180;
};

// FAR_isDragging
if (_EH == "FAR_grabCarried") then
{
	_target setDir 180;
};

// FAR_deathMessage
if (_EH == "FAR_deathMessage") then
{
	_killed = _target select 0;
	_killer = _target select 1;

	if (isPlayer _killed && isPlayer _killer) then
	{
		systemChat format["%1 was hurt by %2", name _killed, name _killer];
	};
};
