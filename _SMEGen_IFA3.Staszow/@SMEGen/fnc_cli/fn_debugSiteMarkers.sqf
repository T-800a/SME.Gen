/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	CLIENT

	File:		fn_debugSiteMarkers.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

if ( isMultiplayer ) exitWith {};
if !(hasInterface) exitWith {};

#include <..\MACRO.hpp>


private [ "_arraySites" ];

_arraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName );

{
	private [ "_siteMkr", "_sitePos", "_siteSize", "_siteName", "_siteType", "_siteAngle", "_icon", "_color" ];
	_siteMkr			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "marker" );
	_sitePos			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "position" );
	_siteSize			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "size" );
	_siteName			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "name" );
	_siteType			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "type" );
	_siteAngle			= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "angle" );

	_siteMkr = format [ "debug_%1_%2", _siteMkr, time ];
	
	switch ( _siteType ) do
	{
		case "town" :		{ _icon = "loc_Fuelstation"; _color = "colorCivilian"; _siteAngle = -90; };
		case "military" :	{ _icon = "loc_Fortress"; _color = "colorOPFOR"; _siteAngle = -90; };
		case "compound" :	{ _icon = "loc_Bunker"; _color = "colorBLUFOR"; _siteAngle = -90; };
		case "road" :		{ _icon = "mil_arrow2_noShadow"; _color = "ColorOrange"; };
		case "field" :		{ _icon = "loc_Ruin"; _color = "ColorGreen"; _siteAngle = -90; };
	};
	
	[ _siteMkr, _sitePos, _siteName, [1,1], ( _siteAngle + 90 ), "ICON", _icon, _color, 1 ] call T8SME_server_fnc_createMarker;
	
	_siteMkr = format [ "debug_%1_%2", _siteMkr, random time ];
	[ _siteMkr, _sitePos, "", _siteSize, _siteAngle, "ELLIPSE", "empty", "ColorUNKNOWN" ] call T8SME_server_fnc_createMarker;
	
	
	false
} count _arraySites; 


