/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_isFriendlyMedic.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private [ "_return", "_isMedic", "_needFAK" ];

params [[ "_unit", objNull, [ objNull ]]];
if ( isNull _unit ) exitWith { false };

_return = false;

_isMedic = _unit call FAR_fnc_checkIsMedic;
_needFAK = _unit call FAR_fnc_checkFAK;
			
if ( alive _unit AND {(isPlayer _unit || FAR_Debugging)} AND { side _unit == FAR_PlayerSide } AND { _unit getVariable "FAR_isUnconscious" == 0 } AND _isMedic AND _needFAK ) then
{
	_return = true;
};

_return
