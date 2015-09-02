/*
 =======================================================================================================

		Autor:		T-800a
 
		File:		ORBAT/east.hpp

 =======================================================================================================
*/


class CSAT_invader
{
	id = 177;
	idType = 0;
	side = "East";
	size = "Brigade";
	type = "CombatAviation";
	commander = "Tous Kocheck";
	commanderRank = "General";

	text = "%1 Air Raiders %2 %3";
	textShort = "%1 Air Raiders %3";
	
//	texture = "\ASC\ASC_SAG_campaign\i\orbat\CSAT.paa";
//	color[] = {0,0,1,1};
	insignia = "\ASC\ASC_SAG_campaign\i\orbat\CSAT.paa";
//	colorInisgnia[] = {0,0,1,1};


// 5. Batallion

	class bat_01
	{
		id = 5;
		idType = 0;
		side = "East";
		size = "Battalion";
		type = "MotorizedInfantry";
		commander = "Ruhullah Tejam";
		commanderRank = "Colonel";
		
		text = "%1 %2 %3";
		textShort = "%1 %3";
		
		class com_01
		{
			id = 1;
			idType = 0;
			side = "East";
			size = "Company";
			type = "HQ";
			commander = "Sorush Afsadi";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
		};

		class com_02
		{
			id = 2;
			idType = 0;
			side = "East";
			size = "Company";
			type = "Support";
			commander = "Borjasb Jamshidian";
			commanderRank = "Major";
			
			text = "%1 Air-Defense %2 %3";
			textShort = "%1 Air-Defense %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Support";
				commander = "Jahangir Faredooni";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Support";
				commander = "Farsad Daruwala";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Support";
				commander = "Koshyar Pirgeibi";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};				
		};
		
		class com_03
		{
			id = 3;
			idType = 0;
			side = "East";
			size = "Company";
			type = "Assault";
			commander = "Sassan Arethna";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Assault";
				commander = "Farzan Edulbehram";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Assault";
				commander = "Mardavij Daas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "MechanizedInfantry";
				commander = "Saviz Pourdehi";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};	
		};

		class com_04
		{
			id = 4;
			idType = 0;
			side = "East";
			size = "Company";
			type = "Assault";
			commander = "Mehram Sohrabi";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Behnood Chobdar";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Lal Marshall";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "MechanizedInfantry";
				commander = "Shaheen Jahanbani";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
		
		class com_05
		{
			id = 5;
			idType = 0;
			side = "East";
			size = "Company";
			type = "Infantry";
			commander = "Farshad Limzarwala";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Infantry";
				commander = "Shahnam Topchi";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Infantry";
				commander = "Jahangir Baghkhanian";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "East";
				size = "Platoon";
				type = "Medical";
				commander = "Sorna Izadian";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
	};
};