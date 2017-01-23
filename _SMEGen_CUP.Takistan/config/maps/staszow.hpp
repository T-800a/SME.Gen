/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		staszow.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


class Staszow : base_map
{
	// --------------------------------------------------------------
	// missionSites - TOWNS

	class town_ponik : base_town_IFA3 
	{
		scope = 1;
		name = "Ponik";
		marker = "site_town_ponik";
		position[] = { 8482.37, 9593.42, 0 };
	};

	class town_zaraz : base_town_IFA3 
	{
		scope = 1;
		name = "Zaraz";
		marker = "site_town_zaraz";
		position[] = { 9379.95, 9676.45, 0 };
	};

	class town_niemscice : base_town_IFA3 
	{
		scope = 1;
		name = "Niemscice";
		marker = "site_town_niemscice";
		position[] = { 9941.13, 10063.2, 0 };
	};

	class town_ogledow : base_town_IFA3 
	{
		scope = 1;
		name = "Ogledow";
		marker = "site_town_ogledow";
		position[] = { 11199.4, 9075.36, 0 };
	};

	class town_kurozweki : base_town_IFA3 
	{
		scope = 1;
		name = "KUROZWEKI";
		marker = "site_town_kurozweki";
		position[] = { 9837.05, 11811.7, 0 };
	};

	class town_yablonica : base_town_IFA3 
	{
		scope = 1;
		name = "Yablonica";
		marker = "site_town_yablonica";
		position[] = { 7397.48, 11970.4, 0 };
	};

	class town_szydlow : base_town_IFA3 
	{
		scope = 1;
		name = "SZYDLOW";
		marker = "site_town_szydlow";
		position[] = { 2507.86, 11974.5, 0 };
	};

	class town_osowkanowa : base_town_IFA3 
	{
		scope = 1;
		name = "Osowka Nowa";
		marker = "site_town_osowkanowa";
		position[] = { 2598.46, 14529.7, 0 };
	};

	class town_osowkastara : base_town_IFA3 
	{
		scope = 1;
		name = "Osowka Stara";
		marker = "site_town_osowkastara";
		position[] = { 1673.38, 14045.5, 0 };
	};

	class town_brzeziny : base_town_IFA3 
	{
		scope = 1;
		name = "Brzeziny";
		marker = "site_town_brzeziny";
		position[] = { 587.789, 14277.8, 0 };
	};

	class town_gackinw : base_town_IFA3
	{
		scope = 1;
		name = "Gacki Nw";
		marker = "site_town_gackinw";
		position[] = { 2658.45, 8933.53, 0 };
	};

	class town_zyzna : base_town_IFA3
	{
		scope = 1;
		name = "Zyzna";
		marker = "site_town_zyzna";
		position[] = { 2028, 8785.15, 0 };
	};

	class town_wola : base_town_IFA3
	{
		scope = 1;
		name = "Wola";
		marker = "site_town_wola";
		position[] = { 1146.18, 9420.3, 0 };
	};

	class town_poduchowna : base_town_IFA3
	{
		scope = 1;
		name = "Poduchowna";
		marker = "site_town_poduchowna";
		position[] = { 1564.75, 10101, 0 };
	};

	class town_pieczonogigacki : base_town_IFA3
	{
		scope = 1;
		name = "Pieczonogi-Gacki";
		marker = "site_town_pieczonogi-gacki";
		position[] = { 4692.48, 9237.61, 0 };
	};

	class town_mokre : base_town_IFA3
	{
		scope = 1;
		name = "Mokre";
		marker = "site_town_mokre";
		position[] = { 5749.99, 10556.1, 0 };
	};

	class town_kucow : base_town_IFA3
	{
		scope = 1;
		name = "Kucow";
		marker = "site_town_kucow";
		position[] = { 4112, 10133.1, 0 };
	};

	class town_gacki : base_town_IFA3
	{
		scope = 1;
		name = "Gacki";
		marker = "site_town_gacki";
		position[] = { 3857.07, 9749.66, 0 };
	};

	class town_kotuszow : base_town_IFA3
	{
		scope = 1;
		name = "Kotuszow";
		marker = "site_town_kotuszow";
		position[] = { 7281.9, 13798.4, 0 };
	};

	class town_korytnica : base_town_IFA3
	{
		scope = 1;
		name = "Korytnica";
		marker = "site_town_korytnica";
		position[] = { 6434.68, 15362.5, 0 };
	};

	class town_jasien : base_town_IFA3
	{
		scope = 1;
		name = "Jasien";
		marker = "site_town_jasien";
		position[] = { 8067.89, 15460.7, 0 };
	};

