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
		values[]	= { 0,      1,            2,               3,     4,                5,                		999 };
		texts[]		= { "CSAT", "CSAT Urban", "CSAT Guerilla", "AAF", "AAF - Guerilla", "CUP - Takistan Army",	"DEFAULT" };
		default		= 999;
	};
	
	class rewardSet
	{
		title		= "Reward Set";
		values[]	= { 0,        1,                       2,          			999 };
		texts[]		= { "BLUFOR", "BLUFOR - full Arsenal", "CUP - USMC", 		"DEFAULT" };
		default		= 999;
	};
	
	class amountMissionSites
	{
		title		= "Simultaneous Mission Sites";
		values[]	= { 0,          1,			2,			3,			999 };
		texts[]		= { "1 Site",	"2 Sites",	"3 Sites",	"4 Sites",	"DEFAULT" };
		default		= 999;
	};
	
	class AISkill
	{
		title		= "AI Skill";
		values[]	= { 0,          1,			2,					999 };
		texts[]		= { "Militia",	"Army",		"Special Forces",	"DEFAULT" };
		default		= 999;
	};
	
	class RespawnLoadout
	{
		title		= "Keep Loadout After Respawn";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT" };
		default		= 999;
	};
};