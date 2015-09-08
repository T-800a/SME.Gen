/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		cfgFunctions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
 =======================================================================================================================
*/

#define addFunction(fncName) class fncName { headerType = -1; }
#define addFunctionPre(fncName) class fncName { headerType = -1; preInit = 1; }
#define addFunctionPost(fncName) class fncName { headerType = -1; postInit = 1; }

class cfgFunctions
{
	class SMEGen
	{
		class client
		{
			tag = "T8C";
			file = "@client\f";

/*
if ( isNil "T8C_fnc_addMapClick" )			then { T8C_fnc_addMapClick			= CFPPFLN ( ROOTDIR + "fn_addMapClick.sqf" ); };
if ( isNil "T8C_fnc_removeMapClick" )		then { T8C_fnc_removeMapClick		= CFPPFLN ( ROOTDIR + "fn_removeMapClick.sqf" ); };
if ( isNil "T8C_fnc_onMapClick" )			then { T8C_fnc_onMapClick			= CFPPFLN ( ROOTDIR + "fn_onMapClick.sqf" ); };
if ( isNil "T8C_fnc_switchFarSuicide" )		then { T8C_fnc_switchFarSuicide		= CFPPFLN ( ROOTDIR + "fn_switchFarSuicide.sqf" ); };

if ( isNil "T8C_fnc_hintProcess" )			then { T8C_fnc_hintProcess			= CFPPFLN ( ROOTDIR + "fn_hintProcess.sqf" ); };
if ( isNil "T8C_fnc_hintShow" )				then { T8C_fnc_hintShow				= CFPPFLN ( ROOTDIR + "fn_hintShow.sqf" ); };

if ( isNil "T8C_fnc_drawMapIcons" )			then { T8C_fnc_drawMapIcons			= CFPPFLN ( ROOTDIR + "fn_drawMapIcons.sqf" ); };

if ( isNil "T8C_fnc_checkSlots" )			then { T8C_fnc_checkSlots			= CFPPFLN ( ROOTDIR + "fn_checkSlots.sqf" ); };
if ( isNil "T8C_fnc_restricVehicle" )		then { T8C_fnc_restricVehicle		= CFPPFLN ( ROOTDIR + "fn_restricVehicle.sqf" ); };
if ( isNil "T8C_fnc_checkGetIn" )			then { T8C_fnc_checkGetIn			= CFPPFLN ( ROOTDIR + "fn_checkGetIn.sqf" ); };
if ( isNil "T8C_fnc_checkSwitchSeat" )		then { T8C_fnc_checkSwitchSeat		= CFPPFLN ( ROOTDIR + "fn_checkSwitchSeat.sqf" ); };
if ( isNil "T8C_fnc_updateArsenal" )		then { T8C_fnc_updateArsenal		= CFPPFLN ( ROOTDIR + "fn_updateArsenal.sqf" ); };

if ( isnil "T8C_fnc_handleReward" )			then { T8C_fnc_handleReward			= CFPPFLN ( ROOTDIR + "fn_handleReward.sqf" ); };
if ( isnil "T8C_fnc_debug" )				then { T8C_fnc_debug				= CFPPFLN ( ROOTDIR + "fn_debug.sqf" ); };
if ( isnil "T8C_fnc_welcome" )				then { T8C_fnc_welcome				= CFPPFLN ( ROOTDIR + "fn_welcome.sqf" ); };
*/
			
		};
		
