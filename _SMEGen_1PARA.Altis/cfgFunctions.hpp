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
			
			addFunction(addMapClick);
			addFunction(removeMapClick);
			addFunction(onMapClick);
			addFunction(switchFarSuicide);
			addFunction(hintProcess);
			addFunction(hintShow);
			addFunction(drawMapIcons);
			addFunction(checkSlots);
			addFunction(restricVehicle);
			addFunction(checkGetIn);
			addFunction(checkSwitchSeat);
			addFunction(updateArsenal);
			addFunction(handleReward);
			addFunction(debug);
			addFunction(welcome);
		};
		
		class randomMission
		{
			tag = "T8RMG";
			file = "@randomMission\f";
			
			addFunction(buildUnitArray);
			addFunction(checkFlatGround);
			addFunction(checkOutside);
			addFunction(cleanUP);
			addFunction(createAO);
			addFunction(createAmmoDump);
			addFunction(createAttack);
			addFunction(createConvoy);
			addFunction(createFuelDump);
			addFunction(createGetIntel);
			addFunction(createHVT);
			addFunction(createMarker);
			addFunction(createMortarPos);
			addFunction(createRadioTower);
			addFunction(createRecoverUGV);
			addFunction(createRoadblock);
			addFunction(debug);
			addFunction(findObjectivePos);
			addFunction(handleConditions);
			addFunction(handleDisplays);
			addFunction(handleNewTasks);
			addFunction(handleReward);
			addFunction(testFnc);
		
		};
		
		class downloadData
		{
			tag = "T8L";
			file = "scripts\downloadData";

			addFunction(abortActionLaptop);
			addFunction(actionLaptop);
			addFunction(addActionLaptop);
			addFunction(removeActionLaptop);
		};
	};
};
	