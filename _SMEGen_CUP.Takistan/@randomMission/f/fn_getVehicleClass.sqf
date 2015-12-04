/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_getVehicleClass.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#include <..\MACRO.hpp>

params [[ "_type", "ERROR", [""]], [ "_switch", "DEFAULT", [""]]];

private [ "_return", "_class" ];
_return	= "";
_class = "";

if ( _type isEqualTo "ERROR" ) exitWith { _return };

switch ( _switch ) do
{
	case "vehicles" :	{ _class = "vehicles"; };
	case "units" :		{ _class = "units"; };
	default				{ _class = "vehicles"; };
};

_return = getText ( missionConfigFile >> "cfgRandomMissions" >> "missionFactions" >> T8RMG_var_enemyFaction >> _class >> _type );


// return
_return
