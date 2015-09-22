/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_addActionIntel.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );


params [[ "_obj", objNull, [objNull]]];
if ( isNull _obj ) exitWith {};

if !( _obj getVariable [ "OBJECTIVE_intel_gathered", false ] ) then
{
	DEBUG( __FILE__, "ADD INTEL >_obj", _obj );
	_obj addAction [ localize ( "STR_SMEGen_addActionIntel" ), {( _this select 0 ) setVariable [ "OBJECTIVE_intel_gathered", true, true ]; [ 1, 7, 0 ] remoteExec [ "T8C_fnc_hintProcess", 0 ]; }, nil, 10, true, true, "", "alive _target AND {!( _target getVariable [ 'OBJECTIVE_intel_gathered', false ])}" ];
};
