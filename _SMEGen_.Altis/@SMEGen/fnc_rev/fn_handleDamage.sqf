/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_handleDamage.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
	_this select 0: Unit the EH is assigned to
	_this select 1: Selection (=body part) that was hit
	_this select 2: Damage to the above selection (sum of dealt and prior damage)
	_this select 3: Source of damage (returns the unit if no source)
	_this select 4: Ammo classname of the projectile that dealt the damage (returns "" if no projectile)
	
 =======================================================================================================================
*/

private ["_unit", "_killer", "_amountOfDamage", "_isUnconscious", "_dmg" ];

_unit = _this select 0;
_amountOfDamage = _this select 2;
_killer = _this select 3;
_isUnconscious = _unit getVariable "FAR_isUnconscious";

_amountOfDamage = _amountOfDamage * FAR_DamageModifier;

if ( alive _unit AND { _amountOfDamage >= 1 } && { _isUnconscious == 0 }) then 
{
	_unit setDamage 0;
	_unit allowDamage false;

	FAR_allow_CAM = true;
	
	[ _unit, _killer ] spawn FAR_fnc_playerUnconscious;
	if ( FAR_ReviveAllowCAM ) then { [ _unit, _killer ] spawn FAR_fnc_deadCam; };
	
	_amountOfDamage = 0;
};

/*
	if ( FAR_Debugging ) then 
	{
		private [ "_output" ];
		#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")
		#define conFileTime(_msg) "debug_console" callExtension (_msg + "~0001")

		_output	= format [ ">> fn_handleDamage.sqf >>>>> SELECTION: %1 >> AMOUNT: %2 >> PROJECTILE: %4 >>  SOURCE: %3", ( _this select 1 ), ( _this select 2 ), ( _this select 3 ), ( _this select 4 ) ];

		conFileTime( _output );

	};
*/

_amountOfDamage
