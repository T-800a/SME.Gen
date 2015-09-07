/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		params.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
 =======================================================================================================================
*/


class Params 
{
	class enemyFaction
	{
		title		= "Enemy Faction";
		values[]	= { 0,      1,            2,               3,     4,                5,                    999 };
		texts[]		= { "CSAT", "CSAT Urban", "CSAT Guerilla", "AAF", "AAF - Guerilla", "Altian State (SAG)", "DEFAULT" };
		default		= 999;
	};
	
	class rewardSet
	{
		title		= "Reward Set";
		values[]	= { 0,        1,             999 };
		texts[]		= { "BLUFOR", "1PARA - SAG", "DEFAULT" };
		default		= 999;
	};
};