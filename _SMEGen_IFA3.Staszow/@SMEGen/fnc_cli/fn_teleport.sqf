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

		if ( !isNull _dialog AND { !isNull _object }) then
		{
			private _list = _dialog displayCtrl 58101;
			private _head = _dialog displayCtrl 58102;
			lbClear _list;
			
			private _arrayBases = [];
			private _configArrayBases = "true" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionBases" );
			{ _arrayBases pushback ( configName _x ); false } count _configArrayBases;
			
			
			{
				_list lbAdd getText ( missionConfigFile >> "cfgRandomMissions" >> "missionBases" >> _x >> "name" );
				
				if ( player isEqualTo ( vehicle player )) then
				{
					_list lbSetData [ ( lbSize _list )-1, getText ( missionConfigFile >> "cfgRandomMissions" >> "missionBases" >> _x >> "playerTeleport" ) ];
				} else {
					_list lbSetData [ ( lbSize _list )-1, getText ( missionConfigFile >> "cfgRandomMissions" >> "missionBases" >> _x >> "vehicleTeleport" ) ];
				};
				
				false
			} count _arrayBases;
			
			// __GetOVAR( _infoStandObj, "T8SME_object_var_isTeleport", false )
			// _list lbSetColor [ ( lbSize _list ) - 1, [ 255/255, 0/255, 0/255, 1] ];

		};
	};
	
	case "teleport" :
	{
		private _data	= lbData [ 58101, ( lbCurSel 58101 )];
		
		if !( _data isEqualTo "" ) then
		{
			if ( player isEqualTo ( vehicle player )) then
			{
				closeDialog 0;
				titleText [ localize "STR_SMEGen_teleport", "BLACK OUT", 2 ];
				sleep 2;
				player setPos ( getMarkerPos _data );
				sleep 1;
				titleText [ "", "BLACK IN", 4 ];
	
			} else {
			
				if ( !( getMarkerPos _data isEqualTo [0,0,0]) AND { count (( getMarkerPos _data ) nearObjects [ "AllVehicles", 7 ] ) < 1 }) then
				{
					closeDialog 0;
					titleText [ localize "STR_SMEGen_teleport", "BLACK OUT", 2 ];
					sleep 2;
					( vehicle player ) setPos ( getMarkerPos _data );
					sleep 1;
					titleText [ "", "BLACK IN", 4 ];
				} else {
					titleText [ localize "STR_SMEGen_teleport_blocked", "PLAIN", 4 ];
				};
			};
		};
	};
};