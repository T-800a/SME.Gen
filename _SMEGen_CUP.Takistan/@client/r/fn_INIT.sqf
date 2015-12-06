/*
 =======================================================================================================================

	FAR Revive
	T-800a EDIT
	
	becauaw BIS Revive didnt fucking work out ... gnarf
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+

	Function:	fn_INIT.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

FAR_ReviveAllowCAM				= true;
FAR_SaveGearWhenUnconscious		= true;
FAR_EnableDeathMessages			= true;
FAR_BleedOut					= 240;
FAR_ReviveDamage				= 0.25;
FAR_ReviveMode					= 2;
FAR_RequireFAK					= false;
FAR_AllowSUICIDE				= true;
FAR_DamageModifier				= 0.80;
FAR_Debugging					= false;

// missionNamespace setvariable [ "FAR_AllowSUICIDE", true, true ];

//------------------------------------------//

FAR_isDragging				= false;
FAR_isCarrying				= false;
FAR_isDraggingProneStopped	= false;
FAR_isDragging_EH			= [];
FAR_deathMessage			= [];

FAR_moduleLoaded			= true;


////////////////////////////////////////////////
// Player Initialization
////////////////////////////////////////////////

if ( isDedicated ) exitWith {};	
	
[] spawn
{
	waitUntil { sleep 1; !isNull player AND { isPlayer player } AND { time > 0 } };

	// Public event handlers
	"FAR_isDragging_EH" addPublicVariableEventHandler FAR_fnc_publicEH;
	"FAR_deathMessage" addPublicVariableEventHandler FAR_fnc_publicEH;

	[] spawn FAR_fnc_playerINIT;

	// Event Handlers
	player addEventHandler 
	[
		"Respawn", 
		{ 
			[] spawn FAR_fnc_playerINIT;
		}
	];
	
	if ( !isNil "ASC_NH_fnc_sendHint" ) then { [ "S.A.G. - Medical Service", "FAR Revive initialising!", 0 ] spawn ASC_NH_fnc_sendHint; };
};

////////////////////////////////////////////////
// [Debugging] Add revive to playable AI units
////////////////////////////////////////////////

if ( isMultiplayer ) exitWith {};

{
	if (!isPlayer _x) then 
	{
		_x addEventHandler [ "HandleDamage", FAR_fnc_handleDamage ];
		_x setVariable [ "FAR_isUnconscious", 0, true ];
		_x setVariable [ "FAR_isDragged", 0, true ];
		_x setVariable [ "FAR_isCarried", 0, true ];
	};
} forEach switchableUnits;



// Drag & Carry animation fix

/*

[] spawn
{
	while { true } do
	{
		if (animationState player == "acinpknlmstpsraswrfldnon_acinpercmrunsraswrfldnon" || animationState player == "helper_switchtocarryrfl" || animationState player == "AcinPknlMstpSrasWrflDnon") then
		{
			if (FAR_isDragging) then
			{
				player switchMove "AcinPknlMstpSrasWrflDnon";
			}
			else
			{
				player switchMove "amovpknlmstpsraswrfldnon";
			};
		};
			
		sleep 3;
	}
};

*/