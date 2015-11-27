/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_cleanUP.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	T8RMG_var_arrayConditions		// tasks to delete
	T8RMG_var_arrayCleanup		// objs to delete
	
 =======================================================================================================================
*/

#define __DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );


__DEBUG( __FILE__, "INIT", "INIT" );
{
	__DEBUG( __FILE__, "T8RMG_var_arrayCleanup > _x", _x );
	
	if (( typeName _x ) isEqualTo ( typeName "STRING" ))	then { deleteMarkerLocal _x; };
	if (( typeName _x ) isEqualTo ( typeName [] ))			then {{ if ( !isNull _x ) then { deleteVehicle _x;  sleep 0.20; }; false } count _x; };
	if (( typeName _x ) isEqualTo ( "OBJECT" ))				then { if ( !isNull _x ) then { deleteVehicle _x;  sleep 0.20; }; };

} forEach T8RMG_var_arrayCleanup;

{ [ _x select 1 ] call BIS_fnc_deleteTask; false } count T8RMG_var_arrayConditions;

// reset variables
T8RMG_var_arrayCleanup		= [];
T8RMG_var_arrayConditions	= [];
T8RMG_var_arraySites		= [];
T8RMG_var_arrayTypes		= [];


// return
true
