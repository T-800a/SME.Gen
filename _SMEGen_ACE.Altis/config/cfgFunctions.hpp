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
	// T8 Units
	#include <..\T8\FUNCTIONS.hpp>
	
	class T8C
	{
		class client
		{
			file = "@client\f";
			
			addFunction(addMapClick);
			addFunction(addDiary);
			addFunction(addActionIntel);
			addFunction(removeMapClick);
			addFunction(onMapClick);
			addFunction(switchFarSuicide);
			addFunction(hintProcess);
			addFunction(hintShow);
			addFunction(drawMapIcons);
			addFunction(checkSlots);
			addFunction(keysAdd);
			addFunction(keysPress);
			addFunction(serviceVehicle);
			addFunction(restricVehicle);
			addFunction(checkGetIn);
			addFunction(checkSwitchSeat);
			addFunction(updateArsenal);
			addFunction(handleReward);
			addFunction(handleVehicle);
			addFunction(debug);
			addFunction(debugKeysAdd);
			addFunction(debugKeysPress);
			addFunction(debugSiteMarkers);
			addFunction(welcome);
			
			addFunction(getGear);
			addFunction(setGear);
		};
	};

/*
	class FAR
	{
		class revive
		{
			file = "@client\r";
			
			addFunctionPost(INIT);

			addFunction(playerINIT);
			addFunction(handleActions);
			addFunction(playerActions);
			addFunction(handleDamage);
			addFunction(playerUnconscious);
			addFunction(handleRevive);
			addFunction(disconnectMe);
			addFunction(drag);
			addFunction(carry);
			addFunction(release);
			addFunction(publicEH);
			addFunction(checkRevive);
			addFunction(checkSuicide);
			addFunction(checkDragging);
			addFunction(checkCarrying);
			addFunction(checkIsMedic);
			addFunction(checkFAK);
			addFunction(isFriendlyMedic);
			addFunction(checkFriendlies);
			addFunction(broadcastDeath);
			addFunction(deadCam);
			addFunction(killMe);
		};
	};
*/
	
	class T8RMG
	{	
		class randomMission
		{
			file = "@randomMission\f";
			
			addFunction(INIT);
			
			addFunction(blowIED);
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
			addFunction(createRoadblockHouse);
			addFunction(createRoadIED);
			addFunction(createSmallCamp);
			addFunction(debug);
			addFunction(findObjectivePos);
			addFunction(findObjectivePositions);
			addFunction(getVehicleClass);
			addFunction(handleConditions);
			addFunction(handleDisplays);
			addFunction(handleFollowingTask);
			addFunction(handleNewTasks);
			addFunction(handleReward);
			addFunction(surrenderHVT);
			addFunction(testFnc);
			addFunction(unlockUGV);
		
		};
	};
	
	class T8L
	{
		class downloadData
		{
			file = "scripts\downloadData";

			addFunction(abortActionLaptop);
			addFunction(actionLaptop);
			addFunction(addActionLaptop);
			addFunction(removeActionLaptop);
		};
	};
};
	