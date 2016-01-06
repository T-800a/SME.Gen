/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		missionSites.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/


class mske : base_map
{

	// --------------------------------------------------------------
	// missionSites - TOWNS
	
	// MSKE towns and mil. bases are usually a bit smaller
	class base_town_mske :			base_town	{ size[] = { 250, 250 }; };
	class base_town_small_mske :	base_town	{ allowedTypes[] = { "occupy" }; size[] = { 250, 250 }; };
	class base_mil_mske :			base_mil	{ size[] = { 200, 200 }; };

	class town_saintpierre : base_town_mske
	{
		scope = 1;
		name = "Saint Pierre";
		marker = "site_town_saintpierre";
		position[] = { 9599.92, 14375.4, 0 };
	};

	class town_vernon : base_town_mske 
	{
		scope = 1;
		name = "Vernon";
		marker = "site_town_vernon";
		position[] = { 9104.21, 14968.6, 0 };
	};

	class town_durras : base_town_mske 
	{
		scope = 1;
		name = "Durras";
		marker = "site_town_durras";
		position[] = { 8822.52, 15515.9, 0 };
	};

	class town_regina : base_town_mske 
	{
		scope = 1;
		name = "Regina";
		marker = "site_town_regina";
		position[] = { 7182.32, 15151.5, 0 };
	};

	class town_levie : base_town_mske 
	{
		scope = 1;
		name = "Levie";
		marker = "site_town_levie";
		position[] = { 7552.95, 17539.8, 0 };
	};

	class town_laruns : base_town_small_mske 
	{
		scope = 1;
		name = "Laruns";
		marker = "site_town_laruns";
		position[] = { 7555.34, 18387, 0 };
	};

	class town_chotain : base_town_mske 
	{
		scope = 1;
		name = "Chotain";
		marker = "site_town_chotain";
		position[] = { 7072.09, 18837.5, 0 };
	};

	class town_morton : base_town_mske 
	{
		scope = 1;
		name = "Morton";
		marker = "site_town_morton";
		position[] = { 5059.61, 16795.4, 0 };
	};

	class town_figari : base_town_mske 
	{
		scope = 1;
		name = "Figari";
		marker = "site_town_figari";
		position[] = { 5314.02, 18176.1, 0 };
	};

	class town_montignac : base_town_mske 
	{
		scope = 1;
		name = "Montignac";
		marker = "site_town_montignac";
		position[] = { 4930.51, 19728.9, 0 };
	};

	class town_entredeux : base_town_mske 
	{
		scope = 1;
		name = "Entre Deux";
		marker = "site_town_entredeux";
		position[] = { 5739.58, 19881.6, 0 };
	};

	class town_lemoule : base_town_mske 
	{
		scope = 1;
		name = "Le Moule";
		marker = "site_town_lemoule";
		position[] = { 2603.46, 18245.8, 0 };
	};

	class town_lamentin : base_town_mske 
	{
		scope = 1;
		name = "Lamentin";
		marker = "site_town_lamentin";
		position[] = { 1287.86, 18771.1, 0 };
	};

	class town_gravette : base_town_mske 
	{
		scope = 1;
		name = "Gravette";
		marker = "site_town_gravette";
		position[] = { 4141.19, 20587.3, 0 };
	};

	class town_tyrone : base_town_mske 
	{
		scope = 1;
		name = "Tyrone";
		marker = "site_town_tyrone";
		position[] = { 4957.1, 21857.2, 0 };
	};

	class town_meaux : base_town_mske 
	{
		scope = 1;
		name = "Meaux";
		marker = "site_town_meaux";
		position[] = { 4495.08, 22316.2, 0 };
	};

	class town_saintphillippe : base_town_mske 
	{
		scope = 1;
		name = "Saint Phillippe";
		marker = "site_town_saintphillippe";
		position[] = { 4690.91, 23534.3, 0 };
	};


	// --------------------------------------------------------------
	// missionSites - MILITARY

