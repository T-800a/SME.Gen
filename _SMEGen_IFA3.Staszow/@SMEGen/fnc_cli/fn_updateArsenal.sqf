/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_updateArsenal.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

private [ "_itemSet" ];
params [[ "_rank", "", [""]]];

switch ( _rank ) do
{
	case "INIT" :	{ _itemSet = "startingGear"; };
	default			{ _itemSet = T8SME_client_var_playerRank; };
};

_backpackCargo	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> _itemSet >> "BackpackReward" );
_itemCargo		= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> _itemSet >> "ItemReward" );
_magazineCargo	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> _itemSet >> "MagazineReward" );
_weaponCargo	= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionPlayerFactions" >> T8SME_param_playerFaction >> _itemSet >> "WeaponReward" );

__DEBUG( __FILE__,"T8SME_param_playerFaction", T8SME_param_playerFaction );
__DEBUG( __FILE__,"_itemSet", _itemSet );
__DEBUG( __FILE__,"_backpackCargo", _backpackCargo );
__DEBUG( __FILE__,"_itemCargo", _itemCargo );
__DEBUG( __FILE__,"_magazineCargo", _magazineCargo );
__DEBUG( __FILE__,"_weaponCargo", _weaponCargo );

if (( count _backpackCargo	) > 0 ) then { [ missionNamespace, _backpackCargo,		false, true ] call BIS_fnc_addVirtualBackpackCargo; };
if (( count _itemCargo		) > 0 ) then { [ missionNamespace, _itemCargo,			false, true ] call BIS_fnc_addVirtualItemCargo; };
if (( count _magazineCargo	) > 0 ) then { [ missionNamespace, _magazineCargo,		false, true ] call BIS_fnc_addVirtualMagazineCargo; };
if (( count _weaponCargo	) > 0 ) then { [ missionNamespace, _weaponCargo,		false, true ] call BIS_fnc_addVirtualWeaponCargo; };

// return
true
