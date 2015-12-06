/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_checkIsMedic.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private [ "_items", "_return" ];
_items = items _this;

switch ( FAR_ReviveMode ) do 
{ 
	case 0:	
	{
		_return = if ( "Medikit" in _items AND { "ASC_MediKit" in _items } ) then { true } else { false };
	};
	
	case 1:
	{
		_return = true;
	};
	
	case 2:
	{
		_return = if ( "Medikit" in _items ) then { true } else { false };
	};
	
	case 3:
	{
		_attendant = getNumber (configfile >> "CfgVehicles" >> typeOf _this >> "attendant");
		_return = if ( "Medikit" in _items AND { _attendant == 1 } ) then { true } else { false };
	};
	
	default { _return = false; };
};


// Return
_return
