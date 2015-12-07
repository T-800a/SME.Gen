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
		values[]	= { 0,        1,				2,				900,				999 };
		texts[]		= { "BLUFOR", "BLUFOR - ACE",	"CUP - USMC",	"full Arsenal",		"DEFAULT" };
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
	
	class allowMapMarker
	{
		title		= "Show Map Marker for Players and Vehicles";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT" };
		default		= 999;
	};
	
	class param06 { title = "-"; };
	class param07 { title = "-"; };
	class param08 { title = "-"; };
	class param09 { title = "-"; };
	class param10 { title = "-"; };
	class param11 { title = "-"; };
	class param12 { title = "-"; };
	class param13 { title = "-"; };
	class param14 { title = "-"; };
	class param15 { title = "-"; };
	class param16 { title = "-"; };
	class param17 { title = "-"; };
	class param18 { title = "-"; };
	class param19 { title = "-"; };
	class param20 { title = "-"; };
};