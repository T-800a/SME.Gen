/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_handleDisplays.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

/*
	// available displays
	mission_obj_arsenal_sign
	mission_obj_usoc_sign
	mission_obj_billboard_01
	mission_obj_billboard_02
	mission_obj_billboard_03

*/

mission_obj_arsenal_sign	setObjectTextureGlobal [ 0, "images\vr-arsenal.paa" ];
mission_obj_usoc_sign		setObjectTextureGlobal [ 0, "images\usoc.paa" ];
mission_obj_repair_sign		setObjectTextureGlobal [ 0, "images\repair_sign.paa" ];
mission_obj_repair_button	setObjectTextureGlobal [ 0, "images\repair_button.paa" ];

mission_obj_billboard_02	setObjectTextureGlobal [ 0, "images\chart_base.paa" ];
mission_obj_billboard_03	setObjectTextureGlobal [ 0, "images\chart_medic.paa" ];

mission_obj_arsenal_post	setObjectTextureGlobal [ 0, "images\va_post.paa" ];


private [ "_chart", "_newchart" ];
_newchart = "chart_01";

while { true } do 
{
	_chart = _newchart;
	mission_obj_billboard_01 setObjectTextureGlobal [ 0, format [ "images\%1.paa", _chart ]];
	
	if ( _chart isEqualTo "chart_01" ) then { _newchart = "chart_02"; };
	if ( _chart isEqualTo "chart_02" ) then { _newchart = "chart_03"; };
	if ( _chart isEqualTo "chart_02" ) then { _newchart = "chart_01"; };

	sleep 15;
};

// or bool
true
