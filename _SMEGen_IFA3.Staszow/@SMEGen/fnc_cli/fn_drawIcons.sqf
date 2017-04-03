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
private _distance 	= if ( player isEqualTo ( vehicle player )) then { 3 } else { 5 };

if ( !isNull _target AND { player distance _target < _distance }) exitWith
{
	if (  __GetOVAR( _target, "T8SME_object_var_isTeleport", false ) OR __GetOVAR( _target, "T8SME_object_var_isArsenal", false ) OR __GetOVAR( _target, "T8SME_object_var_isRepair", false )) then
	{
		private _text	= format [ localize "STR_SMEGen_interact", actionKeysNames [ "Action", 2, "Keyboard" ]];
		private _pos	= getPosWorld _target;
		
		drawIcon3D [ "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [(_pos select 0),(_pos select 1), 1.5], 1, 1, 45, _text, 2, 0.04, "PuristaMedium"];
	};
};

if ( !isNull _vehicle AND {( vehicle player ) isEqualTo player } AND { player distance _vehicle < _distance }) exitWith
{
	if (  __GetOVAR( _vehicle, "T8SME_object_var_isTeleport", false ) OR __GetOVAR( _vehicle, "T8SME_object_var_isArsenal", false ) OR __GetOVAR( _target, "T8SME_object_var_isRepair", false )) then
	{
		private _text	= format [ localize "STR_SMEGen_interact", actionKeysNames [ "Action", 2, "Keyboard" ]];
		private _pos	= getPosWorld _vehicle;
		
		drawIcon3D [ "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [(_pos select 0),(_pos select 1), 1.5], 1, 1, 45, _text, 2, 0.04, "PuristaMedium"];
	};
};