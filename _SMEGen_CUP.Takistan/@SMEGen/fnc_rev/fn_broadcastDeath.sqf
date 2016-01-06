/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_broadcastDeath.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private [ "_d", "_dir", "_dis" ];
params [ "_unit" ];

if ( player == _unit ) exitWith {};

_d = [ player, _unit ] call BIS_fnc_dirTo;
_dis = player distance _unit;

if ( _d >= -22.5 && _d <= 22.5) Then { _dir = "North"; };
if ( _d > -67.5 && _d < -22.5) Then {_dir = "North-West"; };
if ( _d > 22.5 && _d < 67.5) Then { _dir = "North-East"; };	
if ( _d <= -157.5 || _d > 157.5) Then { _dir = "South"; };
if ( _d < -112.5 && _d > -157.5) Then { _dir = "South-West"; };
if ( _d > 112.5 && _d < 157.5) Then { _dir = "South-East"; };	
if ( _d <= -67.5 && _d >= -112.5) Then { _dir = "West"; };
if ( _d >= 67.5 && _d <= 112.5) Then { _dir = "East"; };


systemChat format [ "%1 was hurt and is unconscious! He is %2 m away bearing %3.", name _unit, round ( _dis ), _dir ];