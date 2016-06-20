/*
 =======================================================================================================================

	@common

	File:		fn_registerUnitsCurator.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	automatically register all units with all curators every 30 seconds
	
 =======================================================================================================================
*/

if !( isServer ) exitWith {};

#include <..\MACRO.hpp>


while { true } do
{
	{
		private _curator = _x;			
		private _registerd = curatorEditableObjects _curator;
		
		{ 
			if !( _x in _registerd ) then { _curator addCuratorEditableObjects [ [ _x ], true ]; }; 
			
			false
		} count allUnits;	
		
		false
	} count allCurators;
	
	sleep 30;
};