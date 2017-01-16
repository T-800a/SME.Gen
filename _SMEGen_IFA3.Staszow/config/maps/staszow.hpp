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
	class base_field_IFA3 : base_field
	{
		size[]			= { 150, 150 };
		allowedTypes[]	= { "IFA3_flak", "IFA3_mortars" };
	};
	
	class base_town_IFA3 : base_town
	{
		size[]			= { 300, 300 };
		allowedTypes[]	= { "occupy", "IFA3_mortars", "resupplies", "killHVT", "intelHVT" };
	};

	class base_mil_IFA3 : base_mil
	{
		size[]			= { 200, 200 };
		allowedTypes[]	= { "occupy_mil", "IFA3_mortars", "resupplies", "killHVT", "intelHVT" };
	};	
	
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



	// --------------------------------------------------------------
	// missionSites - ROADS





	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS




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