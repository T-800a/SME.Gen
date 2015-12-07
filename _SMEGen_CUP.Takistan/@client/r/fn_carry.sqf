/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_carry.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
 
	Position and disable / enable ANIM from Psychobastards A3 Wounding System
	
 =======================================================================================================================
*/

private [ "_id", "_pos", "_blockRelaodKEY" ];
params [ "_target" ];

if ( primaryWeapon player == "" ) exitWith { titleText [ "YOU NEED A PRIMARY WEAPON! (otherwise the animation will make you Stuck)", "PLAIN"]; false };

FAR_isCarrying = true;
player selectWeapon ( primaryWeapon player );

sleep 0.5;

_target setVariable [ "FAR_isCarried", 1, true ];

_blockRelaodKEY = ( findDisplay 46 ) displayAddEventHandler [ "KeyDown", "if (( _this select 1 ) in ( actionKeys 'ReloadMagazine' )) then { true };" ];

player playActionNow "grabDrag";

// if ( local _target ) then { _target setDir ( getdir player ); } else { [ [ _target, ( getdir player ) ], "setDir", _target, false, true ] call BIS_fnc_MP; }; 
if ( !isPlayer _target ) then { _target enableSimulation true; };

// _pos = player ModelToWorld [0,1.9,0];
// _target setPos _pos;
// if ( local _target ) then { _target playActionNow "grabCarried"; } else { [ [ _target, "grabCarried" ], "playActionNow", _target, false, true ] call BIS_fnc_MP; };

sleep 2;
if (!isPlayer _target) then { _target disableAI "ANIM" };
player playActionNow "grabCarry";

// _target attachTo [ player, [ -0.6, 0.28, -0.05 ] ];
//_target attachTo [ player, [ -0.2, 0.25, 0 ] ];
sleep 2;

_target attachTo [ player, [0.1, -0.1, -1.25], "LeftShoulder" ];

[ -2,
{
	_this setDir 15;
	_this setPos ( getPos _this );
	_this switchMove "AinjPfalMstpSnonWnonDf_carried_dead";
}, _target ] call CBA_fnc_globalExecute;

if ( !isPlayer _target ) then { _target enableSimulation false; };


// Wait until release action is used
waitUntil 
{ 
	!alive player OR player getVariable "FAR_isUnconscious" == 1 OR !alive _target OR _target getVariable "FAR_isUnconscious" == 0 OR !FAR_isCarrying OR _target getVariable "FAR_isCarried" == 0 
};

// Handle release action
FAR_isCarrying = false;

// player playAction "released";
// player playActionNow "Medic";

player switchMove "";

( findDisplay 46 ) displayRemoveEventHandler [ "KeyDown", _blockRelaodKEY ];

if ( !isPlayer _target ) then { _target enableAI "ANIM"; _target enableSimulation true; };

if ( !isNull _target AND alive _target ) then
{
	detach _target;
	_target setVariable [ "FAR_isCarried", 0, true ];
	
	// if ( local _target ) then { _target playActionNow "Unconscious"; } else { [ [ _target, "Unconscious" ], "playActionNow", _target, false, true ] call BIS_fnc_MP; };
	
	[ -2, 
	{
		( _this select 0 ) switchMove "Unconscious";
		//	( _this select 1 ) playActionNow "Unconscious";
	}, [ _target ]] call CBA_fnc_globalExecute;
	
	
	if ( !isPlayer _target ) then { sleep 2; _target enableSimulation false; };
};
