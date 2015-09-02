/*
 =======================================================================================================

		Autor:		T-800a
 
		File:		ORBAT/west.hpp

 =======================================================================================================
*/

class 1PARA
{
	id = 1;
	idType = 0;
	side = "West";
	size = "Platoon";
	type = "HQ";
	commander = "A. C. Shoodallod";
	commanderRank = "Major";

	text = "%1 Battalion, Parachute Regiment";
	textShort = "%1 PARA";

//	texture = "\ASC\ASC_SAG_campaign\i\orbat\x.paa";
//	color[] = {0,0,1,1};
	insignia = "\ASC\ASC_SAG_campaign\i\orbat\1PARA.paa";
//	colorInisgnia[] = {0,0,1,1};
	
	class SAG
	{
		id = 1;
		idType = 0;
		side = "West";
		size = "Section";
		type = "Recon";
		commander = "Pake Slisskenn";
		commanderRank = "Captain";
		
		text = "Special Assault Group";
		textShort = "S.A.G.";
		
		texture = "\ASC\ASC_SAG_campaign\i\orbat\SAG.paa";
		color[] = {1,1,1,1};
//		insignia = "\ASC\ASC_SAG_campaign\i\orbat\x.paa";
//		colorInisgnia[] = {0,0,1,1};
		
		class SAG_hq
		{
			id = 1;
			idType = 0;
			side = "West";
			size = "Squad";
			type = "HQ";
			commander = "Pinnie Wooh";
			commanderRank = "Lieutenant";
			
			text = "Special Assault Group - Headquaters";
			textShort = "S.A.G. - HQ";

			class SAG_pf
			{
				id = 1;
				idType = 0;
				side = "West";
				size = "Squad";
				type = "Airborne";
				commander = "Al. P. Brandon";
				commanderRank = "Sergeant";
				
				text = "%1 %2 - Pathfinder";
				textShort = "Pathfinder";
			};
			
			class SAG_vi
			{
				id = 1;
				idType = 0;
				side = "West";
				size = "Squad";
				type = "Airborne";
				commander = "John Matrix";
				commanderRank = "Sergeant";
				
				text = "%1 %2 - Viking";
				textShort = "Viking";
			};
		};
	};
};

class NATO_MC
{
	id = 2;
	idType = 0;
	side = "West";
	size = "Company";
	type = "Maintenance";
	commander = "B. J. Blaskowitz (MIA)";
	commanderRank = "Lieutenant";

	text = "%1 %2 %3 - OVERRUN -";
	textShort = "%1 %3 - OVERRUN -";
	
	color[] = { 0.7, 0.7, 0.7, 1 };
	insignia = "\ASC\ASC_SAG_campaign\i\orbat\NATO.paa";
};

class FIA_REB
{
	id = 3;
	idType = 0;
	side = "West";
	size = "Company";
	type = "MotorizedInfantry";
	commander = "Crix Madine";
	commanderRank = "Captain";

	text = "Freedom and Independence Army";
	textShort = "F.I.A.";
	
	color[] = { 1, 1, 1, 1 };
	insignia = "\ASC\ASC_SAG_campaign\i\orbat\FIA.paa";
};