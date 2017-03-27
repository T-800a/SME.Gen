/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT
	
	File:		fn_teleport.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

if !(hasInterface) exitWith {};
disableSerialization;

#include <..\MACRO.hpp>

params [
	[ "_action", "", [""]],
	[ "_object", objNull, [objNull]] 
];

switch ( _action ) do 
{
	case "open_menu" : 
	{
		createDialog "SME_teleportMenu";
		private _dialog = findDisplay 58100;

		if !( isNull _dialog ) then
		{
			private _list = _dialog displayCtrl 58101;
			private _head = _dialog displayCtrl 58102;
			// lbClear _list;
			
			_list lbAdd "PORT 01";
			_list lbSetData [ ( lbSize _list )-1, '[ "suicide", -1 ]' ];
			_list lbSetColor [ ( lbSize _list ) - 1, [ 255/255, 0/255, 0/255, 1] ];
			
			_list lbAdd "PORT 02";
			_list lbAdd "PORT 03";
		};
	};
};