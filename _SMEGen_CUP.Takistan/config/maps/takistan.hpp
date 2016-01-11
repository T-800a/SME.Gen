/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionSites.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


class Takistan : base_map
{

	class base_town_tak : base_town		{ size[] = { 250, 250 }; };
	class base_mil_tak : base_mil		{ size[] = { 150, 150 }; };
	class base_comp_tak : base_comp		{ size[] = { 100, 100 }; };
	

	// --------------------------------------------------------------
	// missionSites - TOWNS

	class town_timurkalay : base_town_tak 
	{
		scope = 1;
		name = "Timurkalay";
		marker = "site_town_timurkalay";
		position[] = { 8911.36, 5320.67, 0 };
	};

	class town_garmarud : base_town_tak 
	{
		scope = 1;
		name = "Garmarud";
		marker = "site_town_garmarud";
		position[] = { 9123.36, 6753.96, 0 };
	};

	class town_garmsar : base_town_tak 
	{
		scope = 1;
		name = "Garmsar";
		marker = "site_town_garmsar";
		position[] = { 10876.3, 6302.07, 0 };
	};

	class town_imarat : base_town_tak 
	{
		scope = 1;
		name = "Imarat";
		marker = "site_town_imarat";
		position[] = { 8249.79, 7782.63, 0 };
	};

	class town_bastam : base_town_tak 
	{
		scope = 1;
		name = "Bastam";
		marker = "site_town_bastam";
		position[] = { 5686.21, 8948.05, 0 };
	};

	class town_falar : base_town_tak 
	{
		scope = 1;
		name = "Falar";
		marker = "site_town_falar";
		position[] = { 5991.5, 7288.02, 0 };
	};

	class town_feruzabad : base_town_tak 
	{
		scope = 1;
		name = "Feruz Abad";
		marker = "site_town_feruzabad";
		position[] = { 5258.86, 6196.55, 0 };
	};

	class town_anar : base_town_tak 
	{
		scope = 1;
		name = "Anar";
		marker = "site_town_anar";
		position[] = { 5884.28, 5696.47, 0 };
	};

	class town_kakaru : base_town_tak 
	{
		scope = 1;
		name = "Kakaru";
		marker = "site_town_kakaru";
		position[] = { 5299.5, 4752.44, 0 };
	};

	class town_sakhe : base_town_tak 
	{
		scope = 1;
		name = "Sakhe";
		marker = "site_town_sakhe";
		position[] = { 3786.44, 4439.73, 0 };
	};

	class town_huzrutimam : base_town_tak 
	{
		scope = 1;
		name = "Huzrutimam";
		marker = "site_town_huzrutimam";
		position[] = { 6090.75, 1162.47, 0 };
	};

	class town_chakchak : base_town_tak 
	{
		scope = 1;
		name = "Chak Chak";
		marker = "site_town_chakchak";
		position[] = { 4428.45, 678.773, 0 };
	};

	class town_ahmaday : base_town_tak 
	{
		scope = 1;
		name = "Ahmaday";
		marker = "site_town_ahmaday";
		position[] = { 3574.33, 1251.21, 0 };
	};

	class town_jilavur : base_town_tak 
	{
		scope = 1;
		name = "Jilavur";
		marker = "site_town_jilavur";
		position[] = { 2511.97, 5097.01, 0 };
	};

	class town_khushab : base_town_tak 
	{
		scope = 1;
		name = "Khushab";
		marker = "site_town_khushab";
		position[] = { 1565.08, 5720.88, 0 };
	};

	class town_mulladost : base_town_tak 
	{
		scope = 1;
		name = "Mulladost";
		marker = "site_town_mulladost";
		position[] = { 2045.85, 7695.78, 0 };
	};

	class town_gospandi : base_town_tak 
	{
		scope = 1;
		name = "Gospandi";
		marker = "site_town_gospandi";
		position[] = { 3649.58, 8591.53, 0 };
	};

	class town_nagara : base_town_tak 
	{
		scope = 1;
		name = "Nagara";
		marker = "site_town_nagara";
		position[] = { 3082.68, 9952.6, 0 };
	};

	class town_nur : base_town_tak 
	{
		scope = 1;
		name = "Nur";
		marker = "site_town_nur";
		position[] = { 1841.74, 11877.8, 0 };
	};

	class town_rasman : base_town_tak 
	{
		scope = 1;
		name = "Rasman";
		marker = "site_town_rasman";
		position[] = { 6328.99, 11292.7, 0 };
	};

	class town_zavarak : base_town_tak 
	{
		scope = 1;
		name = "Zavarak";
		marker = "site_town_zavarak";
		position[] = { 9858.55, 11470.2, 0 };
	};

	class town_karachinar : base_town_tak 
	{
		scope = 1;
		name = "Karachinar";
		marker = "site_town_karachinar";
		position[] = { 12330.3, 10457.3, 0 };
	};

