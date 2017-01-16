/*
 =======================================================================================================================

	@common
	
	Funktion:	fn_getGear.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <..\MACRO.hpp>

private ["_LO","_MN","_H","_G","_U","_V","_B","_MAF","_Wi","_PWi","_SWi","_HGi","_Ui","_Uw","_Vi","_Vw","_Bi","_Bm","_Bw","_cW","_Ai","_rbon","_res","_pW","_sW","_hW"];
params [ "_unit" ];

_MN		= "SME.Gen";

_H		= headgear _unit;
_G		= goggles _unit;
_U		= uniform _unit;
_V		= vest _unit;
_B		= backpack _unit;
_MAF	= magazinesAmmoFull _unit;
_Wi		= weaponsItems _unit;
_PWi	= primaryWeaponItems _unit;
_SWi	= secondaryWeaponItems _unit;
_HGi	= HandgunItems _unit;
_Ui		= getItemCargo uniformContainer _unit;
_Uw		= getWeaponCargo uniformContainer _unit;
_Vi		= getItemCargo vestContainer _unit;
_Vw		= getWeaponCargo vestContainer _unit;
_Bi		= getItemCargo backpackContainer _unit;
_Bm		= getMagazineCargo backpackContainer _unit;
_Bw		= getWeaponCargo backpackContainer _unit;
_cW		= currentWeapon _unit;
_Ai		= assignedItems _unit;

_pW		= primaryWeapon _unit;
_sW		= secondaryWeapon _unit;
_hW		= handgunWeapon _unit;

_LO		= [_MN,_H,_G,_U,_V,_B,_MAF,_Wi,_PWi,_SWi,_HGi,_Ui,_Uw,_Vi,_Vw,_Bi,_Bm,_Bw,_cW,_Ai,[_pW,_sW,_hW]];

// return
_LO
