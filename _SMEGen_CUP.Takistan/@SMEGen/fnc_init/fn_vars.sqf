/*
 =======================================================================================================

	SME.Gen - Small Military Encounter Genenerator
	INIT Vars
	
	File:		hintConfig.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	#include FILE!
	
 =======================================================================================================
*/ 

// CLIENT

T8SME_client_var_drawVehiclesMap = [];
T8SME_client_var_initDONE = true;


// SERVER

if ( isNil "T8SME_server_var_arraySitesBlacklist" )		then { T8SME_server_var_arraySitesBlacklist = []; };
if ( isNil "T8SME_server_var_objectReward01" )			then { T8SME_server_var_objectReward01 = objNull; };
if ( isNil "T8SME_server_var_objectReward02" )			then { T8SME_server_var_objectReward02 = objNull; };
if ( isNil "T8SME_server_var_objectReward03" )			then { T8SME_server_var_objectReward03 = objNull; };

T8SME_server_var_arrayConditions	= [];
T8SME_server_var_arraySites			= [];
T8SME_server_var_arrayCleanup		= [];
T8SME_server_var_arrayTypes			= [];

