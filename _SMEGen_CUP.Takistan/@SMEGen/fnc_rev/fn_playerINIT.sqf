/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_playerINIT.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

// Cache player's side
FAR_PlayerSide = side player;

// Clear event handler before adding it
player removeAllEventHandlers "HandleDamage";

player addEventHandler [ "HandleDamage", FAR_fnc_HandleDamage ];
player addEventHandler 
[
	"Killed",
	{
		// Remove dead body of player (for missions with respawn enabled)
		_body = _this select 0;
		
		[ _body ] spawn 
		{
		
			waitUntil { alive player };
			_body = _this select 0;
			deleteVehicle _body;
		}
	}
];

player setVariable [ "FAR_isUnconscious", 0, true ];
player setVariable [ "FAR_isDragged", 0, true ];
player setVariable [ "FAR_isCarried", 0, true ];

FAR_isDragging = false;
FAR_isCarrying = false;

[] spawn FAR_fnc_playerActions;
