/*
 =======================================================================================================================

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
	// @common
	#include <..\@common\FUNCTIONS.hpp>	
	
	// T8 Units
	#include <..\T8\FUNCTIONS.hpp>

	// SME.Gen
	#include <..\@SMEGen\FUNCTIONS.hpp>
	
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
	