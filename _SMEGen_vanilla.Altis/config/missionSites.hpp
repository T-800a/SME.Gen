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
			allowedTypes[]	= { "convoy", "roadblock" };
			marker		= "";
			position[]	= { 0, 0, 0 };
			size[]		= { 200, 80 };
			angle		= 0;
		};	
	};



	// --------------------------------------------------------------
	//	ALTIS SITES
	//
	
	class Altis : base_map
	{
	// --------------------------------------------------------------
	// missionSites - TOWNS

		class town_rodopoli : base_town
		{
			scope		= 1;
			name		= "Rodopoli"; 
			marker		= "site_town_rodopoli";
			position[]	= { 18851.8, 16651.1, 0 };
		};

		class town_paros : base_town
		{
			scope		= 1;
			name		= "Paros"; 
			marker		= "site_town_paros";
			position[]	= { 20984.7, 16975.3, 0 };
		};
		
		class town_gravia : base_town
		{
			scope		= 1;
			name		= "Gravia"; 
			marker		= "site_town_gravia";
			position[]	= { 14493.9, 17674.2, 0 };
		};

		class town_anthrakia : base_town
		{
			scope		= 1;
			name		= "Anthrakia"; 
			marker		= "site_town_anthrakia";
			position[]	= { 16653.8, 16119.0, 0 };
			size[]		= { 250, 250 };
		};
		
		class town_anthrakia_hills : base_town
		{
			scope		= 1;
			name		= "Anthrakia Hills"; 
			marker		= "site_town_anthrakia_hills";
			position[]	= { 16000.5, 16234.6, 0 };
			size[]		= { 250, 150 };
			angle		= 30;
		};

		class town_dorida : base_town
		{
			scope		= 1;
			name		= "Dorida"; 
			marker		= "site_town_dorida";
			position[]	= { 19391.3, 13261.0, 0 };
			size[]		= { 200, 300 };
			angle		= 45;
		};

		class town_kalochori : base_town
		{
			scope		= 1;
			name		= "Kalochori"; 
			marker		= "site_town_kalochori";
			position[]	= { 21386.7, 16356.8, 0 };
			size[]		= { 200, 300 };
			angle		= 60;
		};
		
		class town_lakka_factory : base_town
		{
			scope		= 1;
			name		= "Lakka Factory Site"; 
			marker		= "site_town_lakka_factory";
			position[]	= { 12677.3, 16344.2, 0 };
		};

		class town_lakka : base_town
		{
			scope		= 1;
			name		= "Lakka"; 
			marker		= "site_town_lakka";
			position[]	= { 12329.7, 15688.6, 0 };
		};

		class town_stavros : base_town
		{
			scope		= 1;
			name		= "Stavros"; 
			marker		= "site_town_stavros";
			position[]	= { 12954.1, 15006.7, 0 };
		};

		class town_frini : base_town
		{
			scope		= 1;
			name		= "Frini"; 
			marker		= "site_town_frini";
			position[]	= { 14600.1, 20776.4, 0 };
			size[]		= { 240, 240 };
		};
		
		class town_athira : base_town
		{
			scope		= 1;
			name		= "Athira"; 
			marker		= "site_town_athira";
			position[]	= { 14016.7, 18695.6, 0 };
		};
		
		class town_athira_factory : base_town
		{
			scope		= 1;
			name		= "Athira Factory"; 
			marker		= "site_town_athira_factory";
			position[]	= { 14351.4, 18946.2, 0 };
			size[]		= { 150, 150 };
		};
		
		class town_alikampos : base_town 
		{
			scope		= 1;
			name		= "Alikampos";
			marker		= "site_town_alikampos";
			position[]	= { 11130.2, 14561, 0 };
		};

		class town_neochori : base_town 
		{
			scope		= 1;
			name 		= "Neochori";
			marker		= "site_town_neochori";
			position[]	= { 12551.6, 14406.2, 0 };
			size[]		= { 350, 350 };
		};

		class town_katalaki : base_town 
		{
			scope		= 1;
			name		= "Katalaki";
			marker		= "site_town_katalaki";
			position[]	= { 11750.4, 13688.9, 0 };
		};

		class town_poliakko : base_town 
		{
			scope		= 1;
			name		= "Poliakko";
			marker		= "site_town_poliakko";
			position[]	= { 10992.5, 13425.6, 0 };
		};

		class town_charkia_storage : base_town 
		{
			scope		= 1;
			name		= "Charkia Storage Depot";
			marker		= "town_charkia_storage";
			position[]	= { 18326.8, 15531.9, 0 };
			size[]		= { 150, 150 };
		};

		class town_charkia : base_town 
		{
			scope		= 1;
			name		= "Charkia";
			marker		= "site_town_charkia";
			position[]	= { 18139.8, 15223.1, 0 };
		};

		class town_ifestiona : base_town 
		{
			scope		= 1;
			name		= "Ifestiona";
			marker		= "site_town_ifestiona";
			position[]	= { 12856.1, 19681.1, 0 };
		};



	// --------------------------------------------------------------
	// missionSites - MILITARY
		
		class mil_telos : base_mil
		{
			scope		= 1;
			name		= "Telos Military Base"; 
			marker		= "site_mil_telos";
			position[]	= { 16082.3, 16995.6, 0 };
		};

		class mil_pyrgos : base_mil
		{
			scope		= 1;
			name		= "Pyrgos Military Base"; 
			marker		= "site_mil_pyrgos";
			position[]	= { 17432.7, 13156.9, 0 };
		};

		class mil_pyrgos_gulf_harbour : base_mil
		{
			scope		= 1;
			name		= "Pyrgos Gulf Harbour"; 
			marker		= "site_mil_pyrgos_gulf_harbour";
			position[]	= { 15394.5, 15955.1, 0 };
		};
		
		class mil_lakka : base_mil
		{
			scope		= 1;
			name		= "Lakka Military Base"; 
			marker		= "site_mil_lakka";
			position[]	= { 12831.3, 16712.3, 0 };
		};
		
		class mil_sagonisi : base_mil 
		{
			scope		= 1;
			name		= "Sagonisi Military Base";
			marker		= "site_mil_sagonisi";
			position[]	= { 14282.5, 13029, 0 };
		};

	// --------------------------------------------------------------
	// missionSites - ROADS

		class road_airfield : base_road
		{
			scope		= 1;
			name		= "Road to Airfield"; 
			marker		= "site_road_airfield";
			position[]	= { 14712.9, 17110.7, 0 };
			angle		= 135;
		};

		class road_kalithea : base_road
		{
			scope		= 1;
			name		= "Road to Kalithea"; 
			marker		= "site_road_kalithea";
			position[]	= { 17887.9, 17761.5, 0 };
			angle		= 35;
		};

		class road_paros : base_road
		{
			scope		= 1;
			name		= "Road to Paros"; 
			marker		= "site_road_paros";
			position[]	= { 19928.7, 15911.0, 0 };
			angle		= 125;
		};

		class road_pyrgos : base_road
		{
			scope		= 1;
			name		= "Road to Pyrgos"; 
			marker		= "site_road_pyrgos";
			position[]	= { 17418.3, 14079.1, 0 };
			angle		= 105;
		};

		class road_telos : base_road
		{
			scope		= 1;
			name		= "Road to telos"; 
			marker		= "site_road_airfield";
			position[]	= { 15919.1, 17414.3, 0 };
			angle		= 5;
		};

		class road_dorida : base_road
		{
			scope		= 1;
			name		= "Road to Dorida"; 
			marker		= "site_road_dorida";
			position[]	= { 18898.6, 13033.3, 0 };
			angle		= 170;
		};

		class road_charkia : base_road
		{
			scope		= 1;
			name		= "Road to Charkia"; 
			marker		= "site_road_charkia";
			position[]	= { 17750.6, 14728.6, 0 };
			angle		= 125;
		};

		class road_anthrakia : base_road
		{
			scope		= 1;
			name		= "Road to Anthrakia"; 
			marker		= "site_road_anthrakia";
			allowedTypes[]	= { "convoy" };
			position[]	= { 16693.4, 15911.5, 0 };
			angle		= 70;
		};

		class road_lakka_W : base_road
		{
			scope		= 1;
			name		= "Road west of Lakka"; 
			marker		= "site_road_lakka_W";
			position[]	= { 12105.5, 15847.6, 0 };
			angle		= 180;
		};

		class road_lakka_S : base_road
		{
			scope		= 1;
			name		= "Road south of Lakka"; 
			marker		= "site_road_lakka_S";
			position[]	= { 12026.9, 15132.7, 0 };
			angle		= 110;
		};

		class road_lakka_N: base_road
		{
			scope		= 1;
			name		= "Road north of Lakka"; 
			marker		= "site_road_lakka_N";
			position[]	= { 12013.8, 16918.7, 0 };
			angle		= 75;
		};

		class road_lakka_E : base_road
		{
			scope		= 1;
			name		= "Road east of Lakka"; 
			marker		= "site_road_lakka_E";
			position[]	= { 12761.6, 15918.1, 0 };
			angle		= 175;
		};
		
		class road_neochori_WSW : base_road 
		{
			scope		= 1;
			name		= "Road WSW of Neochori";
			marker		= "site_road_neochori_WSW";
			position[] 	= { 12129.2, 14095.7, 0 };
			angle		= 158;
		};

		class road_katalaki_SW : base_road 
		{
			scope		= 1;
			name		= "Road SW of Katalaki";
			marker		= "site_road_katalaki_SW";
			position[]	= { 11485.3, 13417.4, 0 };
			angle		= 314;
		};

		class road_katalaki_NNW : base_road 
		{
			scope		= 1;
			name		= "Road NNW of Katalaki";
			marker		= "site_road_katalaki_NNW";
			position[]	= { 11561.3, 13913.7, 0 };
			angle		= 225;
		};

		class road_katalakibay_SSW : base_road 
		{
			scope		= 1;
			name		= "Road SSW of Katalaki Bay";
			marker		= "site_road_katalakibay_SSW";
			position[]	= { 12005.4, 13239, 0 };
			angle		= 372;
		};
		
		class road_athira_SW : base_road 
		{
			scope = 1;
			name = "Road SW of Athira";
			marker = "site_road_athira_SW";
			position[] = { 13433.2, 18065, 0 };
			angle = 293;
		};

		class road_factory_SE : base_road 
		{
			scope = 1;
			name = "Road SE of factory";
			marker = "site_road_factory_SE";
			position[] = { 14575.9, 18550.4, 0 };
			angle = 193;
		};

		class road_frini_SSW : base_road 
		{
			scope = 1;
			name = "Road SSW of Frini";
			marker = "site_road_frini_SSW";
			position[] = { 14398, 20296.3, 0 };
			angle = 296;
		};

		class road_paros_SW : base_road 
		{
			scope = 1;
			name = "Road SW of Paros";
			marker = "site_road_paros_SW";
			position[] = { 20338, 16221.9, 0 };
			angle = 320;
		};
		
		class road_kalochori_NNW : base_road 
		{
			scope = 1;
			name = "Road NNW of Kalochori";
			marker = "site_road_kalochori_NNW";
			position[] = { 21316.8, 16535.1, 0 };
			angle = 237;
		};

		class road_nifi_w : base_road 
		{
			scope = 1;
			name = "Road west of Nifi";
			marker = "site_road_nifi_w";
			position[] = { 20182.4, 15296.8, 0 };
			angle = 369;
		};

	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS

		class comp_01 : base_comp
		{
			scope		= 1;
			name		= "Lakka Military Area"; 
			marker		= "site_comp_01";
			position[]	= { 12803.2, 17414.4, 0 };
		};
		
		class comp_02 : base_comp
		{
			scope		= 1;
			name		= "Neochori Area"; 
			marker		= "site_comp_02";
			position[]	= { 11646.3, 14587.8, 0 };
		};
		
		class comp_03 : base_comp
		{
			scope		= 1;
			name		= "Kalithea Bay Area"; 
			marker		= "site_comp_03";
			position[]	= { 16796.1, 18174.7, 0 };
		};
		
		class comp_04 : base_comp
		{
			scope		= 1;
			name		= "Athira Area"; 
			marker		= "site_comp_04";
			position[]	= { 13870.8, 19629.6, 0 };
		};
		
		class comp_05 : base_comp
		{
			scope		= 1;
			name		= "Charkia Area"; 
			marker		= "site_comp_05";
			position[]	= { 19035.3, 14845.7, 0 };
		};
		
		class comp_06 : base_comp
		{
			scope		= 1;
			name		= "Katalaki Bay Area"; 
			marker		= "site_comp_06";
			position[]	= { 12112.3, 12700.9, 0 };
		};
		
		class comp_07 : base_comp
		{
			scope		= 1;
			name		= "Therisa Area"; 
			marker		= "site_comp_07";
			position[]	= { 10842.2, 12664.7, 0 };
		};
		
		class comp_08 : base_comp
		{
			scope		= 1;
			name		= "Agios Dionysios Area"; 
			marker		= "site_comp_08";
			position[]	= { 9983.2, 16769.3, 0 };
		};
		
		class comp_09 : base_comp
		{
			scope		= 1;
			name		= "Frini Area"; 
			marker		= "site_comp_09";
			position[]	= { 13853.2, 20954.9, 0 };
		};
		
		class comp_10 : base_comp
		{
			scope		= 1;
			name		= "Agios Petros Area"; 
			marker		= "site_comp_10";
			position[]	= { 19162.4, 17810.3, 0 };
		};
		
		class comp_11 : base_comp
		{
			scope		= 1;
			name		= "Limni Swamp Area"; 
			marker		= "site_comp_11";
			position[]	= { 20385.0, 14957.4, 0 };
		};
		
		class comp_12 : base_comp
		{
			scope		= 1;
			name		= "Anthrakia Area"; 
			marker		= "site_comp_12";
			position[]	= { 17106.6, 15446.7, 0 };
		};
	};
};