	class town_staszow : base_town_IFA3
	{
		scope = 1;
		name = "STASZOW";
		marker = "site_town_staszow";
		position[] = { 14176.8, 8973.64, 0 };
	};



	// --------------------------------------------------------------
	// missionSites - ROADS

	class road_szydlow_SSW : base_road_IFA3
	{
		scope = 1;
		name = "Road SSW of SZYDLOW";
		marker = "site_road_szydlow_SSW";
		position[] = { 2251.39, 11374.1, 0 };
		angle = 115;
	};

	class road_szydlow_ENE : base_road_IFA3
	{
		scope = 1;
		name = "Road ENE of SZYDLOW";
		marker = "site_road_szydlow_ENE";
		position[] = { 3240.12, 12365.5, 0 };
		angle = 154;
	};

	class road_osowkanowa_NE : base_road_IFA3
	{
		scope = 1;
		name = "Road NE of Osowka Nowa";
		marker = "site_road_osowkanowa_NE";
		position[] = { 3656.2, 15458.8, 0 };
		angle = 134;
	};

	class road_osowka_NW : base_road_IFA3
	{
		scope = 1;
		name = "Road NW of Osowka";
		marker = "site_road_osowka_NW";
		position[] = { 1734.95, 14852.9, 0 };
		angle = 203;
	};

	class road_gacki_W : base_road_IFA3
	{
		scope = 1;
		name = "Road W of Gacki";
		marker = "site_road_gacki_W";
		position[] = { 3004.15, 9843.26, 0 };
		angle = 301;
	};

	class road_zyzna_NNE : base_road_IFA3
	{
		scope = 1;
		name = "Road NNE of Zyzna";
		marker = "site_road_zyzna_NNE";
		position[] = { 2108.34, 9217.91, 0 };
		angle = 313;
	};

	class road_kurozweki_E : base_road_IFA3
	{
		scope = 1;
		name = "Road E of KUROZWEKI";
		marker = "site_road_kurozweki_E";
		position[] = { 10583.6, 11972.1, 0 };
		angle = 272;
	};

	class road_ponik_N : base_road_IFA3
	{
		scope = 1;
		name = "Road N of Ponik";
		marker = "site_road_ponik_N";
		position[] = { 8361.31, 10435.7, 0 };
		angle = 267;
	};

	class road_zaraz_ESE : base_road_IFA3
	{
		scope = 1;
		name = "Road ESE of Zaraz";
		marker = "site_road_zaraz_ESE";
		position[] = { 9831.21, 9350.2, 0 };
		angle = 379;
	};

	class road_ogledow_S : base_road_IFA3
	{
		scope = 1;
		name = "Road S of Ogledow";
		marker = "site_road_ogledow_S";
		position[] = { 10927.1, 8433, 0 };
		angle = 447;
	};
	
	class road_staszow_NNE : base_road_IFA3
	{
		scope = 1;
		name = "Road NNE of STASZOW";
		marker = "site_road_staszow_NNE";
		position[] = { 14315.6, 9591.42, 0 };
		angle = 113;
	};

	class road_staszow_NW : base_road_IFA3
	{
		scope = 1;
		name = "Road NW of STASZOW";
		marker = "site_road_staszow_NW";
		position[] = { 13514.3, 9721.98, 0 };
		angle = 419;
	};

	class road_krzewiny_NNE : base_road_IFA3
	{
		scope = 1;
		name = "Road NNE of Krzewiny";
		marker = "site_road_krzewiny_NNE";
		position[] = { 12494.9, 8746.1, 0 };
		angle = 370;
	};

	class road_ogledow_WSW : base_road_IFA3
	{
		scope = 1;
		name = "Road WSW of Ogledow";
		marker = "site_road_ogledow_WSW";
		position[] = { 10092.6, 8787.68, 0 };
		angle = 366;
	};

	class road_ponik_WSW : base_road_IFA3
	{
		scope = 1;
		name = "Road WSW of Ponik";
		marker = "site_road_ponik_WSW";
		position[] = { 7796, 9203.44, 0 };
		angle = 293;
	};

	class road_mokre_S : base_road_IFA3
	{
		scope = 1;
		name = "Road S of Mokre";
		marker = "site_road_mokre_S";
		position[] = { 5865.17, 9746.94, 0 };
		angle = 198;
	};

	class road_kucow_NNE : base_road_IFA3
	{
		scope = 1;
		name = "Road NNE of Kucow";
		marker = "site_road_kucow_NNE";
		position[] = { 4314.02, 10854.9, 0 };
		angle = 226;
	};

	class road_kurozweki_WSW : base_road_IFA3
	{
		scope = 1;
		name = "Road WSW of KUROZWEKI";
		marker = "site_road_kurozweki_WSW";
		position[] = { 8505.14, 11297.9, 0 };
		angle = 104;
	};

