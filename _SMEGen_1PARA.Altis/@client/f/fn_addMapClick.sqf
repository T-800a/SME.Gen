/*
 =======================================================================================================================

	T8C @client
	
	Funktion:	fn_addMapClick.sqf
	Author:		T-800a

=======================================================================================================================
*/

[ "T8C_mapClick", "onMapSingleClick", { player setPos _pos; [] call T8C_fnc_removeMapClick;  } ] call BIS_fnc_addStackedEventHandler;
if ( !isNil "ASC_NH_fnc_sendHint" ) then { [ "SAG | ALT.CIM", "Your next -Single Map Click- will teleport you to the map position you clicked.", 0 ] spawn ASC_NH_fnc_hint; };