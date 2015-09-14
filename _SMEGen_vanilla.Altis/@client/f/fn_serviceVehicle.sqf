/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_serviceVehicle.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

disableSerialization;

private [ "_vehicle", "_repairPad", "_uiText", "_uiBar", "_txt", "_repairTime", "_sleepTime", "_progress", "_step" ];

if ( dialog ) exitWith {};
if ( T8C_var_inAction ) exitWith {};

_vehicle = vehicle player;

if ( _vehicle isEqualTo player ) exitWith {};
if ! (( driver _vehicle ) isEqualTo player ) exitWith {};
 
_repairPad = nearestObject [ player, "Helipad_base_F" ];
if !( _repairPad getVariable [ "mission_var_isRepairPad", false ]) exitWith {};
if (( _vehicle distance _repairPad ) > 11 ) exitWith {};


T8C_var_inAction = true;

( "SME_progressbar" call BIS_fnc_rscLayer ) cutRsc [ "SME_progressbar", "PLAIN" ]; 
_uiText		= ( uiNameSpace getVariable "SME_progressbar" ) displayCtrl 76401;
_uiBar		= ( uiNameSpace getVariable "SME_progressbar" ) displayCtrl 76402;
_uiBar progresssetposition 0;

_txt = localize "STR_SMEGen_init"; _uiText ctrlSetText _txt; _uiText ctrlCommit 0;

sleep 0.5;

_repairTime		= 60 + ( 120 * ( damage _vehicle ));
_sleepTime		= 0.1;
_progress		= 0;
_step			= 100 / ( _repairTime / _sleepTime );

_txt = format [ localize "STR_SMEGen_servicetime", floor _repairTime ];
_uiText ctrlSetText _txt; _uiText ctrlCommit 0;

sleep 2;

while { alive player AND { alive _vehicle } AND {( _vehicle distance _repairPad ) < 12 } AND {( driver _vehicle ) isEqualTo player } AND { _progress <= 100 }} do
{
	_txt = format [ localize "STR_SMEGen_progress", floor _progress, "%" ];
	_uiText ctrlSetText _txt; _uiText ctrlCommit 0;
	_uiBar progresssetposition ( _progress / 100 ); _uiBar ctrlCommit 0;
	
	sleep _sleepTime;
	_progress = _progress + _step;
};


if ( !( alive player ) OR { !( alive _vehicle )} OR { !(( _vehicle distance _repairPad ) < 12 )} OR { !(( driver _vehicle ) isEqualTo player )} OR { _progress <= 100 }) exitWith 
{
	_txt = localize "STR_SMEGen_abort";
	_uiText ctrlSetText _txt; _uiText ctrlCommit 0;
	
	sleep 3;
	( "SME_progressbar" call BIS_fnc_rscLayer ) cutText [ "", "PLAIN" ];
	T8C_var_inAction = false;
};

_txt = format [ localize "STR_SMEGen_finish", floor _progress, "%" ];
_uiText ctrlSetText _txt; _uiText ctrlCommit 0;
_uiBar progresssetposition ( _progress / 100); _uiBar ctrlCommit 0;

_vehicle setDamage 0;
_vehicle setFuel 1;
_vehicle setVehicleAmmo 1;

sleep 3;
( "SME_progressbar" call BIS_fnc_rscLayer ) cutText [ "", "PLAIN" ];
T8C_var_inAction = false;