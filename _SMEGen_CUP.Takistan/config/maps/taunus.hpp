/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		taunus.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


class Taunus : base_map
{

	class base_town_tau : base_town		{ size[] = { 250, 250 }; };
	class base_mil_tau : base_mil		{ size[] = { 150, 150 }; };
	class base_comp_tau : base_comp		{ size[] = { 100, 100 }; };
	

	// --------------------------------------------------------------
	// missionSites - TOWNS

	class town_niederursel : base_town 
	{
		scope = 1;
		name = "Niederursel";
		marker = "site_town_niederursel";
		position[] = { 19664.35, 4720.525, 0 };
	};

	class town_oberursel_west : base_town 
	{
		scope = 1;
		name = "Oberursel West";
		marker = "site_town_oberursel_west";
		position[] = { 16226.60, 7692.099, 0 };
	};
	
	class town_kronberg : base_town 
	{
		scope = 1;
		name = "Kronberg";
		marker = "site_town_kronberg";
		position[] = { 11488.93, 6460.254, 0 };
	};






	// --------------------------------------------------------------
	// missionSites - ROADS





	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS


	class comp_weisskirchen_NW : base_comp 
	{
		scope = 1;
		name = "NW of Weisskirchen";
		marker = "site_comp_weisskirchen_NW";
		position[] = { 17679.11, 6179.521, 0 };
	};

	class comp_oberursel_fabrik : base_comp 
	{
		scope = 1;
		name = "Oberursel Fabrik";
		marker = "site_comp_oberursel_fabrik";
		position[] = { 18697.71, 7778.163, 0 };
	};

	



	// --------------------------------------------------------------
	// missionSites - MILITARY

	class mil_Saalburg : base_mil 
	{
		scope = 1;
		name = "Saalburg";
		marker = "site_mil_saalburg";
		position[] = { 15480.97, 15892.27, 0 };
	};

	class mil_grosser_feldberg : base_mil 
	{
		scope = 1;
		name = "Grosser Feldberg";
		marker = "site_mil_grosser_feldberg";
		position[] = { 6813.308, 11681.34, 0 };
	};

	


	// --------------------------------------------------------------
	// missionSites - FIELDS
	




	// END
};