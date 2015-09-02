/*
 =======================================================================================================================
	
	@server
	
	File:		init.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if ( !isServer ) exitWith {};


// 1PARA SAG HQ
#include <sites\mainbase.sqf>

T8S_var_initDONE = true;




// Prepare VR-Ammobox
[ "AmmoboxInit", [ mission_obj_arsenal_post, true ]] spawn BIS_fnc_arsenal;

// set base textures for signs / billboards
mission_obj_arsenal_sign	setObjectTextureGlobal [ 0, "images\vr-arsenal.paa" ];
mission_obj_usoc_sign		setObjectTextureGlobal [ 0, "images\usoc.paa" ];


// Remove DiscoBodies
addMissionEventHandler [ "HandleDisconnect", { _this spawn { sleep 2; deleteVehicle ( _this select 0 ); }; } ];


// register Units with Curators automatically
[] spawn 
{
	sleep 10;

	while { true } do
	{
		{
			private [ "_curator", "_registerd" ];
			_curator = _x;			
			_registerd = curatorEditableObjects _curator;
			{ 
				if !( _x in _registerd ) then { _curator addCuratorEditableObjects [ [ _x ], true ]; }; 
				false
			} count allUnits;	

			false
		} count allCurators;
		
		sleep 30;
	};
};
