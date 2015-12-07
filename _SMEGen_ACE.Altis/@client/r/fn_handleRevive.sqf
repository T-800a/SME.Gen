/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_handleRevive.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

params [[ "_target", objNull, [ objNull ]]];
if ( isNull _target ) exitWith { false };

if ( alive _target ) then
{
	player playActionNow "Medic";

	_target setVariable [ "FAR_isUnconscious", 0, true ];
	_target setVariable [ "FAR_isDragged", 0, true ];
	_target setVariable [ "FAR_isCarried", 0, true ];

	// [Debugging] Code below is only relevant if revive script is enabled for AI
	if (!isPlayer _target) then
	{
		_target enableSimulation true;
		_target allowDamage true;
		_target setDamage FAR_reviveDamage;
		_target setCaptive false;
		
		_target playMove "amovppnemstpsraswrfldnon";
	};

	if ( FAR_RequireFAK ) then { player removeItem "FirstAidKit"; };
};