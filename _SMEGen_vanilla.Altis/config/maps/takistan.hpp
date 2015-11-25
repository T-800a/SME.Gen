/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionSites.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


class Takistan : base_map
{

	class base_mil_tak : base_mil		{ size[] = { 150, 150 }; };
	class base_comp_tak : base_comp		{ size[] = { 100, 100 }; };
	

	// --------------------------------------------------------------
	// missionSites - TOWNS

	class town_timurkalay : base_town 
	{
		scope = 1;
		name = "Timurkalay";
		marker = "site_town_timurkalay";
		position[] = { 8911.36, 5320.67, 0 };
	};

	class town_garmarud : base_town 
	{
		scope = 1;
		name = "Garmarud";
		marker = "site_town_garmarud";
		position[] = { 9123.36, 6753.96, 0 };
	};

	class town_garmsar : base_town 
	{
		scope = 1;
		name = "Garmsar";
		marker = "site_town_garmsar";
		position[] = { 10876.3, 6302.07, 0 };
	};

	class town_imarat : base_town 
	{
		scope = 1;
		name = "Imarat";
		marker = "site_town_imarat";
		position[] = { 8249.79, 7782.63, 0 };
	};

	class town_bastam : base_town 
	{
		scope = 1;
		name = "Bastam";
		marker = "site_town_bastam";
		position[] = { 5686.21, 8948.05, 0 };
	};

	class town_falar : base_town 
	{
		scope = 1;
		name = "Falar";
		marker = "site_town_falar";
		position[] = { 5991.5, 7288.02, 0 };
	};

	class town_feruzabad : base_town 
	{
		scope = 1;
		name = "Feruz Abad";
		marker = "site_town_feruzabad";
		position[] = { 5258.86, 6196.55, 0 };
	};

	class town_anar : base_town 
	{
		scope = 1;
		name = "Anar";
		marker = "site_town_anar";
		position[] = { 5884.28, 5696.47, 0 };
	};

	class town_kakaru : base_town 
	{
		scope = 1;
		name = "Kakaru";
		marker = "site_town_kakaru";
		position[] = { 5299.5, 4752.44, 0 };
	};

	class town_sakhe : base_town 
	{
		scope = 1;
		name = "Sakhe";
		marker = "site_town_sakhe";
		position[] = { 3786.44, 4439.73, 0 };
	};

	class town_huzrutimam : base_town 
	{
		scope = 1;
		name = "Huzrutimam";
		marker = "site_town_huzrutimam";
		position[] = { 6090.75, 1162.47, 0 };
	};

	class town_chakchak : base_town 
	{
		scope = 1;
		name = "Chak Chak";
		marker = "site_town_chakchak";
		position[] = { 4428.45, 678.773, 0 };
	};

	class town_ahmaday : base_town 
	{
		scope = 1;
		name = "Ahmaday";
		marker = "site_town_ahmaday";
		position[] = { 3574.33, 1251.21, 0 };
	};

	class town_jilavur : base_town 
	{
		scope = 1;
		name = "Jilavur";
		marker = "site_town_jilavur";
		position[] = { 2511.97, 5097.01, 0 };
	};

	class town_khushab : base_town 
	{
		scope = 1;
		name = "Khushab";
		marker = "site_town_khushab";
		position[] = { 1565.08, 5720.88, 0 };
	};

	class town_mulladost : base_town 
	{
		scope = 1;
		name = "Mulladost";
		marker = "site_town_mulladost";
		position[] = { 2045.85, 7695.78, 0 };
	};

	class town_gospandi : base_town 
	{
		scope = 1;
		name = "Gospandi";
		marker = "site_town_gospandi";
		position[] = { 3649.58, 8591.53, 0 };
	};

	class town_nagara : base_town 
	{
		scope = 1;
		name = "Nagara";
		marker = "site_town_nagara";
		position[] = { 3082.68, 9952.6, 0 };
	};

	class town_nur : base_town 
	{
		scope = 1;
		name = "Nur";
		marker = "site_town_nur";
		position[] = { 1841.74, 11877.8, 0 };
	};

	class town_rasman : base_town 
	{
		scope = 1;
		name = "Rasman";
		marker = "site_town_rasman";
		position[] = { 6328.99, 11292.7, 0 };
	};