	class mil_durras : base_mil_mske 
	{
		scope = 1;
		name = "Durras Military Base";
		marker = "site_mil_durras";
		position[] = { 9576.26, 15768.6, 0 };
	};

	class mil_levie : base_mil_mske 
	{
		scope = 1;
		name = "Levie Military Base";
		marker = "site_mil_levie";
		position[] = { 7524.98, 16956.3, 0 };
	};

	class mil_military : base_mil_mske 
	{
		scope = 1;
		name = "Military Military Base";
		marker = "site_mil_military";
		position[] = { 7255.36, 19589.3, 0 };
	};

	class mil_meaux : base_mil_mske 
	{
		scope = 1;
		name = "Meaux Military Base";
		marker = "site_mil_meaux";
		position[] = { 5405.79, 22669.7, 0 };
	};

	class mil_saintphillippe : base_mil_mske 
	{
		scope = 1;
		name = "Saint Phillippe Military Base";
		marker = "site_mil_saintphillippe";
		position[] = { 5152.01, 23283.9, 0 };
	};

	class mil_radio : base_mil_mske 
	{
		scope = 1;
		name = "Military Radio Base";
		marker = "site_mil_radio";
		position[] = { 4478.92, 24020.9, 0 };
	};



	// --------------------------------------------------------------
	// missionSites - ROADS

	class road_saintpierre_NW : base_road 
	{
		scope = 1;
		name = "Road NW of Saint Pierre";
		marker = "site_road_saintpierre_NW";
		position[] = { 9492.82, 14518, 0 };
		angle = 401;
	};

	class road_durras_NNW : base_road 
	{
		scope = 1;
		name = "Road NNW of Durras";
		marker = "site_road_durras_NNW";
		position[] = { 8596.06, 16069.8, 0 };
		angle = 253;
	};

	class road_levie_W : base_road 
	{
		scope = 1;
		name = "Road W of Levie";
		marker = "site_road_levie_W";
		position[] = { 6898.73, 17398.9, 0 };
		angle = 92;
	};

