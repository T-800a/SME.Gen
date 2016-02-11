/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		chernarus.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


class Chernarus : base_map
{

	class base_town_che : base_town		{ size[] = { 250, 250 }; };
	class base_mil_che : base_mil		{ size[] = { 150, 150 }; };
	class base_comp_che : base_comp		{ size[] = { 100, 100 }; };
	class base_field_che : base_field	{ size[] = { 200, 200 }; };
	

	// --------------------------------------------------------------
	// missionSites - TOWNS

	class town_chernogorsk : base_town 
	{
		scope = 1;
		name = "Chernogorsk";
		marker = "site_town_chernogorsk";
		position[] = { 6995.61, 2460.78, 0 };
	};

	class town_chernogorsk_factory : base_town_che 
	{
		scope = 1;
		name = "Chernogorsk Factory";
		marker = "site_town_chernogorsk_factory";
		position[] = { 6519.39, 2697.93, 0 };
	};
	
	class town_elektrozavodsk_harbour : base_town 
	{
		scope = 1;
		name = "Elektrozavodsk Harbour";
		marker = "site_town_elektrozavodsk_harbour";
		position[] = { 10167.2, 1863.12, 0 };
	};

	class town_elektrozavodsk : base_town 
	{
		scope = 1;
		name = "Elektrozavodsk";
		marker = "site_town_elektrozavodsk";
		position[] = { 10526.4, 2252.4, 0 };
	};

	class town_berezino_lumbermill : base_town_che 
	{
		scope = 1;
		name = "Berezino Lumber Mill";
		marker = "site_town_berezino_lumbermill";
		position[] = { 12771.8, 9668.16, 0 };
	};
	
	class town_berezino_harbour : base_town 
	{
		scope = 1;
		name = "Berezino Harbour";
		marker = "site_town_berezino_harbour";
		position[] = { 13012.2, 10056.9, 0 };
	};

	class town_berezino : base_town 
	{
		scope = 1;
		name = "Berezino";
		marker = "site_town_berezino";
		position[] = { 12041.3, 9092.68, 0 };
	};
	
	class town_zelenogorsk : base_town 
	{
		scope = 1;
		name = "Zelenogorsk";
		marker = "site_town_zelenogorsk";
		position[] = { 2754.34, 5287.49, 0 };
	};

	class town_pustoshka : base_town 
	{
		scope = 1;
		name = "Pustoshka";
		marker = "site_town_pustoshka";
		position[] = { 3070.05, 7942.67, 0 };
	};
		
	class town_sosnovka : base_town_che 
	{
		scope = 1;
		name = "Sosnovka";
		marker = "site_town_sosnovka";
		position[] = { 2529.72, 6385.3, 0 };
	};

	class town_pogorevka : base_town_che 
	{
		scope = 1;
		name = "Pogorevka";
		marker = "site_town_pogorevka";
		position[] = { 4475.75, 6416.84, 0 };
	};

	class town_rogovo : base_town_che 
	{
		scope = 1;
		name = "Rogovo";
		marker = "site_town_rogovo";
		position[] = { 4729.7, 6784.81, 0 };
	};

	class town_myshkino : base_town_che 
	{
		scope = 1;
		name = "Myshkino";
		marker = "site_town_myshkino";
		position[] = { 1983.12, 7343.45, 0 };
	};

	class town_vybor : base_town_che 
	{
		scope = 1;
		name = "Vybor";
		marker = "site_town_vybor";
		position[] = { 3824.57, 8857.72, 0 };
	};

	class town_lopatino : base_town_che 
	{
		scope = 1;
		name = "Lopatino";
		marker = "site_town_lopatino";
		position[] = { 2746.67, 9991.47, 0 };
	};

	class town_kabanino : base_town_che 
	{
		scope = 1;
		name = "Kabanino";
		marker = "site_town_kabanino";
		position[] = { 5351.49, 8579.26, 0 };
	};

	class town_grishino : base_town_che 
	{
		scope = 1;
		name = "Grishino";
		marker = "site_town_grishino";
		position[] = { 5988.44, 10344.7, 0 };
	};

