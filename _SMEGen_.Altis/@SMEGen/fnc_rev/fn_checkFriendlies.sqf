/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_checkFriendlies.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

private ["_unit", "_units", "_medics", "_hintMsg", "_t"];

_units = nearestObjects [ getpos player, [ "Man", "Car", "Air", "Ship" ], 550 ];
_medics = [];
_dist = 500;
_hintMsg = [];

// Find nearby friendly medics
if (count _units > 1) then
{
	{
		if ( _x isKindOf "Car" OR _x isKindOf "Air" OR _x isKindOf "Ship" ) then
		{
			if (alive _x && count (crew _x) > 0) then
			{
				{
					if ( _x call FAR_fnc_isFriendlyMedic ) then
					{
						_medics pushback _x;
					};
				} forEach crew _x;
			};
		} 
		else 
		{
			if (_x call FAR_fnc_isFriendlyMedic) then
			{
				_medics pushback _x;
			};
		};
		
	} forEach _units;
};

// Sort medics by distance
if (count _medics > 0) then
{
	{
		if (player distance _x < _dist) then
		{
			_unit = _x;
			_dist = player distance _x;
		};
	
	} forEach _medics;
	
	if (!isNull _unit) then
	{
		_unitName	= name _unit;
		_distance	= floor (player distance _unit);
		
		_t = format[ "%1 is %2m away.", _unitName, _distance];
		_hintMsg = [ "Next Corpsman:", _t ];
	};
} 
else 
{
	_hintMsg = [ "", "No Corpsman near you." ];
};

_hintMsg
