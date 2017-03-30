/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_drawIcons.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

#include <..\MACRO.hpp>

// private _target = cursorTarget;
private _target		= nearestObject [ player, "Infostand_base_F" ];
private _vehicle	= nearestObject [ player, "LandVehicle" ];

if ( !isNull _target AND { player distance _target < 3 }) exitWith
{
	if (  __GetOVAR( _target, "T8SME_object_var_isTeleport", false ) OR __GetOVAR( _target, "T8SME_object_var_isArsenal", false )) then
	{
		private _pos = getPosWorld _target;
		drawIcon3D [ "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [(_pos select 0),(_pos select 1), 1.5], 1, 1, 45, "INTERACT", 2, 0.04, "PuristaMedium"];
	};
};

if ( !isNull _vehicle AND { player distance _vehicle < 3 }) exitWith
{
	if (  __GetOVAR( _vehicle, "T8SME_object_var_isTeleport", false ) OR __GetOVAR( _vehicle, "T8SME_object_var_isArsenal", false )) then
	{
		private _pos = getPosWorld _vehicle;
		drawIcon3D [ "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [(_pos select 0),(_pos select 1), 1.5], 1, 1, 45, "INTERACT", 2, 0.04, "PuristaMedium"];
	};
};