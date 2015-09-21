/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionSites.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class missionSites
{
	// --------------------------------------------------------------
	//	BASE MAP
	//
	
	class base_map
	{
		class base_town 
		{
			scope			= 0;													// 0 - not used in mission / 1 - used in mission
			name			= "";													// display name
			type			= "town";												// desc
			allowedTypes[]	= { "occupy", "mortars", "resupplies", "killHVT" };		// mission types available for this type of side
			marker			= "";													// marker name that will be used to access marker
			position[]		= { 0, 0, 0 };											// marker position
			size[]			= { 300, 300 };											// marker size
			angle			= 0;													// marker angle
		};

		class base_mil
		{
			scope		= 0;
			name		= "";
			type		= "military";
			allowedTypes[]	= { "occupy_mil", "mortars", "resupplies" };
			marker		= "";
			position[]	= { 0, 0, 0 };
			size[]		= { 200, 200 };
			angle		= 0;
		};
		
		class base_comp
		{
			scope		= 0;
			name		= "";
			type		= "compound";
			allowedTypes[]	= { "radiotower", "recoverUGV", "getIntel" };
			marker		= "";
			position[]	= { 0, 0, 0 };
			size[]		= { 250, 250 };
			angle		= 0;
		};
		
		class base_road
		{
			scope		= 0;
			name		= "";
			type		= "road";
			allowedTypes[]	= { "convoy", "roadblock", "roadblockHouse" };
			marker		= "";
			position[]	= { 0, 0, 0 };
			size[]		= { 200, 80 };
			angle		= 0;
		};	
	};

	// --------------------------------------------------------------
	//	MAPS
	//
	
	#include <maps\altis.hpp>
	
	#include <maps\mske.hpp>

};
