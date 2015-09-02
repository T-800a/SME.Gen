/*
 =======================================================================================================================

	1PARA - Random Missions "Generator"

 =======================================================================================================================
 
	File:		fn_handleReward.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	// var to stor obj
	T8RMG_var_objectReward01
	T8RMG_var_objectReward02
	T8RMG_var_objectReward03
	
	// rewards
	T8RMG_var_classReward01
	T8RMG_var_classReward02
	T8RMG_var_classReward03
	
	// positions
	mission_reward_spawn_01
	mission_reward_spawn_02
	mission_reward_spawn_03
	
 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_skip", "_classReward01", "_classReward02", "_classReward03", "_restrictionReward01", "_restrictionReward02", "_restrictionReward03" ];

_classReward01			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionReward01" );
_classReward02			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionReward02" );
_classReward03			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionReward03" );

_restrictionReward01	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction01" );
_restrictionReward02	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction02" );
_restrictionReward03	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction03" );

_ftxt = format [ "T8RMG >> fn_handleReward.sqf >>>>> %1 >> _restrictionReward01 >> %2", ( round diag_fps ), _restrictionReward01 ]; conFile( _ftxt );
_ftxt = format [ "T8RMG >> fn_handleReward.sqf >>>>> %1 >> _restrictionReward02 >> %2", ( round diag_fps ), _restrictionReward02 ]; conFile( _ftxt );
_ftxt = format [ "T8RMG >> fn_handleReward.sqf >>>>> %1 >> _restrictionReward03 >> %2", ( round diag_fps ), _restrictionReward03 ]; conFile( _ftxt );

_skip = false;

if ((( isNull T8RMG_var_objectReward01 ) AND ( isNull T8RMG_var_objectReward02 ) AND ( isNull T8RMG_var_objectReward03 )) OR { !alive T8RMG_var_objectReward01 }) then
{
	if ( !isNull T8RMG_var_objectReward01 ) then { deleteVehicle T8RMG_var_objectReward01; };
		
	T8RMG_var_objectReward01 = createVehicle [ _classReward01, getPos mission_reward_spawn_01, [], 0, "NONE" ];
	T8RMG_var_objectReward01 setdir ( getDir mission_reward_spawn_01);
	{ _x addCuratorEditableObjects [ [ T8RMG_var_objectReward01 ], true ]; false } count allCurators;
	[ WEST, T8RMG_var_objectReward01, "Mobile HQ" ] call BIS_fnc_addRespawnPosition;
	
	missionNamespace setVariable [ "T8RMG_var_objectReward01", T8RMG_var_objectReward01, true ];
	[ 1, 0, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
	
	if !( _restrictionReward01 isEqualTo "" ) then { [ T8RMG_var_objectReward01, _restrictionReward01 ] remoteExec [ "T8C_fnc_restricVehicle", 0, "JIPID_restrictReward03" ]; };
	_skip = true;
};

if (((( !isNull T8RMG_var_objectReward01 ) AND ( isNull T8RMG_var_objectReward02 ) AND ( isNull T8RMG_var_objectReward03 )) OR { !alive T8RMG_var_objectReward02 }) AND !_skip ) then
{
	if ( !isNull T8RMG_var_objectReward02 ) then { deleteVehicle T8RMG_var_objectReward02; };
		
	T8RMG_var_objectReward02 = createVehicle [ _classReward02, getPos mission_reward_spawn_02, [], 0, "NONE" ];
	T8RMG_var_objectReward02 setdir ( getDir mission_reward_spawn_02);
	{ _x addCuratorEditableObjects [ [ T8RMG_var_objectReward02 ], true ]; false } count allCurators;
	
	missionNamespace setVariable [ "T8RMG_var_objectReward02", T8RMG_var_objectReward02, true ];
	[ 1, 1, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
	
	if !( _restrictionReward02 isEqualTo "" ) then { [ T8RMG_var_objectReward02, _restrictionReward02 ] remoteExec [ "T8C_fnc_restricVehicle", 0, "JIPID_restrictReward03" ]; };
	_skip = true;
};

if (((( !isNull T8RMG_var_objectReward01 ) AND ( !isNull T8RMG_var_objectReward02 ) AND ( isNull T8RMG_var_objectReward03 )) OR { !alive T8RMG_var_objectReward03 }) AND !_skip ) then
{
	if ( !isNull T8RMG_var_objectReward03 ) then { deleteVehicle T8RMG_var_objectReward03; };
		
	T8RMG_var_objectReward03 = createVehicle [ _classReward03, getPos mission_reward_spawn_03, [], 0, "NONE" ];
	T8RMG_var_objectReward03 setdir ( getDir mission_reward_spawn_03);
	{ _x addCuratorEditableObjects [ [ T8RMG_var_objectReward03 ], true ]; false } count allCurators;
	
	missionNamespace setVariable [ "T8RMG_var_objectReward03", T8RMG_var_objectReward03, true ];
	[ 1, 2, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
	
	if !( _restrictionReward03 isEqualTo "" ) then { [ T8RMG_var_objectReward03, _restrictionReward03 ] remoteExec [ "T8C_fnc_restricVehicle", 0, "JIPID_restrictReward03" ]; };
};




// or bool
true
