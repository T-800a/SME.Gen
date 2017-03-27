/*
 =======================================================================================================================

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

	/*	
			scope			= 0;				// 0 - not used in mission / 1 - used in mission
			name			= "";				// display name
			type			= "town";			// desc
			allowedTypes[]	= { "...", ... };	// mission types available for this type of side
			marker			= "";				// marker name that will be used to access marker
			position[]		= { 0, 0, 0 };		// marker position
			size[]			= { 100, 100 };		// marker size
			angle			= 45;				// marker angle
	*/

			scope			= 0;
			name			= "";
			type			= "town";
			allowedTypes[]	= { "occupy", "mortars", "resupplies", "killHVT", "intelHVT" };
		//	allowedTypes[]	= { "intelHVT", "killHVT" };
		//	allowedTypes[]	= { "mortars", "resupplies" };
			marker			= "";
			position[]		= { 0, 0, 0 };
			size[]			= { 300, 300 };
			angle			= 0;
		};

		class base_mil
		{
			scope			= 0;
			name			= "";
			type			= "military";
			allowedTypes[]	= { "occupy_mil", "mortars", "resupplies", "killHVT", "intelHVT" };
		//	allowedTypes[]	= { "intelHVT", "killHVT" };
		//	allowedTypes[]	= { "mortars", "resupplies" };
			marker			= "";
			position[]		= { 0, 0, 0 };
			size[]			= { 200, 200 };
			angle			= 0;
		};
		
		class base_comp
		{
			scope			= 0;
			name			= "";
			type			= "compound";
			allowedTypes[]	= { "radiotower", "recoverUGV", "getIntel", "getIntelFollowUP" };
		//	allowedTypes[]	= { "getIntelFollowUP" };
			marker			= "";
			position[]		= { 0, 0, 0 };
			size[]			= { 250, 250 };
			angle			= 0;
		};
		
		class base_field
		{
			scope			= 0;
			name			= "";
			type			= "field";
			allowedTypes[]	= { "heliCrash" };
			marker			= "";
			position[]		= { 0, 0, 0 };
			size[]			= { 300, 300 };
			angle			= 0;
		};
		
		class base_road
		{
			scope			= 0;
			name			= "";
			type			= "road";
			allowedTypes[]	= { "convoy", "roadblock", "roadblockHouse", "roadIED", "roadIEDintel" };
		//	allowedTypes[]	= { "roadIEDintel" };
			marker			= "";
			position[]		= { 0, 0, 0 };
			size[]			= { 200, 80 };
			angle			= 0;
		};
		
		
	// IFA3 base locations
	
		class base_field_IFA3 : base_field
		{
			size[]			= { 150, 150 };
			allowedTypes[]	= { "IFA3_flak", "IFA3_mortars" };
		};
		
		class base_road_IFA3 : base_road
		{
			allowedTypes[]	= { "convoy", "IFA3_roadblock" };
		};
		
		class base_town_IFA3 : base_town
		{
			size[]			= { 300, 300 };
//			allowedTypes[]	= { "intelHVT" };
			allowedTypes[]	= { "occupy", "IFA3_mortars", "resupplies", "killHVT", "intelHVT" };
		};

		class base_mil_IFA3 : base_mil
		{
			size[]			= { 200, 200 };
			allowedTypes[]	= { "occupy_mil", "IFA3_mortars", "resupplies", "killHVT", "intelHVT" };
		};	
		
		class base_comp_IFA3 : base_comp
		{
			size[]			= { 200, 200 };
			allowedTypes[]	= { "IFA3_ammobase", "IFA3_radarbase" };
		};
	};

	// --------------------------------------------------------------
	//	MAPS
	//
	
	#include <maps\altis.hpp>
	
	#include <maps\mske.hpp>
	
	#include <maps\takistan.hpp>
	
	#include <maps\chernarus.hpp>
	
	#include <maps\staszow.hpp>
	
	#include <maps\taunus.hpp>

};