	class road_kotuszow_ESE : base_road_IFA3
	{
		scope = 1;
		name = "Road ESE of Kotuszow";
		marker = "site_road_kotuszow_ESE";
		position[] = { 8182.04, 13347.9, 0 };
		angle = 224;
	};

	class road_kotuszow_SW : base_road_IFA3
	{
		scope = 1;
		name = "Road SW of Kotuszow";
		marker = "site_road_kotuszow_SW";
		position[] = { 6898.9, 13485.3, 0 };
		angle = 143;
	};

	class road_korytnica_SE : base_road_IFA3
	{
		scope = 1;
		name = "Road SE of Korytnica";
		marker = "site_road_korytnica_SE";
		position[] = { 7125.66, 14855.5, 0 };
		angle = 446;
	};

	class road_korytnica_SW : base_road_IFA3
	{
		scope = 1;
		name = "Road SW of Korytnica";
		marker = "site_road_korytnica_SW";
		position[] = { 5723.89, 14926, 0 };
		angle = 146;
	};

	class road_korytnica_ENE : base_road_IFA3
	{
		scope = 1;
		name = "Road ENE of Korytnica";
		marker = "site_road_korytnica_ENE";
		position[] = { 6925.7, 15729.7, 0 };
		angle = 447;
	};

	class road_jasien_ESE : base_road_IFA3
	{
		scope = 1;
		name = "Road ESE of Jasien";
		marker = "site_road_jasien_ESE";
		position[] = { 8632.09, 15232.6, 0 };
		angle = 93;
	};

	class road_krzewiny_ENE : base_road_IFA3
	{
		scope = 1;
		name = "Road ENE of Krzewiny";
		marker = "site_road_krzewiny_ENE";
		position[] = { 12859.8, 7775.49, 0 };
		angle = 405;
	};

	class road_tuczepy_NNE : base_road_IFA3
	{
		scope = 1;
		name = "Road NNE of Tuczepy";
		marker = "site_road_tuczepy_NNE";
		position[] = { 2318.89, 7797.14, 0 };
		angle = 117;
	};

	class road_zyzna_WSW : base_road_IFA3
	{
		scope = 1;
		name = "Road WSW of Zyzna";
		marker = "site_road_zyzna_WSW";
		position[] = { 1610.85, 8612.06, 0 };
		angle = 131;
	};

	class road_osowkastara_SSW : base_road_IFA3
	{
		scope = 1;
		name = "Road SSW of Osowka Stara";
		marker = "site_road_osowkastara_SSW";
		position[] = { 1377.86, 13031.5, 0 };
		angle = 225;
	};

	class road_szydlow_NE : base_road_IFA3
	{
		scope = 1;
		name = "Road NE of SZYDLOW";
		marker = "site_road_szydlow_NE";
		position[] = { 3309.56, 12954.3, 0 };
		angle = 143;
	};



	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS

	class comp_gackinw_E : base_comp_IFA3
	{
		scope = 1;
		name = "E of Gacki Nw";
		marker = "site_comp_gackinw_E";
		position[] = { 3409.11, 8804.05, 0 };
	};

	class comp_poduchowna_N : base_comp_IFA3
	{
		scope = 1;
		name = "N of Poduchowna";
		marker = "site_comp_poduchowna_N";
		position[] = { 1363.16, 11115.7, 0 };
	};

	class comp_mokre_NNW : base_comp_IFA3
	{
		scope = 1;
		name = "NNW of Mokre";
		marker = "site_comp_mokre_NNW";
		position[] = { 5160.89, 11882.7, 0 };
	};

	class comp_kurozweki_WSW : base_comp_IFA3
	{
		scope = 1;
		name = "WSW of KUROZWEKI";
		marker = "site_comp_kurozweki_WSW";
		position[] = { 8931.22, 11595.2, 0 };
	};

	class comp_kotuszow_SE : base_comp_IFA3
	{
		scope = 1;
		name = "SE of Kotuszow";
		marker = "site_comp_kotuszow_SE";
		position[] = { 7395.94, 13446.6, 0 };
	};

	class comp_ogledow_N : base_comp_IFA3
	{
		scope = 1;
		name = "N of Ogledow";
		marker = "site_comp_ogledow_N";
		position[] = { 11037.9, 9505.62, 0 };
	};

	class comp_osowkastara_S : base_comp_IFA3
	{
		scope = 1;
		name = "S of Osowka Stara";
		marker = "site_comp_osowkastara_S";
		position[] = { 1821.27, 13397.9, 0 };
	};

	class comp_brzeziny_NE : base_comp_IFA3
	{
		scope = 1;
		name = "NE of Brzeziny";
		marker = "site_comp_brzeziny_NE";
		position[] = { 1029.35, 14689.3, 0 };
	};

