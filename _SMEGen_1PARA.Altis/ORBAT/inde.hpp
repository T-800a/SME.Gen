/*
 =======================================================================================================

		Autor:		T-800a
 
		File:		ORBAT/inde.hpp

 =======================================================================================================
*/


class AAF_hostile
{
	id = 1;
	idType = 0;
	side = "Resistance";
	size = "Brigade";
	type = "HQ";
	commander = "Agamedes Mikanos";
	commanderRank = "General";

	text = "General Agamedes Mikanos";
	textShort = "General A. Mikanos";
	
//	texture = "\ASC\ASC_SAG_campaign\i\orbat\AAF.paa";
//	color[] = {0,0,1,1};
	insignia = "\ASC\ASC_SAG_campaign\i\orbat\AAF.paa";
//	colorInisgnia[] = {0,0,1,1};


// 3. Batallion
	
	class bat_01
	{
		id = 3;
		idType = 0;
		side = "Resistance";
		size = "Battalion";
		type = "MotorizedInfantry";
		commander = "Stephanos Mangas";
		commanderRank = "Colonel";
		
		text = "%1 %2 %3";
		textShort = "%1 %3";
		
		class com_01
		{
			id = 1;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "HQ";
			commander = "Alessandro Baros";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
		};

		class com_02
		{
			id = 2;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "Support";
			commander = "Oceanus Economou";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "UAV";
				commander = "Laertes Gallo";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Mortar";
				commander = "Zerro Sotir";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Recon";
				commander = "Anton Toles";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};				
		};
		
		class com_03
		{
			id = 3;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Endymion Georgiadis";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Ares Agnes";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Erebus Lampros";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Zeno Stratos";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};	
		};

		class com_04
		{
			id = 4;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Cecrops Drivas";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Ivankor Ballas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Iason Rigas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Thais Miron";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
		
		class com_05
		{
			id = 5;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "Infantry";
			commander = "Timeus Maris";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Recon";
				commander = "Dion Kostas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Infantry";
				commander = "Argus Papadakis";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Infantry";
				commander = "Abderus Petras";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
	};


// 6. Batallion

	class bat_02
	{
		id = 6;
		idType = 0;
		side = "Resistance";
		size = "Battalion";
		type = "MotorizedInfantry";
		commander = "Argos Petro";
		commanderRank = "Colonel";
		
		text = "%1 %2 %3";
		textShort = "%1 %3";
		
		
		class com_01
		{
			id = 1;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "HQ";
			commander = "Telamon Georgiadis";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
		};

		class com_02
		{
			id = 2;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "Support";
			commander = "Patroclus Loukas";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "UAV";
				commander = "Achates Kakos";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Mortar";
				commander = "Nikolajis Karalis";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Mortar";
				commander = "Xanthus Mangas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};				
		};
		
		class com_03
		{
			id = 3;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Niklaus Sallas";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Medical";
				commander = "Aindriu Cosse";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Thanos Ballas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Damen Perris";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};	
		};

		class com_04
		{
			id = 4;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Procrustes Remis";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Aeneas Asker";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Absyrtus Sallis";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Helicopter";
				commander = "Athanasios Harris";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
		
		class com_05
		{
			id = 5;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Cenon Eliades";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MechanizedInfantry";
				commander = "Damaskinos Dimitriou";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Infantry";
				commander = "Icarius Lampros";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Armored";
				commander = "Stephon Varela";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
	};


// 16. Batallion

	class bat_03
	{
		id = 16;
		idType = 0;
		side = "Resistance";
		size = "Battalion";
		type = "MechanizedInfantry";
		commander = "Enceladus Maras";
		commanderRank = "Colonel";
		
		text = "%1 %2 %3";
		textShort = "%1 %3";
		
		class com_01
		{
			id = 1;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "HQ";
			commander = "Colin Petrou";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
		};

		class com_02
		{
			id = 2;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "Support";
			commander = "Damae Logo";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "AttackRecon";
				commander = "Palamedes Athas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Armored";
				commander = "Telemachus Scala";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Mortar";
				commander = "Bemus Pardo";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};				
		};
		
		class com_03
		{
			id = 3;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Theodon Samaras";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Fighter";
				commander = "Helios Pulos";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Fighter";
				commander = "Chrysostom Buros";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Cavalry";
				commander = "Charybdis Minas";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};	
		};

		class com_04
		{
			id = 4;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MotorizedInfantry";
			commander = "Attis Palamara";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Anastagio Sotir";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MotorizedInfantry";
				commander = "Demetrios Kritikos";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Medical";
				commander = "Ixion Valis";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
		
		class com_05
		{
			id = 5;
			idType = 0;
			side = "Resistance";
			size = "Company";
			type = "MechanizedInfantry";
			commander = "Pavlos Murga";
			commanderRank = "Major";
			
			text = "%1 %2 %3";
			textShort = "%1 %3";
			
			class pla_01
			{
				id = 1;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "MechanizedInfantry";
				commander = "Homeros Zurlo";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_02
			{
				id = 2;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Infantry";
				commander = "Jason Paules";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};

			class pla_03
			{
				id = 3;
				idType = 0;
				side = "Resistance";
				size = "Platoon";
				type = "Infantry";
				commander = "Zarek Paules";
				commanderRank = "Lieutenant";
				
				text = "%1 %2 %3";
				textShort = "%1 %3";
			};
		};
	};
};