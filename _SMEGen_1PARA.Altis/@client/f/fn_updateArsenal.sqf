/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	File:		fn_updateArsenal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

private [ "_rank", "_itemSet" ];
_rank = param [ 0, T8RMG_var_playerRewardSet, [""]];

switch ( _rank ) do
{
	case "INIT" :	{ _itemSet = "startingGear"; };
	default			{ _itemSet = T8RMG_var_playerRewardSet; };
};

_backpackCargo	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8RMG_var_playerRewardSet >> _itemSet >> "BackpackReward" );
_itemCargo		= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8RMG_var_playerRewardSet >> _itemSet >> "ItemReward" );
_magazineCargo	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8RMG_var_playerRewardSet >> _itemSet >> "MagazineReward" );
_weaponCargo	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerRewards" >> T8RMG_var_playerRewardSet >> _itemSet >> "WeaponReward" );

DEBUG( __FILE__,"T8RMG_var_playerRewardSet", T8RMG_var_playerRewardSet );
DEBUG( __FILE__,"_itemSet", _itemSet );
DEBUG( __FILE__,"_backpackCargo", _backpackCargo );
DEBUG( __FILE__,"_itemCargo", _itemCargo );
DEBUG( __FILE__,"_magazineCargo", _magazineCargo );
DEBUG( __FILE__,"_weaponCargo", _weaponCargo );

if (( count _backpackCargo	) > 0 ) then { [ mission_obj_arsenal_post, _backpackCargo,		false, true ] call BIS_fnc_addVirtualBackpackCargo; };
if (( count _itemCargo		) > 0 ) then { [ mission_obj_arsenal_post, _itemCargo,			false, true ] call BIS_fnc_addVirtualItemCargo; };
if (( count _magazineCargo	) > 0 ) then { [ mission_obj_arsenal_post, _magazineCargo,		false, true ] call BIS_fnc_addVirtualMagazineCargo; };
if (( count _weaponCargo	) > 0 ) then { [ mission_obj_arsenal_post, _weaponCargo,		false, true ] call BIS_fnc_addVirtualWeaponCargo; };

// return
true