	class town_zavarak : base_town 
	{
		scope = 1;
		name = "Zavarak";
		marker = "site_town_zavarak";
		position[] = { 9858.55, 11470.2, 0 };
	};

	class town_karachinar : base_town 
	{
		scope = 1;
		name = "Karachinar";
		marker = "site_town_karachinar";
		position[] = { 12330.3, 10457.3, 0 };
	};

	class town_ravanay : base_town 
	{
		scope = 1;
		name = "Ravanay";
		marker = "site_town_ravanay";
		position[] = { 11525.5, 8369.75, 0 };
	};

	class town_chaman : base_town 
	{
		scope = 1;
		name = "Chaman";
		marker = "site_town_chaman";
		position[] = { 628.229, 2869.07, 0 };
	};




	// --------------------------------------------------------------
	// missionSites - ROADS




	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS

	class comp_feruzabad_ENE : base_comp_tak 
	{
		scope = 1;
		name = "ENE of Feruz Abad";
		marker = "site_comp_feruzabad_ENE";
		position[] = { 5537.34, 6306.87, 0 };
	};

	class comp_feruzabad_SW : base_comp_tak 
	{
		scope = 1;
		name = "SW of Feruz Abad";
		marker = "site_comp_feruzabad_SW";
		position[] = { 4531.14, 5716.83, 0 };
	};

	class comp_bastam_WNW : base_comp_tak 
	{
		scope = 1;
		name = "WNW of Bastam";
		marker = "site_comp_bastam_WNW";
		position[] = { 5809.2, 9014.71, 0 };
	};

	class comp_falar_NNW : base_comp_tak 
	{
		scope = 1;
		name = "NNW of Falar";
		marker = "site_comp_falar_NNW";
		position[] = { 5999.08, 7575.97, 0 };
	};

	class comp_rasman_ESE : base_comp_tak 
	{
		scope = 1;
		name = "ESE of Rasman";
		marker = "site_comp_rasman_ESE";
		position[] = { 6404.31, 10956.1, 0 };
	};

	class comp_bastam_N : base_comp_tak 
	{
		scope = 1;
		name = "N of Bastam";
		marker = "site_comp_bastam_N";
		position[] = { 5823.1, 9953.84, 0 };
	};

	class comp_khushab_ESE : base_comp_tak 
	{
		scope = 1;
		name = "ESE of Khushab";
		marker = "site_comp_khushab_ESE";
		position[] = { 1648.4, 5609.67, 0 };
	};

	class comp_zavarak_SE : base_comp_tak 
	{
		scope = 1;
		name = "SE of Zavarak";
		marker = "site_comp_zavarak_SE";
		position[] = { 10517.5, 10941.1, 0 };
	};

	class comp_karachinar_NW : base_comp_tak 
	{
		scope = 1;
		name = "NW of Karachinar";
		marker = "site_comp_karachinar_NW";
		position[] = { 11891.4, 10688.2, 0 };
	};

	class comp_karachinar_NNW : base_comp_tak 
	{
		scope = 1;
		name = "NNW of Karachinar";
		marker = "site_comp_karachinar_NNW";
		position[] = { 11684.8, 11482.1, 0 };
	};

	class comp_ravanay_S : base_comp_tak 
	{
		scope = 1;
		name = "S of Ravanay";
		marker = "site_comp_ravanay_S";
		position[] = { 11538.6, 8156.24, 0 };
	};

	class comp_garmsar_E : base_comp_tak 
	{
		scope = 1;
		name = "E of Garmsar";
		marker = "site_comp_garmsar_E";
		position[] = { 10678.8, 6416.51, 0 };
	};

	class comp_imarat_SE : base_comp_tak 
	{
		scope = 1;
		name = "SE of Imarat";
		marker = "site_comp_imarat_SE";
		position[] = { 8361.27, 7722.21, 0 };
	};

	class comp_bastam_ESE : base_comp_tak 
	{
		scope = 1;
		name = "ESE of Bastam";
		marker = "site_comp_bastam_ESE";
		position[] = { 6918.71, 8780.15, 0 };
	};

