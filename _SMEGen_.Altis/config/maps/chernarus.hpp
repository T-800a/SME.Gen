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
	




	// END
};