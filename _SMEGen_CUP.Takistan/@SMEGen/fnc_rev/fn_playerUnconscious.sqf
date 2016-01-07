/*
 =======================================================================================================================

	FAR Revive - 1PARA Addon Version
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Farooq's Revive v1.5
	A simple revive script that does not rely on respawning. You can use this script even if you have disabled respawn.
	
	FAR_Revive is open source. Feel free to contribute or fork it: https://github.com/farooqaaa/far_revive
	
	http://forums.bistudio.com/showthread.php?155989-Farooq-s-Revive&p=2590533&viewfull=1#post2590533
	
	+-----------------------------------------------------------------------------------------------------------------+
	
	Funktion:	fn_playerUnconscious.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

disableSerialization;

private[ "_buttonSUI" ];
params [ "_unit", "_killer" ];

_unit allowDamage false;
_unit setCaptive true;
	
if (isPlayer _unit) then
{
	titleText [ "", "BLACK IN", 4 ];
	ASC_Ind_UIactive = false;
	
	_unit setVariable [ "tf_unable_to_use_radio",	true,	false ];
	_unit setVariable [ "tf_voiceVolume",			0.3,	false ];
	_unit setVariable [ "tf_globalVolume",			0.3,	false ];
	
	if ( !isNil "cse_fnc_setCanInteract" ) then { [ _unit, 1 ] call cse_fnc_setCanInteract; };
	
	// _unit enableSimulation false;
	sleep 0.5;
	disableUserInput true;
};

// Eject unit if inside vehicle
if !((vehicle _unit ) isEqualTo _unit ) then 
{
	unAssignVehicle _unit;
	sleep 0.25;
	moveOut _unit;
	sleep 2.00;
};

_unit playAction "Unconscious";
// _unit enableSimulation true;
_unit setDamage 0;
_unit setVelocity [0,0,0];

if ( FAR_EnableDeathMessages ) then { [ [ _unit ], "FAR_fnc_broadcastDeath" ] spawn BIS_fnc_MP; };

// Save Loadout aeroson function
if ( FAR_SaveGearWhenUnconscious ) then 
{
	if ( T8SME_param_keepRespawnLoadout AND { isNil "T8SME_client_var_playerLoadout" }) then 
	{
		T8SME_client_var_playerLoadout = ( _this select 0 ) call T8C_fnc_getGear;
	};
};	

sleep 3;

if (isPlayer _unit) then
{
//	titleText ["", "BLACK IN", 1];
	disableUserInput false;
};

// _unit switchMove "AinjPpneMstpSnonWrflDnon";
if ( !isPlayer _unit ) then { _unit enableSimulation false; };
_unit setVariable [ "FAR_isUnconscious", 1, true ];

// Call this code only on players
if ( isPlayer _unit ) then 
{
	_bleedOut = time + FAR_BleedOut;
	
	createDialog "FAR_Diag";
	_buttonSUI = ( uiNameSpace getVariable "FAR_Diag" ) displayCtrl 7704;
	
	FAR_noESCkey = ( findDisplay 7700 ) displayAddEventHandler [ "KeyDown", "if ((_this select 1) == 1) then { true }" ];
	
	while { !isNull _unit && {alive _unit} AND {_unit getVariable "FAR_isUnconscious" == 1} AND {(FAR_BleedOut <= 0 OR time < _bleedOut)}} do
	{
		private [ "_msg_1", "_msg" ];
		if ( round ( _bleedOut - time ) < 0 ) then 
		{
			_msg_1 = "Keep calm and wait for a corpsman.";
		} else {
			_msg_1 = format[ "Bleed out in %1 seconds.", round (_bleedOut - time) ];
		};
		
		_msg = call FAR_fnc_CheckFriendlies;
		
		ctrlSetText [ 7701, _msg_1 ];
		ctrlSetText [ 7702, ( _msg select 0 ) ];
		ctrlSetText [ 7703, ( _msg select 1 ) ];
		
		if ( FAR_AllowSUICIDE ) then
		{
			_buttonSUI ctrlSetBackgroundColor [ 1, 0, 0, 0.6 ];
		} else {
			_buttonSUI ctrlSetBackgroundColor [ 0, 0, 0, 0.6 ];
		};
				
		sleep 1;
	};
	
	( findDisplay 7700 ) displayRemoveEventHandler [ "KeyDown", FAR_noESCkey ];
	closeDialog 7700;
	ASC_Ind_UIactive = true;

	_unit setVariable [ "tf_unable_to_use_radio",	false,	false ];
	_unit setVariable [ "tf_voiceVolume",			1.0,	false ];
	_unit setVariable [ "tf_globalVolume",			1.0,	false ];
	
	if ( !isPlayer _unit ) then { _unit enableSimulation true; };

	_unit setVariable [ "FAR_isUnconscious", 	0, true ];
	_unit setVariable [ "FAR_isDragged",		0, true ];
	_unit setVariable [ "FAR_isCarried",		0, true ];

	// Player bled out
	if ( FAR_BleedOut > 0 AND { time > _bleedOut } ) then
	{
		_unit allowDamage true;
		_unit setCaptive false;		
		_unit setDamage 1;
	}
	else
	{
		// Player got revived
		sleep 5;

		_unit allowDamage true;
		_unit setCaptive false;
		_unit setDamage FAR_reviveDamage;
		
		// _unit playMove "amovppnemstpsraswrfldnon";
		// _unit playMove "";
		
		_unit playAction "AgonyStop";
	};
	
	FAR_allow_CAM = false;
}
else
{
	// [Debugging] Bleedout for AI
	_bleedOut = time + FAR_BleedOut;
		
	// AI bled out
	if (FAR_BleedOut > 0 && {time > _bleedOut}) then
	{
		_unit setDamage 1;
		_unit setVariable [ "FAR_isUnconscious",	0, true ];
		_unit setVariable [ "FAR_isDragged",		0, true ];
		_unit setVariable [ "FAR_isCarried",		0, true ];
	} else {
		_unit playAction "AgonyStop";
	};
};


	