	class comp_kakaru_NE : base_comp_tak 
	{
		scope = 1;
		name = "NE of Kakaru";
		marker = "site_comp_kakaru_NE";
		position[] = { 5385.29, 4790.43, 0 };
	};

	class comp_shukurkalay_NE : base_comp_tak 
	{
		scope = 1;
		name = "NE of Shukurkalay";
		marker = "site_comp_shukurkalay_NE";
		position[] = { 1731.82, 3752.64, 0 };
	};

	class comp_mulladost_SSW : base_comp_tak 
	{
		scope = 1;
		name = "SSW of Mulladost";
		marker = "site_comp_mulladost_SSW";
		position[] = { 2000.76, 7655.45, 0 };
	};

	class comp_lalezar_W : base_comp_tak 
	{
		scope = 1;
		name = "W of Lalezar";
		marker = "site_comp_lalezar_W";
		position[] = { 4321.5, 9391.02, 0 };
	};

	class comp_nur_WNW : base_comp_tak 
	{
		scope = 1;
		name = "WNW of Nur";
		marker = "site_comp_nur_WNW";
		position[] = { 1614.34, 11985.1, 0 };
	};

	class comp_nagara_oilfield_SE : base_comp_tak 
	{
		scope = 1;
		name = "SE of Nagara Oilfield";
		marker = "site_comp_nagara_oilfield_SE";
		position[] = { 3718.73, 10986.7, 0 };
	};
	
	class comp_sakhe_NNE : base_comp_tak 
	{
		scope = 1;
		name = "NNE of Sakhe";
		marker = "site_comp_sakhe_NNE";
		position[] = { 3731.45, 4565.84, 0 };
	};

	class comp_ahmaday_SSW : base_comp_tak 
	{
		scope = 1;
		name = "SSW of Ahmaday";
		marker = "site_comp_ahmaday_SSW";
		position[] = { 3542.52, 1177.91, 0 };
	};

	class comp_chakchak_NNE : base_comp_tak 
	{
		scope = 1;
		name = "NNE of Chak Chak";
		marker = "site_comp_chakchak_NNE";
		position[] = { 4602.69, 1393.01, 0 };
	};

	class comp_huzrutimam_SE : base_comp_tak 
	{
		scope = 1;
		name = "SE of Huzrutimam";
		marker = "site_comp_huzrutimam_SE";
		position[] = { 6102.66, 1084.93, 0 };
	};



	// --------------------------------------------------------------
	// missionSites - MILITARY

	class mil_garmsar : base_mil_tak 
	{
		scope = 1;
		name = "Garmsar Military Base";
		marker = "site_mil_garmsar";
		position[] = { 10436.4, 6428.12, 0 };
	};

	class mil_feruzabad : base_mil_tak 
	{
		scope = 1;
		name = "Feruz Abad Military Base";
		marker = "site_mil_feruzabad";
		position[] = { 5162.61, 6075.55, 0 };
	};
	
	class mil_jilavur : base_mil_tak 
	{
		scope = 1;
		name = "Jilavur Military Base";
		marker = "site_mil_jilavur";
		position[] = { 2629.41, 5095.89, 0 };
	};

	class mil_militarybase_01 : base_mil_tak 
	{
		scope = 1;
		name = "Rasman Airport";
		marker = "site_mil_militarybase_01";
		position[] = { 5850.36, 11286.7, 0 };
	};
	
	class mil_militarybase_02 : base_mil_tak 
	{
		scope = 1;
		name = "Rasman Airport";
		marker = "site_mil_militarybase_02";
		position[] = { 6077.07, 11499.5, 0 };
	};
	
	class mil_mine : base_mil_tak 
	{
		scope = 1;
		name = "mine Military Base";
		marker = "site_mil_mine";
		position[] = { 5059.38, 6874.79, 0 };
	};

	class mil_sagram : base_mil_tak 
	{
		scope = 1;
		name = "Sagram Military Base";
		marker = "site_mil_sagram";
		position[] = { 9357.72, 10023.2, 0 };
	};

	class mil_lalezar : base_mil_tak 
	{
		scope = 1;
		name = "Lalezar Military Base";
		marker = "site_mil_lalezar";
		position[] = { 4651.88, 9454.6, 0 };
	};
};