		class randomMission
		{
			tag = "T8RMG";
			file = "@randomMission\f";
/*
if ( isnil "T8RMG_fnc_buildUnitArray" )		then { T8RMG_fnc_buildUnitArray		= CFPPFLN ( ROOTDIR + "fn_buildUnitArray.sqf" ); };
if ( isnil "T8RMG_fnc_checkFlatGround" )	then { T8RMG_fnc_checkFlatGround	= CFPPFLN ( ROOTDIR + "fn_checkFlatGround.sqf" ); };
if ( isnil "T8RMG_fnc_checkOutside" )		then { T8RMG_fnc_checkOutside		= CFPPFLN ( ROOTDIR + "fn_checkOutside.sqf" ); };
if ( isnil "T8RMG_fnc_cleanUP" )			then { T8RMG_fnc_cleanUP			= CFPPFLN ( ROOTDIR + "fn_cleanUP.sqf" ); };
if ( isnil "T8RMG_fnc_createMarker" )		then { T8RMG_fnc_createMarker		= CFPPFLN ( ROOTDIR + "fn_createMarker.sqf" ); };
if ( isnil "T8RMG_fnc_createAO" )			then { T8RMG_fnc_createAO			= CFPPFLN ( ROOTDIR + "fn_createAO.sqf" ); };
if ( isnil "T8RMG_fnc_createGetIntel" )		then { T8RMG_fnc_createGetIntel		= CFPPFLN ( ROOTDIR + "fn_createGetIntel.sqf" ); };
if ( isnil "T8RMG_fnc_createHVT" )			then { T8RMG_fnc_createHVT			= CFPPFLN ( ROOTDIR + "fn_createHVT.sqf" ); };
if ( isnil "T8RMG_fnc_createAttack" )		then { T8RMG_fnc_createAttack		= CFPPFLN ( ROOTDIR + "fn_createAttack.sqf" ); };
if ( isnil "T8RMG_fnc_createConvoy" )		then { T8RMG_fnc_createConvoy		= CFPPFLN ( ROOTDIR + "fn_createConvoy.sqf" ); };
if ( isnil "T8RMG_fnc_createAmmoDump" )		then { T8RMG_fnc_createAmmoDump		= CFPPFLN ( ROOTDIR + "fn_createAmmoDump.sqf" ); };
if ( isnil "T8RMG_fnc_createFuelDump" )		then { T8RMG_fnc_createFuelDump		= CFPPFLN ( ROOTDIR + "fn_createFuelDump.sqf" ); };
if ( isnil "T8RMG_fnc_createRadioTower" )	then { T8RMG_fnc_createRadioTower	= CFPPFLN ( ROOTDIR + "fn_createRadioTower.sqf" ); };
if ( isnil "T8RMG_fnc_createRecoverUGV" )	then { T8RMG_fnc_createRecoverUGV	= CFPPFLN ( ROOTDIR + "fn_createRecoverUGV.sqf" ); };
if ( isnil "T8RMG_fnc_createRoadblock" )	then { T8RMG_fnc_createRoadblock	= CFPPFLN ( ROOTDIR + "fn_createRoadblock.sqf" ); };
if ( isnil "T8RMG_fnc_createMortarPos" )	then { T8RMG_fnc_createMortarPos	= CFPPFLN ( ROOTDIR + "fn_createMortarPos.sqf" ); };
if ( isnil "T8RMG_fnc_findObjectivePos" )	then { T8RMG_fnc_findObjectivePos	= CFPPFLN ( ROOTDIR + "fn_findObjectivePos.sqf" ); };
if ( isnil "T8RMG_fnc_handleReward" )		then { T8RMG_fnc_handleReward		= CFPPFLN ( ROOTDIR + "fn_handleReward.sqf" ); };
if ( isnil "T8RMG_fnc_handleConditions" )	then { T8RMG_fnc_handleConditions	= CFPPFLN ( ROOTDIR + "fn_handleConditions.sqf" ); };
if ( isnil "T8RMG_fnc_handleNewTasks" )		then { T8RMG_fnc_handleNewTasks		= CFPPFLN ( ROOTDIR + "fn_handleNewTasks.sqf" ); };
if ( isnil "T8RMG_fnc_handleDisplays" )		then { T8RMG_fnc_handleDisplays		= CFPPFLN ( ROOTDIR + "fn_handleDisplays.sqf" ); };

// for temp testing
if ( isnil "T8RMG_fnc_testFnc" )			then { T8RMG_fnc_testFnc			= CFPPFLN ( ROOTDIR + "fn_testFnc.sqf" ); };
if ( isnil "T8RMG_fnc_debug" )				then { T8RMG_fnc_debug				= CFPPFLN ( ROOTDIR + "fn_debug.sqf" ); };
*/			
		};
		
		class downloadData
		{
			tag = "T8L";
			file = "scripts\downloadData";

			addFunction(abortActionLaptop);
			addFunction(addActionLaptop);
			addFunction(removeActionLaptop);
			addFunction(actionLaptop);
		};
	};
};
	