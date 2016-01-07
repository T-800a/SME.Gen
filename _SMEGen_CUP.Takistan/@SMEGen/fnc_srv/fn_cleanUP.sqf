/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	SERVER

	File:		fn_cleanUP.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	T8SME_server_var_arrayConditions		// tasks to delete
	T8SME_server_var_arrayCleanup		// objs to delete
	
 =======================================================================================================================
*/

if !(isServer) exitWith {};

#include <..\MACRO.hpp>

__DEBUG( __FILE__, "INIT", "INIT" );
{
	__DEBUG( __FILE__, "T8SME_server_var_arrayCleanup > _x", _x );
	
	if (( typeName _x ) isEqualTo ( typeName "STR" ))		then { deleteMarkerLocal _x; };
	
	if (( typeName _x ) isEqualTo ( typeName [] )) then 
	{
		{
			if ( !isNull _x ) then 
			{
				if (( vehicle _x ) isEqualTo _x ) then
				{
					deleteVehicle _x;
					sleep 0.20;
				} else {
					deleteVehicle ( vehicle _x );
					deleteVehicle _x;  sleep 0.20;
				};
			};
			
			false
		} count _x;
	};
	
	if (( typeName _x ) isEqualTo ( typeName objNull )) then
	{
		if ( !isNull _x ) then 
		{
			if (( vehicle _x ) isEqualTo _x ) then
			{
				deleteVehicle _x;
				sleep 0.20;
			} else {
				deleteVehicle ( vehicle _x );
				deleteVehicle _x;  sleep 0.20;
			};
		};
	};

} forEach T8SME_server_var_arrayCleanup;

{ [ _x select 1 ] call BIS_fnc_deleteTask; false } count T8SME_server_var_arrayConditions;

// reset variables
T8SME_server_var_arrayCleanup		= [];
T8SME_server_var_arrayConditions	= [];
T8SME_server_var_arraySites		= [];
T8SME_server_var_arrayTypes		= [];


// return
true
