/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_deadCam.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	fn_deadCam.sqf is inspired by a script of Psychobastard!

 =======================================================================================================================
*/

if ( !isDedicated AND { !hasInterface }) exitWith {};

private [ "_pos", "_deadcam" ];
params [ "_victim", "_killer" ];

if !( player isEqualTo _victim ) exitWith {};

_pos = [
			(( getPosATL _victim ) select 0 ) - (( vectorDir _victim ) select 0 ) * 3,
			(( getPosATL _victim ) select 1 ) - (( vectorDir _victim ) select 1 ) * 3,
			(( getPosATL _victim ) select 2 ) + 1
		];

titleCut [ "", "BLACK IN", 3 ];

_deadcam = "Camera" camCreate ( position _victim );
_deadcam cameraEffect [ "internal", "back" ];
showCinemaBorder true;
_deadcam camPrepareTarget _victim;
_deadcam camPreparePos _pos;
_deadcam camPrepareFOV 0.7;
_deadcam camCommitPrepared 0;

waitUntil { camCommitted _deadcam };

if (( _killer isEqualTo player ) OR ( !alive _killer ) OR ( isNull _killer )) then
{
	_deadcam camPrepareTarget _victim;
	_deadcam camsetrelpos [ 0, 0, 20 ];
	_deadcam camPrepareFOV 1;
	_deadcam camCommitPrepared 10;
	
	waitUntil { sleep 1; !FAR_allow_CAM };

	showCinemaBorder false;
	player cameraEffect [ "terminate", "back" ];
	camDestroy _deadcam;
	
} else {
	_deadcam camPrepareTarget _victim;
	_deadcam camsetrelpos [ 0, 0, 20 ];
	_deadcam camPrepareFOV 1;
	_deadcam camCommitPrepared 10;		
	
	waitUntil { sleep 1; !FAR_allow_CAM };

	showCinemaBorder false;
	player cameraEffect [ "terminate" , "back" ];
	camDestroy _deadcam;
};

sleep 0.5;
FAR_allow_CAM = true;
