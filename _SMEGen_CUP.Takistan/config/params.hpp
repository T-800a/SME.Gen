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

	
	class param20 { title = "----- FAR Revive Settings -----"; };
	class param21 
	{
		title		= "enable/disable FAR Revive";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT (ENABLED)" };
		default		= 999;
	};
	
	class param22 
	{
		title		= "Who can revive?";
		values[]	= { 0,			1,							2,			3,						999 };
		texts[]		= { "everyone",	"everyone with Medikit",	"medics",	"medics with medikit",	"DEFAULT (everyone with Medikit)" };
		default		= 999;
	};
	
	class param23 
	{
		title		= "Will reviving consume a FirstAidKit";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT (NO)" };
		default		= 999;
	};
	
	class param24 
	{
		title		= "Who long can a player be unconcious?";
		values[]	= { 0,		1,		2,		3,		4,		5,		999 };
		texts[]		= { "60s",	"120s",	"180s",	"240s",	"300s", "360s", "DEFAULT (240s)" };
		default		= 999;	
	};

	class param25
	{
		title		= "How much health does a player have after reviving?";
		values[]	= { 0,		1,		2,		3,		999 };
		texts[]		= { "100%",	"75%",	"50%",	"25%",	"DEFAULT (50%)" };
		default		= 999;	
	};

	class param26 { title = "-"; };
	class param27 { title = "-"; };
	class param28 { title = "-"; };
	class param29 { title = "-"; };
	class param30 { title = "-"; };
};