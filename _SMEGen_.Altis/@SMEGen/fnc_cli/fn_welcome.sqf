/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_welcome.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>

cutText [ "", "BLACK" ]; 
waitUntil { !isNull player; };
cutText [ "", "BLACK IN", 5 ]; 

showCinemaBorder false;

("BIS_layerEstShot" call BIS_fnc_rscLayer) cutRsc ["RscEstablishingShot", "PLAIN"];
("BIS_layerEstShot" call BIS_fnc_rscLayer) cutRsc ["RscEstablishingShot", "PLAIN"];
("BIS_layerInterlacing" call BIS_fnc_rscLayer) cutRsc ["RscInterlacing", "PLAIN"];

// Apply post-process effects
private ["_ppColor"];
_ppColor = ppEffectCreate ["colorCorrections", 1999];
_ppColor ppEffectEnable true;
_ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [0.8, 0.8, 0.8, 0.65], [1, 1, 1, 1.0]];
_ppColor ppEffectCommit 0;

private ["_ppGrain"];
_ppGrain = ppEffectCreate ["filmGrain", 2012];
_ppGrain ppEffectEnable true;
_ppGrain ppEffectAdjust [0.1, 1, 1, 0, 1];
_ppGrain ppEffectCommit 0;

private [ "_cam", "_relPos" ];
_relPos = [( getPos mission_homebase ), 400 + ( random 100 ), ( random 360 )] call BIS_fnc_relPos;
_cam = "camera" camCreate [( _relPos select 0 ), ( _relPos select 1 ), 500 ];
_cam cameraEffect [ "internal", "BACK" ];
_cam camPrepareTarget [((( getPos mission_homebase ) select 0 ) + 0 ), ((( getPos mission_homebase ) select 1 ) + 0.5 ), ( getPos mission_homebase ) select 2 ];
_cam camPrepareFOV 0.7;
_cam camCommitPrepared 0;

_cam camPreparePos ( getPos mission_homebase );
_cam camCommitPrepared 20;

[
	[
		[ ( localize "STR_SMEGen_welcome_titel" ), "<t align = 'left' shadow = '1' size = '1.2'>%1</t><br/>" ],
		[ ( localize "STR_SMEGen_welcome_text" ), "<t align = 'left' shadow = '1' size = '1.0'>%1</t><br/>" ],
		[ ( localize "STR_SMEGen_welcome_signature" ), "<t align = 'left' shadow = '1' size = '0.7'>%1</t><br/>" ]
	], 0, 0
] spawn BIS_fnc_typeText;

sleep 15;
cutText ["","BLACK OUT", 2]; 

waitUntil {camCommitted _cam};

_cam cameraEffect ["TERMINATE", "BACK"];
camDestroy _cam;
ppEffectDestroy _ppColor;
ppEffectDestroy _ppGrain;

{(_x call BIS_fnc_rscLayer) cutText ["", "PLAIN"]} forEach ["BIS_layerEstShot", "BIS_layerStatic", "BIS_layerInterlacing"];
cutText ["","BLACK IN", 2]; 

