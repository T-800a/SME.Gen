/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		FUNCTIONS.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
 =======================================================================================================================
*/

#define addFunction(fncName) class fncName { headerType = -1; }
#define addFunctionPre(fncName) class fncName { headerType = -1; preInit = 1; }
#define addFunctionPost(fncName) class fncName { headerType = -1; postInit = 1; }

// class cfgFunctions
// {

	class T8SME_INIT
	{	
		class init
		{
			file = "@SMEGen\fnc_init";
			
			addFunctionPre(vars);
			addFunctionPost(server);
			addFunctionPost(client);
		};
	};
	
	class T8SME_server
	{	
		class randomMission
		{
			file = "@SMEGen\fnc_srv";
						
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
			addFunction(createRoadIED);
			addFunction(createRoadblock);
			addFunction(createRoadblockHouse);
			addFunction(createSmallCamp);
			addFunction(createVehiclePatrols);
			addFunction(fillUnitArray);
			addFunction(findObjectivePos);
			addFunction(findObjectivePositions);
			addFunction(getVehicleClass);
			addFunction(getVehicleGroup);
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

	class T8SME_client
	{
		class client
		{
			file = "@SMEGen\fnc_cli";
			
			addFunction(addActionIntel);
			addFunction(addDiary);
			addFunction(checkGetIn);
			addFunction(checkSlots);
			addFunction(checkSwitchSeat);
			addFunction(debugKeysAdd);
			addFunction(debugKeysPress);
			addFunction(debugSiteMarkers);
			addFunction(drawMapIcons);
			addFunction(handleReward);
			addFunction(handleVehicle);
			addFunction(keysAdd);
			addFunction(keysPress);
			addFunction(restricVehicle);
			addFunction(serviceVehicle);
			addFunction(updateArsenal);
			addFunction(welcome);
		};
	};

	class FAR
	{
		class revive
		{
			file = "@SMEGen\fnc_rev";
			
			addFunctionPost(INIT);

			addFunction(broadcastDeath);
			addFunction(carry);
			addFunction(checkCarrying);
			addFunction(checkDragging);
			addFunction(checkFAK);
			addFunction(checkFriendlies);
			addFunction(checkIsMedic);
			addFunction(checkRevive);
			addFunction(checkSuicide);
			addFunction(deadCam);
			addFunction(disconnectMe);
			addFunction(drag);
			addFunction(handleActions);
			addFunction(handleDamage);
			addFunction(handleRevive);
			addFunction(isFriendlyMedic);
			addFunction(killMe);
			addFunction(playerActions);
			addFunction(playerINIT);
			addFunction(playerUnconscious);
			addFunction(publicEH);
			addFunction(release);
		};
	};

// };