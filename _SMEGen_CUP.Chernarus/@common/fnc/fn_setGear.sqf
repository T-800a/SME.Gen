/*
 =======================================================================================================================

	@common
	
	Funktion:	fn_setGear.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <..\MACRO.hpp>

private ["_MN","_H","_G","_U","_V","_B","_MAF","_Wi","_pW", "_sW", "_hW", "_PWi","_sWA","_SWi","_HG","_HGi","_Ui","_Uw","_Vi","_Vw","_Bi","_Bm","_Bw","_cW","_Ai","_Ri"];
params [ "_unit","_LO" ];

_MN		= _LO select 0; // Mission Name
_H		= _LO select 1; // headgear _source
_G		= _LO select 2; // goggles _source
_U		= _LO select 3; // uniform _source
_V		= _LO select 4; // vest _source
_B		= _LO select 5; // backpack _source
_MAF	= _LO select 6; // magazinesAmmoFull _source
_Wi		= _LO select 7; // weaponitems _source
_PWi	= _LO select 8; // PrimaryWeaponItem _source
_SWi	= _LO select 9; // addSecondaryWeaponItem _source
_HGi	= _LO select 10; // addHandgunItem 
_Ui		= _LO select 11; // getItemCargo uniformContainer _source
_Uw		= _LO select 12; // getWeaponCargo uniformContainer _source
_Vi		= _LO select 13; // getItemCargo vestContainer _source
_Vw		= _LO select 14; // getWeaponCargo vestContainer _source
_Bi		= _LO select 15; // getItemCargo backpackContainer _source
_Bm		= _LO select 16; // getMagazineCargo backpackContainer _source
_Bw		= _LO select 17; // getWeaponCargo backpackContainer _source
_cW		= _LO select 18; // currentWeapon _source
_Ai		= _LO select 19; // assignedItems _source
_sWA	= _LO select 20; // [ primary, secondary, handgun ]

removeAllAssignedItems _unit;
removeAllContainers _unit;
removeAllWeapons _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit unlinkItem "NVGoggles";
_unit unlinkItem "NVGoggles_OPFOR";
_unit unlinkItem "NVGoggles_INDEP";

if ( _B != "" ) then { _unit addbackpack _B; clearAllItemsFromBackpack _unit; };
if ( _U != "" ) then { _unit forceAddUniform _U; };
if ( _V != "" ) then { _unit addvest _V; };
if ( _H != "" ) then { _unit addHeadgear _H; };
if ( _G != "" ) then { _unit addGoggles _G; };

removeAllWeapons _unit;

{ if (getnumber (configfile >> "CfgWeapons" >> _x >> "type") == 4096) then { _unit addweapon _x; } else { _unit linkItem _x; }; } foreach _Ai;

if(count _Bi>0) then {{for[{_i=0},{_i<(_Bi select 1) select _forEachIndex},{_i=_i+1}] do {_unit addItemToBackpack _x;};} foreach (_Bi select 0);};
if(count _Bw>0) then {{for[{_i=0},{_i<(_Bw select 1) select _forEachIndex},{_i=_i+1}] do {_unit addItemToBackpack _x;};} foreach (_Bw select 0);};
if(count _Ui>0) then {{for[{_i=0},{_i<(_Ui select 1) select _forEachIndex},{_i=_i+1}] do {_unit addItemToUniform _x;};} foreach (_Ui select 0);};
if(count _Uw>0) then {{for[{_i=0},{_i<(_Uw select 1) select _forEachIndex},{_i=_i+1}] do {_unit addItemToUniform _x;};} foreach (_Uw select 0);};
if(count _Vi>0) then {{for[{_i=0},{_i<(_Vi select 1) select _forEachIndex},{_i=_i+1}] do {_unit addItemToVest _x;};} foreach (_Vi select 0);};
if(count _Vw>0) then {{for[{_i=0},{_i<(_Vw select 1) select _forEachIndex},{_i=_i+1}] do {_unit addItemToVest _x;};} foreach (_Vw select 0);};

{ _unit addmagazine [(_x select 0),(_x select 1)]; } foreach _MAF;

_pW = _sWA select 0;
_sW = _sWA select 1;
_hW = _sWA select 2;

{
	private [ "_w" ];
	_w = _x select 0;
	
	if ( _w != "" AND getnumber( configfile >> "CfgWeapons" >> _w >> "type" ) != 4096 ) then 
	{
		if ( _w == _pW OR _w == _sW OR _w == _hW ) then { _unit addweapon _w; };
	};
} forEach _Wi;

removeAllHandgunItems _unit;
removeAllPrimaryWeaponItems _unit;

if ((count _PWi) > 0) then { { if (_x != "") then { _unit addPrimaryWeaponItem _x; } } forEach _PWi; };
if ((count _SWi) > 0) then { { if (_x != "") then { _unit addSecondaryWeaponItem _x; } } forEach _SWi; };
if ((count _HGi) > 0) then { { if (_x != "") then { _unit addHandgunItem _x; } } forEach _HGi; };

_unit selectWeapon _cW;