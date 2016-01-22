/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_playerActions.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

//	player addAction args: title, filename, (arguments, priority, showWindow, hideOnUse, shortcut, condition, positionInModel, radius, radiusView, showIn3D, available, textDefault, textToolTip)
player addAction ["<t color=""#C90000"">" + "R E V I V E" + "</t>",		{ ( _this select 3 ) call FAR_fnc_handleActions; }, ["action_revive"],	10,	true,	true, "", "call FAR_fnc_checkRevive" ];
player addAction ["<t color=""#C90000"">" + "Suicide" + "</t>",			{ ( _this select 3 ) call FAR_fnc_handleActions; }, ["action_suicide"],	9,	false,	true, "", "call FAR_fnc_checkSuicide" ];
player addAction ["<t color=""#C90000"">" + "Drag" + "</t>",			{ ( _this select 3 ) call FAR_fnc_handleActions; }, ["action_drag"],	9,	false,	true, "", "call FAR_fnc_checkDragging" ];
player addAction ["<t color=""#C90000"">" + "Carry" + "</t>",			{ ( _this select 3 ) call FAR_fnc_handleActions; }, ["action_carry"],	9,	false,	true, "", "call FAR_fnc_checkCarrying" ];


