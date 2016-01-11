/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleReward.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	// var to stor obj
	T8SME_server_var_objectReward01
	T8SME_server_var_objectReward02
	T8SME_server_var_objectReward03
	
	// rewards
	T8SME_server_var_classReward01
	T8SME_server_var_classReward02
	T8SME_server_var_classReward03
	
	// positions
	mission_reward_spawn_01
	mission_reward_spawn_02
	mission_reward_spawn_03
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

private _amount					= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "serverRewardSuccesses" );
private _succsesses				= __GetMVAR( "T8SME_server_var_missionSuccesses", 1 );

__DEBUG( __FILE__, "_succsesses", _succsesses );
__DEBUG( __FILE__, "_amount", _amount );

if ( _succsesses < _amount ) exitWith { __SetMVAR( "T8SME_server_var_missionSuccesses", ( _succsesses + 1 )); };

__SetMVAR( "T8SME_server_var_missionSuccesses", 1 );

private _classReward01			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8SME_param_playerRewardSet >> "missionReward01" );
private _classReward02			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8SME_param_playerRewardSet >> "missionReward02" );
private _classReward03			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8SME_param_playerRewardSet >> "missionReward03" );

private _restrictionReward01	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction01" );
private _restrictionReward02	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction02" );
private _restrictionReward03	= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionConfig" >> "missionRewardRestriction03" );

__DEBUG( __FILE__, "_classReward01", _classReward01 );
__DEBUG( __FILE__, "_classReward02", _classReward02 );
__DEBUG( __FILE__, "_classReward03", _classReward03 );

__DEBUG( __FILE__, "_restrictionReward01", _restrictionReward01 );
__DEBUG( __FILE__, "_restrictionReward02", _restrictionReward02 );
__DEBUG( __FILE__, "_restrictionReward03", _restrictionReward03 );

private _skip = false;

if ((( isNull T8SME_server_var_objectReward01 ) AND ( isNull T8SME_server_var_objectReward02 ) AND ( isNull T8SME_server_var_objectReward03 )) OR { !alive T8SME_server_var_objectReward01 }) then
{
	if ( !isNull T8SME_server_var_objectReward01 ) then { deleteVehicle T8SME_server_var_objectReward01; };
	
	{
		if ( _x isKindOf "Man" )			then { _x setPos ( getMarkerPos "respawn_civilian" ); };
		if ( _x isKindOf "LandVehicle" )	then { _x setPos [0,0,0]; _x setDamage 1; };
		if ( _x isKindOf "Air" )			then { _x setPos [0,0,0]; _x setDamage 1; };
		if ( _x isKindOf "Ship" )			then { _x setPos [0,0,0]; _x setDamage 1; };
		
		false
	} count (( getPos mission_reward_spawn_01 ) nearObjects 20 );
	
	T8SME_server_var_objectReward01 = createVehicle [ _classReward01, getPos mission_reward_spawn_01, [], 0, "NONE" ];
	T8SME_server_var_objectReward01 setdir ( getDir mission_reward_spawn_01);
	{ _x addCuratorEditableObjects [ [ T8SME_server_var_objectReward01 ], true ]; false } count allCurators;
	[ WEST, T8SME_server_var_objectReward01, "Mobile HQ" ] call BIS_fnc_addRespawnPosition;
	
	missionNamespace setVariable [ "T8SME_server_var_objectReward01", T8SME_server_var_objectReward01, true ];
	[ 1, 0, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
	
	if !( _restrictionReward01 isEqualTo "" ) then { [ T8SME_server_var_objectReward01, _restrictionReward01 ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictReward03" ]; };
	_skip = true;
};

if (((( !isNull T8SME_server_var_objectReward01 ) AND ( isNull T8SME_server_var_objectReward02 ) AND ( isNull T8SME_server_var_objectReward03 )) OR { !alive T8SME_server_var_objectReward02 }) AND !_skip ) then
{
	if ( !isNull T8SME_server_var_objectReward02 ) then { deleteVehicle T8SME_server_var_objectReward02; };

	{
		if ( _x isKindOf "Man" )			then { _x setPos ( getMarkerPos "respawn_civilian" ); };
		if ( _x isKindOf "LandVehicle" )	then { _x setPos [0,0,0]; _x setDamage 1; };
		if ( _x isKindOf "Air" )			then { _x setPos [0,0,0]; _x setDamage 1; };
		if ( _x isKindOf "Ship" )			then { _x setPos [0,0,0]; _x setDamage 1; };
		
		false
	} count (( getPos mission_reward_spawn_02 ) nearObjects 20 );

	T8SME_server_var_objectReward02 = createVehicle [ _classReward02, getPos mission_reward_spawn_02, [], 0, "NONE" ];
	T8SME_server_var_objectReward02 setdir ( getDir mission_reward_spawn_02);
	{ _x addCuratorEditableObjects [ [ T8SME_server_var_objectReward02 ], true ]; false } count allCurators;
	
	missionNamespace setVariable [ "T8SME_server_var_objectReward02", T8SME_server_var_objectReward02, true ];
	[ 1, 1, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
	
	if !( _restrictionReward02 isEqualTo "" ) then { [ T8SME_server_var_objectReward02, _restrictionReward02 ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictReward03" ]; };
	_skip = true;
};

if (((( !isNull T8SME_server_var_objectReward01 ) AND ( !isNull T8SME_server_var_objectReward02 ) AND ( isNull T8SME_server_var_objectReward03 )) OR { !alive T8SME_server_var_objectReward03 }) AND !_skip ) then
{
	if ( !isNull T8SME_server_var_objectReward03 ) then { deleteVehicle T8SME_server_var_objectReward03; };

	{
		if ( _x isKindOf "Man" )			then { _x setPos ( getMarkerPos "respawn_civilian" ); };
		if ( _x isKindOf "LandVehicle" )	then { _x setPos [0,0,0]; _x setDamage 1; };
		if ( _x isKindOf "Air" )			then { _x setPos [0,0,0]; _x setDamage 1; };
		if ( _x isKindOf "Ship" )			then { _x setPos [0,0,0]; _x setDamage 1; };
		
		false
	} count (( getPos mission_reward_spawn_03 ) nearObjects 20 );

	T8SME_server_var_objectReward03 = createVehicle [ _classReward03, getPos mission_reward_spawn_03, [], 0, "NONE" ];
	T8SME_server_var_objectReward03 setdir ( getDir mission_reward_spawn_03);
	{ _x addCuratorEditableObjects [ [ T8SME_server_var_objectReward03 ], true ]; false } count allCurators;
	
	missionNamespace setVariable [ "T8SME_server_var_objectReward03", T8SME_server_var_objectReward03, true ];
	[ 1, 2, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ];
	
	if !( _restrictionReward03 isEqualTo "" ) then { [ T8SME_server_var_objectReward03, _restrictionReward03 ] remoteExec [ "T8SME_client_fnc_handleVehicle", 0, "JIPID_restrictReward03" ]; };
};




// or bool
true