	class road_morton_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Morton";
		marker = "site_road_morton_ESE";
		position[] = { 5588.57, 16491.7, 0 };
		angle = 249;
	};

	class road_morton_W : base_road 
	{
		scope = 1;
		name = "Road W of Morton";
		marker = "site_road_morton_W";
		position[] = { 4918.3, 16789, 0 };
		angle = 363;
	};

	class road_lemoule_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Le Moule";
		marker = "site_road_lemoule_ESE";
		position[] = { 3844.33, 17753.6, 0 };
		angle = 385;
	};

	class road_lemoule_S : base_road 
	{
		scope = 1;
		name = "Road south of Le Moule";
		marker = "site_road_lemoule_S";
		position[] = { 2830.52, 18069.9, 0 };
		angle = 384;
	};

	class road_provins_ESE : base_road 
	{
		scope = 1;
		name = "Road ESE of Provins";
		marker = "site_road_provins_ESE";
		position[] = { 5781.83, 18766.2, 0 };
		angle = 404;
	};

	class road_entredeux_E : base_road 
	{
		scope = 1;
		name = "Road E of Entre Deux";
		marker = "site_road_entredeux_E";
		position[] = { 6310.78, 19846.5, 0 };
		angle = 152;
	};

	class road_tyrone_NNE : base_road 
	{
		scope = 1;
		name = "Road NNE of Tyrone";
		marker = "site_road_tyrone_NNE";
		position[] = { 5288.16, 22391, 0 };
		angle = 272;
	};

	class road_saintphillippe_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Saint Phillippe";
		marker = "site_road_saintphillippe_NE";
		position[] = { 5012.19, 23834, 0 };
		angle = 277;
	};

	class road_meaux_N : base_road 
	{
		scope = 1;
		name = "Road N of Meaux";
		marker = "site_road_meaux_N";
		position[] = { 4555.87, 22893.9, 0 };
		angle = 92;
	};

	class road_gravette_SW : base_road 
	{
		scope = 1;
		name = "Road SW of Gravette";
		marker = "site_road_gravette_SW";
		position[] = { 3098.56, 19798.2, 0 };
		angle = 342;
	};

	class road_lamentin_NE : base_road 
	{
		scope = 1;
		name = "Road NE of Lamentin";
		marker = "site_road_lamentin_NE";
		position[] = { 2187.55, 19410.3, 0 };
		angle = 272;
	};

	class road_lemoule_W : base_road 
	{
		scope = 1;
		name = "Road W of Le Moule";
		marker = "site_road_lemoule_W";
		position[] = { 2044.96, 18213, 0 };
		angle = 203;
	};

	class road_montignac_NNW : base_road 
	{
		scope = 1;
		name = "Road NNW of Montignac";
		marker = "site_road_montignac_NNW";
		position[] = { 4794.82, 20249.6, 0 };
		angle = 91;
	};

	class road_tyrone_SSW : base_road 
	{
		scope = 1;
		name = "Road SSW of Tyrone";
		marker = "site_road_tyrone_SSW";
		position[] = { 4593.32, 21255.5, 0 };
		angle = 440;
	};

	class road_montignac_NNE : base_road 
	{
		scope = 1;
		name = "Road NNE of Montignac";
		marker = "site_road_montignac_NNE";
		position[] = { 5129.05, 20318.6, 0 };
		angle = 310;
	};

	class road_regina_N : base_road 
	{
		scope = 1;
		name = "Road N of Regina";
		marker = "site_road_regina_N";
		position[] = { 7153.18, 15437.8, 0 };
		angle = 263;
	};



	// --------------------------------------------------------------
	// missionSites - COMPOUND POSITIONS

	class comp_vernon_SE : base_comp 
	{
		scope = 1;
		name = "SE of Vernon";
		marker = "site_comp_vernon_SE";
		position[] = { 9230.83, 14850.4, 0 };
	};

	class comp_figari_ESE : base_comp 
	{
		scope = 1;
		name = "ESE of Figari";
		marker = "site_comp_figari_ESE";
		position[] = { 6267.93, 17686.5, 0 };
	};

	class comp_figari_E : base_comp 
	{
		scope = 1;
		name = "E of Figari";
		marker = "site_comp_figari_E";
		position[] = { 5621.82, 18122, 0 };
	};

	class comp_figari_NNW : base_comp 
	{
		scope = 1;
		name = "NNW of Figari";
		marker = "site_comp_figari_NNW";
		position[] = { 5086.24, 18602.6, 0 };
	};

	class comp_morton_W : base_comp 
	{
		scope = 1;
		name = "W of Morton";
		marker = "site_comp_morton_W";
		position[] = { 4781.79, 16738.5, 0 };
	};

	class comp_lemoule_SE : base_comp 
	{
		scope = 1;
		name = "SE of Le Moule";
		marker = "site_comp_lemoule_SE";
		position[] = { 3553.28, 17572.6, 0 };
	};

	class comp_lemoule_NNE : base_comp 
	{
		scope = 1;
		name = "NNE of Le Moule";
		marker = "site_comp_lemoule_NNE";
		position[] = { 2906.7, 19289.8, 0 };
	};

	class comp_tyrone_SE : base_comp 
	{
		scope = 1;
		name = "SE of Tyrone";
		marker = "site_comp_tyrone_SE";
		position[] = { 5492.6, 21230.9, 0 };
	};

	class comp_tyrone_NE : base_comp 
	{
		scope = 1;
		name = "NE of Tyrone";
		marker = "site_comp_tyrone_NE";
		position[] = { 5449.15, 22171, 0 };
	};

	class comp_saintphillippe_S : base_comp 
	{
		scope = 1;
		name = "S of Saint Phillippe";
		marker = "site_comp_saintphillippe_S";
		position[] = { 4624.1, 22953.2, 0 };
	};

	class comp_saintphillippe_NE : base_comp 
	{
		scope = 1;
		name = "NE of Saint Phillippe";
		marker = "site_comp_saintphillippe_NE";
		position[] = { 5065.43, 23795.9, 0 };
	};


};