	class town_ravanay : base_town_tak 
	{
		scope = 1;
		name = "Ravanay";
		marker = "site_town_ravanay";
		position[] = { 11525.5, 8369.75, 0 };
	};

	class town_chaman : base_town_tak 
	{
		scope = 1;
		name = "Chaman";
		marker = "site_town_chaman";
		position[] = { 628.229, 2869.07, 0 };
	};




	// --------------------------------------------------------------
	// missionSites - ROADS

	class road_timurkalay_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Timurkalay";
		marker = "site_road_timurkalay_SW";
		position[] = { 8730.24, 4949.63, 0 };
		angle = 273;
	};

	class road_timurkalay_NNE : base_road 
	{
		scope = 1;
		name = "Road NNE of Timurkalay";
		marker = "site_road_timurkalay_NNE";
		position[] = { 9067.14, 5937.4, 0 };
		angle = 317;
	};

	class road_garmarud_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Garmarud";
		marker = "site_road_garmarud_ESE";
		position[] = { 9776.04, 6483.76, 0 };
		angle = 378;
	};

	class road_ravanay_N : base_road 
	{
		scope = 1;
		name = "Road N of Ravanay";
		marker = "site_road_ravanay_N";
		position[] = { 11594.3, 8635.46, 0 };
		angle = 98;
	};

	class road_karachinar_WNW : base_road 
	{
		scope = 1;
		name = "Road WNW of Karachinar";
		marker = "site_road_karachinar_WNW";
		position[] = { 11341.4, 10925.3, 0 };
		angle = 177;
	};

	class road_zavarak_SSE : base_road 
	{
		scope = 1;
		name = "Road SSE of Zavarak";
		marker = "site_road_zavarak_SSE";
		position[] = { 10126.2, 11351.5, 0 };
		angle = 214;
	};

	class road_sagram_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Sagram";
		marker = "site_road_sagram_NE";
		position[] = { 9665.79, 10369.5, 0 };
		angle = 309;
	};

	class road_sagram_S : base_road 
	{
		scope = 1;
		name = "Road S of Sagram";
		marker = "site_road_sagram_S";
		position[] = { 9302.75, 9002.14, 0 };
		angle = 289;
	};

	class road_rasman_S : base_road 
	{
		scope = 1;
		name = "Road S of Rasman";
		marker = "site_road_rasman_S";
		position[] = { 6088.54, 10841.6, 0 };
		angle = 295;
	};

	class road_lalezar_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Lalezar";
		marker = "site_road_lalezar_NE";
		position[] = { 4898.29, 9814.89, 0 };
		angle = 346;
	};

	class road_bastam_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Bastam";
		marker = "site_road_w_SW";
		position[] = { 5666.26, 8579.44, 0 };
		angle = 249;
	};

	class road_imarat_SE : base_road 
	{
		scope = 1;
		name = "Road SE of Imarat";
		marker = "site_road_imarat_SE";
		position[] = { 8468.36, 7545.34, 0 };
		angle = 410;
	};

	class road_nar_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Nar";
		marker = "site_road_nar_SW";
		position[] = { 7371.21, 8453.62, 0 };
		angle = 424;
	};

	class road_falar_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Falar";
		marker = "site_road_falar_ESE";
		position[] = { 6808.53, 7048.17, 0 };
		angle = 105;
	};

	class road_anar_SSE : base_road 
	{
		scope = 1;
		name = "Road SSE of Anar";
		marker = "site_road_anar_SSE";
		position[] = { 6299.7, 5169.4, 0 };
		angle = 391;
	};

	class road_daryache_ENE : base_road 
	{
		scope = 1;
		name = "Road ENE of Daryache";
		marker = "site_road_daryache_ENE";
		position[] = { 5271.65, 5053.61, 0 };
		angle = 422;
	};

	class road_feruzabad_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Feruz Abad";
		marker = "site_road_feruzabad_WSW";
		position[] = { 4042.05, 5650.22, 0 };
		angle = 363;
	};

	class road_jilavur_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Jilavur";
		marker = "site_road_jilavur_NE";
		position[] = { 2925.01, 5363.93, 0 };
		angle = 328;
	};

	class road_sakhe_NNE : base_road 
	{
		scope = 1;
		name = "Road NNE of Sakhe";
		marker = "site_road_sakhe_NNE";
		position[] = { 3603.75, 4313.84, 0 };
		angle = 323;
	};

	class road_jilavur_SSW : base_road 
	{
		scope = 1;
		name = "Road SSW of Jilavur";
		marker = "site_road_jilavur_SSW";
		position[] = { 2182.5, 4468.77, 0 };
		angle = 316;
	};

	class road_khushab_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Khushab";
		marker = "site_road_khushab_SW";
		position[] = { 1020.39, 5163.6, 0 };
		angle = 307;
	};

	class road_shukurkalay_NW : base_road 
	{
		scope = 1;
		name = "Road NW of Shukurkalay";
		marker = "site_road_shukurkalay_NW";
		position[] = { 815.196, 4299.28, 0 };
		angle = 220;
	};

	class road_mulladost_ENE : base_road 
	{
		scope = 1;
		name = "Road ENE of Mulladost";
		marker = "site_road_mulladost_ENE";
		position[] = { 2611.09, 7827.89, 0 };
		angle = 352;
	};

	class road_lalezar_W : base_road 
	{
		scope = 1;
		name = "Road W of Lalezar";
		marker = "site_road_lalezar_W";
		position[] = { 3938.52, 9243.77, 0 };
		angle = 314;
	};

	class road_nagara_oilfield_E : base_road 
	{
		scope = 1;
		name = "Road E of Nagara Oilfield";
		marker = "site_road_nagara_oilfield_E";
		position[] = { 4155.67, 11016.4, 0 };
		angle = 301;
	};

	class road_nagara_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Nagara";
		marker = "site_road_nagara_ESE";
		position[] = { 3367.42, 9608.58, 0 };
		angle = 423;
	};

	class road_nur_SE : base_road 
	{
		scope = 1;
		name = "Road SE of Nur";
		marker = "site_road_nur_SE";
		position[] = { 2409.82, 11195.2, 0 };
		angle = 253;
	};

	class road_loymanaraoilfield_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Loy Manara oilfield";
		marker = "site_road_loymanaraoilfield_SW";
		position[] = { 6639.72, 1234.56, 0 };
		angle = 365;
	};

	class road_chakchak_E : base_road 
	{
		scope = 1;
		name = "Road E of Chak Chak";
		marker = "site_road_chakchak_E";
		position[] = { 5081.51, 871.659, 0 };
		angle = 346;
	};

	class road_chakchak_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Chak Chak";
		marker = "site_road_chakchak_WSW";
		position[] = { 3958.85, 522.643, 0 };
		angle = 363;
	};

	class road_ahmaday_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Ahmaday";
		marker = "site_road_ahmaday_NE";
		position[] = { 4113.64, 1728.15, 0 };
		angle = 114;
	};

	class road_shukurkalay_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Shukurkalay";
		marker = "site_road_shukurkalay_SW";
		position[] = { 1189.47, 3287.67, 0 };
		angle = 318;
	};

	class road_saresangpass_SSE : base_road 
	{
		scope = 1;
		name = "Road SSE of Sare Sang pass";
		marker = "site_road_saresangpass_SSE";
		position[] = { 4172.01, 2302.97, 0 };
		angle = 254;
	};

	class road_darbangpass_W : base_road 
	{
		scope = 1;
		name = "Road W of Darbang pass";
		marker = "site_road_darbangpass_W";
		position[] = { 5243.59, 3670.24, 0 };
		angle = 148;
	};



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

	class comp_mulladost_W : base_comp_tak 
	{
		scope = 1;
		name = "W of Mulladost";
		marker = "site_comp_mulladost_W";
		position[] = { 1340.5, 7744.2, 0 };
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


	// --------------------------------------------------------------
	// missionSites - FIELDS
	

	class field_huzrutimam_NNW : base_field 
	{
		scope = 1;
		name = "NNW of Huzrutimam";
		marker = "site_field_huzrutimam_NNW";
		position[] = { 5798.87, 1587.73, 0 };
	};

	class field_ahmaday_E : base_field 
	{
		scope = 1;
		name = "E of Ahmaday";
		marker = "site_field_ahmaday_E";
		position[] = { 4078.94, 1346.53, 0 };
	};

	class field_ahmaday_WSW : base_field 
	{
		scope = 1;
		name = "WSW of Ahmaday";
		marker = "site_field_ahmaday_WSW";
		position[] = { 2769.17, 944.563, 0 };
	};

	class field_sar_esangpass_ESE : base_field 
	{
		scope = 1;
		name = "ESE of Sar_e Sang pass";
		marker = "site_field_sar_esangpass_ESE";
		position[] = { 4579.05, 2807.84, 0 };
	};

	class field_sakhe_WSW : base_field 
	{
		scope = 1;
		name = "WSW of Sakhe";
		marker = "site_field_sakhe_WSW";
		position[] = { 3243.83, 4107.03, 0 };
	};

	class field_jilavur_NW : base_field 
	{
		scope = 1;
		name = "NW of Jilavur";
		marker = "site_field_jilavur_NW";
		position[] = { 2205.67, 5377.2, 0 };
	};

	class field_nagara_SE : base_field 
	{
		scope = 1;
		name = "SE of Nagara";
		marker = "site_field_nagara_SE";
		position[] = { 3467.26, 9380.88, 0 };
	};

	class field_nagara_NNW : base_field 
	{
		scope = 1;
		name = "NNW of Nagara";
		marker = "site_field_nagara_NNW";
		position[] = { 2933.75, 10076, 0 };
	};

	class field_nagara_1oilfield_SSW : base_field 
	{
		scope = 1;
		name = "SSW of Nagara_1 oilfield";
		marker = "site_field_nagara_1oilfield_SSW";
		position[] = { 3484.92, 10555.2, 0 };
	};

	class field_nagara_1oilfield_SE : base_field 
	{
		scope = 1;
		name = "SE of Nagara_1 oilfield";
		marker = "site_field_nagara_1oilfield_SE";
		position[] = { 4173.45, 10381.4, 0 };
	};

	class field_shamali_SSE : base_field 
	{
		scope = 1;
		name = "SSE of Shamali";
		marker = "site_field_shamali_SSE";
		position[] = { 4253.81, 11290.2, 0 };
	};

	class field_nagara_1oilfield_WNW : base_field 
	{
		scope = 1;
		name = "WNW of Nagara_1 oilfield";
		marker = "site_field_nagara_1oilfield_WNW";
		position[] = { 3182.22, 11169.2, 0 };
	};

	class field_safidab_S : base_field 
	{
		scope = 1;
		name = "S of Safid Ab";
		marker = "site_field_safidab_S";
		position[] = { 6713.26, 11379.4, 0 };
	};

	class field_rasman_SE : base_field 
	{
		scope = 1;
		name = "SE of Rasman";
		marker = "site_field_rasman_SE";
		position[] = { 7006.41, 10321.3, 0 };
	};

	class field_nar_W : base_field 
	{
		scope = 1;
		name = "W of Nar";
		marker = "site_field_nar_W";
		position[] = { 7345.81, 9223.15, 0 };
	};

	class field_ravanay_SSE : base_field 
	{
		scope = 1;
		name = "SSE of Ravanay";
		marker = "site_field_ravanay_SSE";
		position[] = { 11768.4, 7611.86, 0 };
	};

	class field_ravanay_N : base_field 
	{
		scope = 1;
		name = "N of Ravanay";
		marker = "site_field_ravanay_N";
		position[] = { 11324.3, 9468.71, 0 };
	};

	class field_zavarak_SSE : base_field 
	{
		scope = 1;
		name = "SSE of Zavarak";
		marker = "site_field_zavarak_SSE";
		position[] = { 10279.8, 10724, 0 };
	};

	class field_sagram_S : base_field 
	{
		scope = 1;
		name = "S of Sagram";
		marker = "site_field_sagram_S";
		position[] = { 9272.45, 9210.61, 0 };
	};

	class field_imarat_WNW : base_field 
	{
		scope = 1;
		name = "WNW of Imarat";
		marker = "site_field_imarat_WNW";
		position[] = { 7552.27, 8133.71, 0 };
	};

	class field_garmarud_SE : base_field 
	{
		scope = 1;
		name = "SE of Garmarud";
		marker = "site_field_garmarud_SE";
		position[] = { 9501.71, 6365.14, 0 };
	};

	class field_garmsar_W : base_field 
	{
		scope = 1;
		name = "W of Garmsar";
		marker = "site_field_garmsar_W";
		position[] = { 10185.7, 6423.32, 0 };
	};
	
	class field_darbangpass_S : base_field 
	{
		scope = 1;
		name = "S of Darbang pass";
		marker = "site_field_darbangpass_S";
		position[] = { 5335.13, 3238.03, 0 };
	};

	class field_kakaru_E : base_field 
	{
		scope = 1;
		name = "E of Kakaru";
		marker = "site_field_kakaru_E";
		position[] = { 6079, 4741.95, 0 };
	};

	class field_kakaru_ENE : base_field 
	{
		scope = 1;
		name = "ENE of Kakaru";
		marker = "site_field_kakaru_ENE";
		position[] = { 5474.48, 4835.36, 0 };
	};

	class field_feruzabad_SW : base_field 
	{
		scope = 1;
		name = "SW of Feruz Abad";
		marker = "site_field_feruzabad_SW";
		position[] = { 4844.58, 5845.48, 0 };
	};

	class field_falar_SSW : base_field 
	{
		scope = 1;
		name = "SSW of Falar";
		marker = "site_field_falar_SSW";
		position[] = { 5889.97, 6692.82, 0 };
	};

	class field_falar_SE : base_field 
	{
		scope = 1;
		name = "SE of Falar";
		marker = "site_field_falar_SE";
		position[] = { 6910.62, 6461.85, 0 };
	};

	class field_timurkalay_WSW : base_field 
	{
		scope = 1;
		name = "WSW of Timurkalay";
		marker = "site_field_timurkalay_WSW";
		position[] = { 8358.9, 4909.46, 0 };
	};


	// END
};