	class comp_osowka_SE : base_comp_IFA3
	{
		scope = 1;
		name = "SE of Osowka";
		marker = "site_comp_osowka_SE";
		position[] = { 2754.51, 13488.8, 0 };
	};

	class comp_yablonica_NNE : base_comp_IFA3
	{
		scope = 1;
		name = "NNE of Yablonica";
		marker = "site_comp_yablonica_NNE";
		position[] = { 7510.86, 12682.7, 0 };
	};

	class comp_ponik_NNE : base_comp_IFA3
	{
		scope = 1;
		name = "NNE of Ponik";
		marker = "site_comp_ponik_NNE";
		position[] = { 8732.05, 10484.9, 0 };
	};

	class comp_ziemblice_ENE : base_comp_IFA3
	{
		scope = 1;
		name = "ENE of Ziemblice";
		marker = "site_comp_ziemblice_ENE";
		position[] = { 10701.9, 7995.01, 0 };
	};

	class comp_krzewiny_ENE : base_comp_IFA3
	{
		scope = 1;
		name = "ENE of Krzewiny";
		marker = "site_comp_krzewiny_ENE";
		position[] = { 13119.6, 7866.1, 0 };
	};




	// --------------------------------------------------------------
	// missionSites - MILITARY




	// --------------------------------------------------------------
	// missionSites - FIELDS
	

	class field_osowkastara_WNW : base_field_IFA3
	{
		scope = 1;
		name = "WNW of Osowka Stara";
		marker = "site_field_osowkastara_WNW";
		position[] = { 1211.88, 14176.7, 0 };
	};

	class field_osowkanowa_ESE : base_field_IFA3 
	{
		scope = 1;
		name = "ESE of Osowka Nowa";
		marker = "site_field_osowkanowa_ESE";
		position[] = { 3202.42, 14192.3, 0 };
	};

	class field_zaraz_N : base_field_IFA3 
	{
		scope = 1;
		name = "N of Zaraz";
		marker = "site_field_zaraz_N";
		position[] = { 9279.59, 10104, 0 };
	};

	class field_ponik_NW : base_field_IFA3 
	{
		scope = 1;
		name = "NW of Ponik";
		marker = "site_field_ponik_NW";
		position[] = { 8080.44, 9957.92, 0 };
	};

	class field_gackinw_NNW : base_field_IFA3
	{
		scope = 1;
		name = "NNW of Gacki Nw";
		marker = "site_field_gackinw_NNW";
		position[] = { 2489.89, 9375.66, 0 };
	};

	class field_wola_WSW : base_field_IFA3
	{
		scope = 1;
		name = "WSW of Wola";
		marker = "site_field_wola_WSW";
		position[] = { 727.122, 9086.94, 0 };
	};

	class field_poduchowna_ENE : base_field_IFA3
	{
		scope = 1;
		name = "ENE of Poduchowna";
		marker = "site_field_poduchowna_ENE";
		position[] = { 1766.59, 10100.4, 0 };
	};

	class field_kucow_NNW : base_field_IFA3
	{
		scope = 1;
		name = "NNW of Kucow";
		marker = "site_field_kucow_NNW";
		position[] = { 3983.28, 10500.5, 0 };
	};

	class field_szydlow_ESE : base_field_IFA3
	{
		scope = 1;
		name = "ESE of SZYDLOW";
		marker = "site_field_szydlow_ESE";
		position[] = { 3475, 11329.8, 0 };
	};

	class field_szydlow_NE : base_field_IFA3
	{
		scope = 1;
		name = "NE of SZYDLOW";
		marker = "site_field_szydlow_NE";
		position[] = { 3445.55, 12634.5, 0 };
	};

	class field_krzewiny_NNE : base_field_IFA3
	{
		scope = 1;
		name = "NNE of Krzewiny";
		marker = "site_field_krzewiny_NNE";
		position[] = { 12240.9, 8592.69, 0 };
	};

	class field_niemscice_ENE : base_field_IFA3
	{
		scope = 1;
		name = "ENE of Niemscice";
		marker = "site_field_niemscice_ENE";
		position[] = { 11163.4, 10815.3, 0 };
	};

	class field_yablonica_SSE : base_field_IFA3
	{
		scope = 1;
		name = "SSE of Yablonica";
		marker = "site_field_yablonica_SSE";
		position[] = { 7614.48, 11065.7, 0 };
	};

	class field_mokre_NNE : base_field_IFA3
	{
		scope = 1;
		name = "NNE of Mokre";
		marker = "site_field_mokre_NNE";
		position[] = { 6162.31, 11573.5, 0 };
	};




	// END
};