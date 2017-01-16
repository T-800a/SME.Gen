/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_checkFAK.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private [ "_items", "_return" ];

params [[ "_unit", objNull, [ objNull ]]];
if ( isNull _unit ) exitWith { false };

_items = items _unit;

switch ( FAR_RequireFAK ) do 
{ 
	case true:	
	{
		_return = if ( "FirstAidKit" in _items ) then { true } else { false };
	};
	
	case false:
	{
		_return = true;
	};
	
	default { _return = false; };
};


// Return
_return
