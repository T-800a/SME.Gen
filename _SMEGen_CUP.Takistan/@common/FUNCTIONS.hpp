/*
 =======================================================================================================================

	@common
 
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

	class T8C
	{	
		class init
		{
			file = "@common\fnc_init";
			addFunctionPre(vars);
		};

		class hint
		{
			file = "@common\fnc";
			addFunction(hintProcess);
			addFunction(hintShow);
		};
		
		class gear
		{
			file = "@common\fnc";
			addFunction(getGear);
			addFunction(setGear);
		};
		
		class debug
		{
			file = "@common\fnc";
			addFunction(debug);
		};
		
		class utility
		{
			file = "@common\fnc";
			addFunction(registerUnitsCurator);
		};
	};	

// };
	