	class town_starysobor : base_town_che 
	{
		scope = 1;
		name = "Stary Sobor";
		marker = "site_town_starysobor";
		position[] = { 6151.15, 7711.3, 0 };
	};

	class town_novysobor : base_town_che 
	{
		scope = 1;
		name = "Novy Sobor";
		marker = "site_town_novysobor";
		position[] = { 7075.24, 7682.72, 0 };
	};

	class town_vyshnoye : base_town_che 
	{
		scope = 1;
		name = "Vyshnoye";
		marker = "site_town_vyshnoye";
		position[] = { 6542.24, 6080.56, 0 };
	};

	class town_mogilevka : base_town_che 
	{
		scope = 1;
		name = "Mogilevka";
		marker = "site_town_mogilevka";
		position[] = { 7549.71, 5144.22, 0 };
	};

	class town_gorka : base_town_che 
	{
		scope = 1;
		name = "Gorka";
		marker = "site_town_gorka";
		position[] = { 9486.96, 8816.97, 0 };
	};

	class town_dubrovka : base_town_che 
	{
		scope = 1;
		name = "Dubrovka";
		marker = "site_town_dubrovka";
		position[] = { 10446.9, 9836.82, 0 };
	};

	class town_gvozdno : base_town_che 
	{
		scope = 1;
		name = "Gvozdno";
		marker = "site_town_gvozdno";
		position[] = { 8612.38, 11872.1, 0 };
	};

	class town_krasnostav : base_town_che 
	{
		scope = 1;
		name = "Krasnostav";
		marker = "site_town_krasnostav";
		position[] = { 11144.5, 12293, 0 };
	};

	class town_khelm : base_town_che 
	{
		scope = 1;
		name = "Khelm";
		marker = "site_town_khelm";
		position[] = { 12305.5, 10769.6, 0 };
	};

	class town_polana : base_town_che 
	{
		scope = 1;
		name = "Polana";
		marker = "site_town_polana";
		position[] = { 10686.9, 8043.06, 0 };
	};

	class town_nizhnoye : base_town_che 
	{
		scope = 1;
		name = "Nizhnoye";
		marker = "site_town_nizhnoye";
		position[] = { 12954.4, 8175.44, 0 };
	};

	class town_orlovets : base_town_che 
	{
		scope = 1;
		name = "Orlovets";
		marker = "site_town_orlovets";
		position[] = { 12152.6, 7265.61, 0 };
	};

	class town_solnichniy_factory : base_town_che 
	{
		scope = 1;
		name = "Solnichniy Factory";
		marker = "site_town_factory";
		position[] = { 13080.4, 7075.88, 0 };
	};

	class town_solnichniy : base_town_che 
	{
		scope = 1;
		name = "Solnichniy";
		marker = "site_town_solnichniy";
		position[] = { 13398, 6244.34, 0 };
	};

	class town_dolina : base_town_che 
	{
		scope = 1;
		name = "Dolina";
		marker = "site_town_dolina";
		position[] = { 11263.4, 6546.96, 0 };
	};

	class town_staroye : base_town_che 
	{
		scope = 1;
		name = "Staroye";
		marker = "site_town_staroye";
		position[] = { 10120.5, 5475.13, 0 };
	};

	class town_msta : base_town_che 
	{
		scope = 1;
		name = "Msta";
		marker = "site_town_msta";
		position[] = { 11300.4, 5478.78, 0 };
	};

	class town_kamyshovo : base_town_che 
	{
		scope = 1;
		name = "Kamyshovo";
		marker = "site_town_kamyshovo";
		position[] = { 12079.9, 3564.79, 0 };
	};

	class town_pusta : base_town_che 
	{
		scope = 1;
		name = "Pusta";
		marker = "site_town_pusta";
		position[] = { 9153.4, 3895.7, 0 };
	};

	class town_petrovka : base_town_che 
	{
		scope = 1;
		name = "Petrovka";
		marker = "site_town_petrovka";
		position[] = { 4990.82, 12515, 0 };
	};

	class town_nadezhdino : base_town_che 
	{
		scope = 1;
		name = "Nadezhdino";
		marker = "site_town_nadezhdino";
		position[] = { 5837.81, 4780.47, 0 };
	};

	class town_kozlovka : base_town_che 
	{
		scope = 1;
		name = "Kozlovka";
		marker = "site_town_kozlovka";
		position[] = { 4435.9, 4636.71, 0 };
	};

	class town_kamenka : base_town_che 
	{
		scope = 1;
		name = "Kamenka";
		marker = "site_town_kamenka";
		position[] = { 1874.63, 2237.18, 0 };
	};

	class town_pavlovo : base_town_che 
	{
		scope = 1;
		name = "Pavlovo";
		marker = "site_town_pavlovo";
		position[] = { 1695.11, 3846.44, 0 };
	};




	// --------------------------------------------------------------
	// missionSites - ROADS

	class road_baymutnaya_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Bay Mutnaya";
		marker = "site_road_baymutnaya_NE";
		position[] = { 6039.17, 2230.91, 0 };
		angle = 350;
	};

	class road_chyornayabay_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Chyornaya Bay";
		marker = "site_road_chyornayabay_SW";
		position[] = { 7404.71, 2847.01, 0 };
		angle = 127;
	};

	class road_chyornayabay_NW : base_road 
	{
		scope = 1;
		name = "Road NW of Chyornaya Bay";
		marker = "site_road_chyornayabay_NW";
		position[] = { 7223.03, 3299.65, 0 };
		angle = 163;
	};

	class road_vysota_WNW : base_road 
	{
		scope = 1;
		name = "Road WNW of Vysota";
		marker = "site_road_vysota_WNW";
		position[] = { 6043.76, 3694.32, 0 };
		angle = 219;
	};

	class road_capgolova_ENE : base_road 
	{
		scope = 1;
		name = "Road ENE of Cap Golova";
		marker = "site_road_capgolova_ENE";
		position[] = { 8645.08, 2548.3, 0 };
		angle = 250;
	};

	class road_elektrozavodsk_W : base_road 
	{
		scope = 1;
		name = "Road W of Elektrozavodsk";
		marker = "site_road_elektrozavodsk_W";
		position[] = { 9652.54, 2028.57, 0 };
		angle = 364;
	};

	class road_powerplant_NE : base_road 
	{
		scope = 1;
		name = "Road NE of power plant";
		marker = "site_road_powerplant_NE";
		position[] = { 10370.3, 2767.19, 0 };
		angle = 208;
	};

	class road_drakon_NW : base_road 
	{
		scope = 1;
		name = "Road NW of Drakon";
		marker = "site_road_drakon_NW";
		position[] = { 10914.3, 2841.33, 0 };
		angle = 295;
	};

	class road_quarry_SE : base_road 
	{
		scope = 1;
		name = "Road SE of quarry";
		marker = "site_road_quarry_SE";
		position[] = { 13405, 5830.83, 0 };
		angle = 281;
	};

	class road_factory_N : base_road 
	{
		scope = 1;
		name = "Road N of factory";
		marker = "site_road_factory_N";
		position[] = { 13079.5, 7426.25, 0 };
		angle = 438;
	};

	class road_baynizhnaya_NNW : base_road 
	{
		scope = 1;
		name = "Road NNW of Bay Nizhnaya";
		marker = "site_road_baynizhnaya_NNW";
		position[] = { 12830.1, 9035.25, 0 };
		angle = 104;
	};

	class road_lumbermill_WNW : base_road 
	{
		scope = 1;
		name = "Road WNW of lumber mill";
		marker = "site_road_lumbermill_WNW";
		position[] = { 12289.8, 9870.53, 0 };
		angle = 183;
	};

	class road_berezino_WNW : base_road 
	{
		scope = 1;
		name = "Road WNW of Berezino";
		marker = "site_road_berezino_WNW";
		position[] = { 11157.3, 9332.12, 0 };
		angle = 348;
	};

	class road_krasnostav_SSW : base_road 
	{
		scope = 1;
		name = "Road SSW of Krasnostav";
		marker = "site_road_krasnostav_SSW";
		position[] = { 10885.6, 11476.9, 0 };
		angle = 94;
	};

	class road_airstrip_SSE : base_road 
	{
		scope = 1;
		name = "Road SSE of airstrip";
		marker = "site_road_airstrip_SSE";
		position[] = { 12310.3, 12221, 0 };
		angle = 356;
	};

	class road_krasnostav_W : base_road 
	{
		scope = 1;
		name = "Road W of Krasnostav";
		marker = "site_road_krasnostav_W";
		position[] = { 10442.1, 12418.9, 0 };
		angle = 378;
	};

	class road_novylug_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Novy Lug";
		marker = "site_road_novylug_WSW";
		position[] = { 8790.28, 10992.1, 0 };
		angle = 234;
	};

	class road_passoreshka_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Pass Oreshka";
		marker = "site_road_passoreshka_WSW";
		position[] = { 9849.05, 6004.11, 0 };
		angle = 406;
	};

	class road_novysobor_SE : base_road 
	{
		scope = 1;
		name = "Road SE of Novy Sobor";
		marker = "site_road_novysobor_SE";
		position[] = { 7741.78, 7315.58, 0 };
		angle = 405;
	};

	class road_vyshnoye_ENE : base_road 
	{
		scope = 1;
		name = "Road ENE of Vyshnoye";
		marker = "site_road_vyshnoye_ENE";
		position[] = { 7128.43, 6432.14, 0 };
		angle = 412;
	};

	class road_novysobor_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Novy Sobor";
		marker = "site_road_novysobor_WSW";
		position[] = { 6892.15, 7625.56, 0 };
		angle = 343;
	};

	class road_starysobor_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Stary Sobor";
		marker = "site_road_starysobor_SW";
		position[] = { 5739.58, 7340.22, 0 };
		angle = 301;
	};

	class road_kabanino_SE : base_road 
	{
		scope = 1;
		name = "Road SE of Kabanino";
		marker = "site_road_kabanino_SE";
		position[] = { 5596.6, 8299.96, 0 };
		angle = 405;
	};

	class road_kabanino_W : base_road 
	{
		scope = 1;
		name = "Road W of Kabanino";
		marker = "site_road_kabanino_W";
		position[] = { 4591.05, 8786.37, 0 };
		angle = 392;
	};

	class road_vybor_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Vybor";
		marker = "site_road_vybor_NE";
		position[] = { 4402.47, 9401.29, 0 };
		angle = 143;
	};

	class road_lopatino_SSE : base_road 
	{
		scope = 1;
		name = "Road SSE of Lopatino";
		marker = "site_road_lopatino_SSE";
		position[] = { 2954.01, 9342.36, 0 };
		angle = 206;
	};

	class road_vybor_SSW : base_road 
	{
		scope = 1;
		name = "Road SSW of Vybor";
		marker = "site_road_vybor_SSW";
		position[] = { 3622, 8535.77, 0 };
		angle = 139;
	};

	class road_sosnovka_S : base_road 
	{
		scope = 1;
		name = "Road S of Sosnovka";
		marker = "site_road_sosnovka_S";
		position[] = { 2583.78, 6027.28, 0 };
		angle = 242;
	};

	class road_greenmountain_SSW : base_road 
	{
		scope = 1;
		name = "Road SSW of Green Mountain";
		marker = "site_road_greenmountain_SSW";
		position[] = { 3535.32, 5502.47, 0 };
		angle = 203;
	};

	class road_rogovo_NNW : base_road 
	{
		scope = 1;
		name = "Road NNW of Rogovo";
		marker = "site_road_rogovo_NNW";
		position[] = { 4649.58, 7259.99, 0 };
		angle = 212;
	};

	class road_kozlovka_WNW : base_road 
	{
		scope = 1;
		name = "Road WNW of Kozlovka";
		marker = "site_road_kozlovka_WNW";
		position[] = { 4061.14, 4823.53, 0 };
		angle = 331;
	};

	class road_rogovo_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Rogovo";
		marker = "site_road_rogovo_ESE";
		position[] = { 5111.89, 6690.81, 0 };
		angle = 410;
	};

	class road_gorka_W : base_road 
	{
		scope = 1;
		name = "Road W of Gorka";
		marker = "site_road_gorka_W";
		position[] = { 8683.6, 8918.89, 0 };
		angle = 139;
	};

	class road_polana_N : base_road 
	{
		scope = 1;
		name = "Road N of Polana";
		marker = "site_road_polana_N";
		position[] = { 10621.7, 8491.77, 0 };
		angle = 435;
	};

	class road_polana_E : base_road 
	{
		scope = 1;
		name = "Road E of Polana";
		marker = "site_road_polana_E";
		position[] = { 10908.9, 8059.62, 0 };
		angle = 412;
	};

	class road_dolina_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Dolina";
		marker = "site_road_dolina_ESE";
		position[] = { 12026.1, 6321.88, 0 };
		angle = 372;
	};

	class road_staroye_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Staroye";
		marker = "site_road_staroye_SW";
		position[] = { 9472.03, 4859.72, 0 };
		angle = 377;
	};

	class road_komarovo_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Komarovo";
		marker = "site_road_komarovo_WSW";
		position[] = { 2846.38, 2028.82, 0 };
		angle = 352;
	};

	class road_bor_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Bor";
		marker = "site_road_bor_SW";
		position[] = { 2582.41, 3317.55, 0 };
		angle = 120;
	};

	class road_kamenka_NNE : base_road 
	{
		scope = 1;
		name = "Road NNE of Kamenka";
		marker = "site_road_kamenka_NNE";
		position[] = { 2075.7, 2852.34, 0 };
		angle = 124;
	};

	class road_zelenogorsk_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Zelenogorsk";
		marker = "site_road_zelenogorsk_SW";
		position[] = { 2129.91, 4748.34, 0 };
		angle = 332;
	};

	class road_dichina_WSW : base_road 
	{
		scope = 1;
		name = "Road WSW of Dichina";
		marker = "site_road_dichina_WSW";
		position[] = { 3870.07, 7577.26, 0 };
		angle = 407;
	};

	class road_pulkovo_NNW : base_road 
	{
		scope = 1;
		name = "Road NNW of Pulkovo";
		marker = "site_road_pulkovo_NNW";
		position[] = { 4799.61, 5855.88, 0 };
		angle = 424;
	};





	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS


	class comp_zelenogorsk_WSW : base_comp 
	{
		scope = 1;
		name = "WSW of Zelenogorsk";
		marker = "site_comp_zelenogorsk_WSW";
		position[] = { 2047.87, 5176.68, 0 };
	};

	class comp_zelenogorsk_SW : base_comp 
	{
		scope = 1;
		name = "SW of Zelenogorsk";
		marker = "site_comp_zelenogorsk_SW";
		position[] = { 2525.54, 5071.87, 0 };
	};

	class comp_passsosnovy_ENE : base_comp 
	{
		scope = 1;
		name = "ENE of Pass Sosnovy";
		marker = "site_comp_passsosnovy_ENE";
		position[] = { 2891.89, 6710.77, 0 };
	};

	class comp_pustoshka_ENE : base_comp 
	{
		scope = 1;
		name = "ENE of Pustoshka";
		marker = "site_comp_pustoshka_ENE";
		position[] = { 3325.59, 8103.01, 0 };
	};

	class comp_dichina_W : base_comp 
	{
		scope = 1;
		name = "W of Dichina";
		marker = "site_comp_dichina_W";
		position[] = { 4270.47, 7899.68, 0 };
	};

	class comp_vybor_NE : base_comp 
	{
		scope = 1;
		name = "NE of Vybor";
		marker = "site_comp_vybor_NE";
		position[] = { 4286.73, 9459.3, 0 };
	};

	class comp_grishino_W : base_comp 
	{
		scope = 1;
		name = "W of Grishino";
		marker = "site_comp_grishino_W";
		position[] = { 5571.45, 10268, 0 };
	};

	class comp_gorka_ESE : base_comp 
	{
		scope = 1;
		name = "ESE of Gorka";
		marker = "site_comp_gorka_ESE";
		position[] = { 10284.3, 8668.86, 0 };
	};

	class comp_factory_NNW : base_comp 
	{
		scope = 1;
		name = "NNW of factory";
		marker = "site_comp_factory_NNW";
		position[] = { 11300.7, 7816.89, 0 };
	};

	class comp_baynizhnaya_WNW : base_comp 
	{
		scope = 1;
		name = "WNW of Bay Nizhnaya";
		marker = "site_comp_baynizhnaya_WNW";
		position[] = { 12681.3, 8586.65, 0 };
	};

	class comp_dubrovka_ENE : base_comp 
	{
		scope = 1;
		name = "ENE of Dubrovka";
		marker = "site_comp_dubrovka_ENE";
		position[] = { 10595.8, 10035.1, 0 };
	};

	class comp_novylug_NNE : base_comp 
	{
		scope = 1;
		name = "NNE of Novy Lug";
		marker = "site_comp_novylug_NNE";
		position[] = { 9604.24, 11623.3, 0 };
	};

	class comp_elektrozavodsk_SSE : base_comp 
	{
		scope = 1;
		name = "SSE of Elektrozavodsk";
		marker = "site_comp_elektrozavodsk_SSE";
		position[] = { 10417.1, 1975.83, 0 };
	};

	class comp_capgolova_ESE : base_comp 
	{
		scope = 1;
		name = "ESE of Cap Golova";
		marker = "site_comp_capgolova_ESE";
		position[] = { 8640.82, 2370.95, 0 };
	};

	class comp_vysota_N : base_comp 
	{
		scope = 1;
		name = "N of Vysota";
		marker = "site_comp_vysota_N";
		position[] = { 6623.86, 3634.29, 0 };
	};

	class comp_nadezhdino_SW : base_comp 
	{
		scope = 1;
		name = "SW of Nadezhdino";
		marker = "site_comp_nadezhdino_SW";
		position[] = { 5357.88, 3955.87, 0 };
	};

	class comp_baytikhaya_N : base_comp 
	{
		scope = 1;
		name = "N of Bay Tikhaya";
		marker = "site_comp_baytikhaya_N";
		position[] = { 1152.17, 2461.59, 0 };
	};

	class comp_pavlovo_NNW : base_comp 
	{
		scope = 1;
		name = "NNW of Pavlovo";
		marker = "site_comp_pavlovo_NNW";
		position[] = { 1291.23, 4667.78, 0 };
	};

	class comp_pulkovo_E : base_comp 
	{
		scope = 1;
		name = "E of Pulkovo";
		marker = "site_comp_pulkovo_E";
		position[] = { 5405.86, 5578.5, 0 };
	};

	class comp_starysobor_WSW : base_comp 
	{
		scope = 1;
		name = "WSW of Stary Sobor";
		marker = "site_comp_starysobor_WSW";
		position[] = { 5750.82, 7535.04, 0 };
	};

	class comp_lopatino_SW : base_comp 
	{
		scope = 1;
		name = "SW of Lopatino";
		marker = "site_comp_lopatino_SW";
		position[] = { 1901.46, 9115.57, 0 };
	};

	class comp_airfield_NW : base_comp 
	{
		scope = 1;
		name = "NW of airfield";
		marker = "site_comp_airfield_NW";
		position[] = { 3893.81, 11076.7, 0 };
	};

	class comp_airstrip_WSW : base_comp 
	{
		scope = 1;
		name = "WSW of airstrip";
		marker = "site_comp_airstrip_WSW";
		position[] = { 11796.9, 12633.9, 0 };
	};

	class comp_lumbermill_NW : base_comp 
	{
		scope = 1;
		name = "NW of lumber mill";
		marker = "site_comp_lumbermill_NW";
		position[] = { 12440.3, 9911.46, 0 };
	};

	class comp_solnichniy_NNW : base_comp 
	{
		scope = 1;
		name = "NNW of Solnichniy";
		marker = "site_comp_solnichniy_NNW";
		position[] = { 13311, 6727.97, 0 };
	};

	class comp_threevalleys_NNE : base_comp 
	{
		scope = 1;
		name = "NNE of Three Valleys";
		marker = "site_comp_threevalleys_NNE";
		position[] = { 12874.3, 5601.95, 0 };
	};

	class comp_passoreshka_SE : base_comp 
	{
		scope = 1;
		name = "SE of Pass Oreshka";
		marker = "site_comp_passoreshka_SE";
		position[] = { 10018.2, 5966.85, 0 };
	};



	// --------------------------------------------------------------
	// missionSites - MILITARY

	class mil_greenmountain : base_mil 
	{
		scope = 1;
		name = "Green Mountain Military Base";
		marker = "site_mil_greenmountain";
		position[] = { 3705.55, 5984.31, 0 };
	};

	class mil_airfield_north_01 : base_mil 
	{
		scope = 1;
		name = "Northern Airfield";
		marker = "site_mil_airfield_north_01";
		position[] = { 4808.07, 10231.5, 0 };
	};

	class mil_airfield_north_02 : base_mil 
	{
		scope = 1;
		name = "Northern Airfield Military Base";
		marker = "site_mil_airfield_north_02";
		position[] = { 4628.62, 9603.73, 0 };
	};

	class mil_devilscastle : base_mil 
	{
		scope = 1;
		name = "Devil's Castle";
		marker = "site_mil_devilscastle";
		position[] = { 6897.52, 11437.5, 0 };
	};

	class mil_airfield_north_east : base_mil 
	{
		scope = 1;
		name = "North-East Airstrip";
		marker = "site_mil_airfield_north_east";
		position[] = { 12114.6, 12641.4, 0 };
	};

	class mil_rog : base_mil 
	{
		scope = 1;
		name = "Rog Castle";
		marker = "site_mil_rog";
		position[] = { 11254.4, 4290.96, 0 };
	};

	class mil_polana_factory : base_mil 
	{
		scope = 1;
		name = "Polana Factory";
		marker = "site_mil_polana_factory";
		position[] = { 11467.2, 7505.94, 0 };
	};

	class mil_powerplant : base_mil 
	{
		scope = 1;
		name = "Elektrozavodsk Power Plant";
		marker = "site_mil_powerplant";
		position[] = { 10433.2, 2580.72, 0 };
	};

	class mil_zub : base_mil 
	{
		scope = 1;
		name = "Zub Castle";
		marker = "site_mil_zub";
		position[] = { 6534.74, 5595.95, 0 };
	};


	// --------------------------------------------------------------
	// missionSites - FIELDS
		
	class field_pavlovo_NE : base_field_che 
	{
		scope = 1;
		name = "NE of Pavlovo";
		marker = "site_field_pavlovo_NE";
		position[] = { 2100.85, 4135.52, 0 };
	};

	class field_drozhino_W : base_field_che 
	{
		scope = 1;
		name = "W of Drozhino";
		marker = "site_field_drozhino_W";
		position[] = { 3099.53, 4909.76, 0 };
	};

	class field_greenmountain_NE : base_field_che 
	{
		scope = 1;
		name = "NE of Green Mountain";
		marker = "site_field_greenmountain_NE";
		position[] = { 3979.31, 6318.05, 0 };
	};

	class field_pustoshka_NW : base_field_che 
	{
		scope = 1;
		name = "NW of Pustoshka";
		marker = "site_field_pustoshka_NW";
		position[] = { 2601.52, 8504.67, 0 };
	};

	class field_airfield_W : base_field_che 
	{
		scope = 1;
		name = "W of airfield";
		marker = "site_field_airfield_W";
		position[] = { 3741.24, 10284.6, 0 };
	};

	class field_oldfields_S : base_field_che 
	{
		scope = 1;
		name = "S of Old Fields";
		marker = "site_field_oldfields_S";
		position[] = { 6830.1, 8565.49, 0 };
	};

	class field_vyshnoye_NNW : base_field_che 
	{
		scope = 1;
		name = "NNW of Vyshnoye";
		marker = "site_field_vyshnoye_NNW";
		position[] = { 6243.55, 6865.55, 0 };
	};

	class field_ozerko_NNW : base_field_che 
	{
		scope = 1;
		name = "NNW of Ozerko";
		marker = "site_field_ozerko_NNW";
		position[] = { 6672.36, 4670.41, 0 };
	};

	class field_kopyto_W : base_field_che 
	{
		scope = 1;
		name = "W of Kopyto";
		marker = "site_field_kopyto_W";
		position[] = { 7385.77, 3837.14, 0 };
	};

	class field_msta_S : base_field_che 
	{
		scope = 1;
		name = "S of Msta";
		marker = "site_field_msta_S";
		position[] = { 11279.2, 5052.68, 0 };
	};

	class field_factory_S : base_field_che 
	{
		scope = 1;
		name = "S of factory";
		marker = "site_field_factory_S";
		position[] = { 11430.5, 7081.82, 0 };
	};

	class field_berezino_S : base_field_che 
	{
		scope = 1;
		name = "S of Berezino";
		marker = "site_field_berezino_S";
		position[] = { 12069.1, 8585.7, 0 };
	};

	class field_khelm_WSW : base_field_che 
	{
		scope = 1;
		name = "WSW of Khelm";
		marker = "site_field_khelm_WSW";
		position[] = { 11567.4, 10370.6, 0 };
	};

	class field_bluntrocks_WSW : base_field_che 
	{
		scope = 1;
		name = "WSW of Blunt Rocks";
		marker = "site_field_bluntrocks_WSW";
		position[] = { 12896.3, 11825.7, 0 };
	};

	class field_novylug_WSW : base_field_che 
	{
		scope = 1;
		name = "WSW of Novy Lug";
		marker = "site_field_novylug_WSW";
		position[] = { 9386.95, 11162.3, 0 };
	};

	class field_gvozdno_W : base_field_che 
	{
		scope = 1;
		name = "W of Gvozdno";
		marker = "site_field_gvozdno_W";
		position[] = { 7955.26, 11921.3, 0 };
	};

	class field_petrovka_SSW : base_field_che 
	{
		scope = 1;
		name = "SSW of Petrovka";
		marker = "site_field_petrovka_SSW";
		position[] = { 4801.56, 11554, 0 };
	};

	class field_prud_SSW : base_field_che 
	{
		scope = 1;
		name = "SSW of Prud";
		marker = "site_field_prud_SSW";
		position[] = { 6289.67, 8551.28, 0 };
	};

	class field_shakhovka_NNE : base_field_che 
	{
		scope = 1;
		name = "NNE of Shakhovka";
		marker = "site_field_shakhovka_NNE";
		position[] = { 9971.12, 7158.96, 0 };
	};

	class field_dubrovka_SSE : base_field_che 
	{
		scope = 1;
		name = "SSE of Dubrovka";
		marker = "site_field_dubrovka_SSE";
		position[] = { 10817, 9202.81, 0 };
	};

	class field_airstrip_NW : base_field_che 
	{
		scope = 1;
		name = "NW of airstrip";
		marker = "site_field_airstrip_NW";
		position[] = { 11739.6, 13120.8, 0 };
	};

	class field_prud_N : base_field_che 
	{
		scope = 1;
		name = "N of Prud";
		marker = "site_field_prud_N";
		position[] = { 6714.17, 10016.4, 0 };
	};

	class field_dichina_N : base_field_che 
	{
		scope = 1;
		name = "N of Dichina";
		marker = "site_field_dichina_N";
		position[] = { 4653.32, 8316.35, 0 };
	};

	class field_kumyrna_E : base_field_che 
	{
		scope = 1;
		name = "E of Kumyrna";
		marker = "site_field_kumyrna_E";
		position[] = { 8911.92, 6123.08, 0 };
	};

	class field_novysobor_ENE : base_field_che 
	{
		scope = 1;
		name = "ENE of Novy Sobor";
		marker = "site_field_novysobor_ENE";
		position[] = { 7504.34, 7939.03, 0 };
	};

	class field_powerplant_SW : base_field_che 
	{
		scope = 1;
		name = "SW of power plant";
		marker = "site_field_powerplant_SW";
		position[] = { 10011.1, 2452.06, 0 };
	};

	class field_kumyrna_SSW : base_field_che 
	{
		scope = 1;
		name = "SSW of Kumyrna";
		marker = "site_field_kumyrna_SSW";
		position[] = { 8221.45, 5906.39, 0 };
	};

	class field_lopatino_NNE : base_field_che 
	{
		scope = 1;
		name = "NNE of Lopatino";
		marker = "site_field_lopatino_NNE";
		position[] = { 3094.36, 10821, 0 };
	};



	// END
};