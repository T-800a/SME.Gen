/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		params.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
 =======================================================================================================================
*/


class Params
{
	class param_titleSME
	{
		title		= "----- SME.Gen Settings -----";
		values[]	= {0};
		texts[]		= {"-----"};
		default		= 0;
	};

	class param_enemy
	{
		title		= "Enemy Faction";
		values[]	= { 0,      1,            2,               3,     4,                5,                		6,							7,				20,					999 };
		texts[]		= { "CSAT", "CSAT Urban", "CSAT Guerilla", "AAF", "AAF - Guerilla", "CUP - Takistan Army",	"CUP - Takistan Locals",	"CUP - NAPA",	"RHS EAST militia",	"DEFAUL - CUP Takistan Army" };
		default		= 999;
	};

	class param_reward
	{
		title		= "Reward Set";
		values[]	= { 0,        1,				2,				20,				900,					901,						902,							999 };
		texts[]		= { "BLUFOR", "BLUFOR - ACE",	"CUP USMC",	"RHS Independent",	"Vanilla full Arsenal",	"CUP USMC full Arsenal",	"RHS Independent full Arsenal",	"DEFAULT - CUP USMC" };
		default		= 999;
	};
	
	class param_sites
	{
		title		= "Simultaneous Mission Sites";
		values[]	= { 0,          1,			2,			3,			999 };
		texts[]		= { "1 Site",	"2 Sites",	"3 Sites",	"4 Sites",	"DEFAULT - 2 Sites" };
		default		= 999;
	};
	
	class param_skill
	{
		title		= "AI Skill";
		values[]	= { 0,          1,			2,					999 };
		texts[]		= { "Militia",	"Army",		"Special Forces",	"DEFAULT - Militia" };
		default		= 999;
	};
	
	class param_loadout
	{
		title		= "Keep Loadout After Respawn";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT - Yes" };
		default		= 999;
	};
	
	class param_mapmarker
	{
		title		= "Show Map Marker for Players and Vehicles";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT - ENABLED" };
		default		= 999;
	};
	
	class param_vehiclepatrols
	{
		title		= "Allow Vehicle Patrols";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT - ENABLED" };
		default		= 999;
	};

	class param_titleFAR
	{
		title		= "----- FAR Revive Settings -----";
		values[]	= {0};
		texts[]		= {"-----"};
		default		= 0;
	};
	
	class param_FAR_enable 
	{
		title		= "enable/disable FAR Revive";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT - ENABLED" };
		default		= 999;
	};
	
	class param_FAR_medic
	{
		title		= "Who can revive?";
		values[]	= { 0,			1,							2,			3,						999 };
		texts[]		= { "everyone",	"everyone with Medikit",	"medics",	"medics with medikit",	"DEFAULT - everyone with Medikit" };
		default		= 999;
	};
	
	class param_FAR_needfak 
	{
		title		= "Will reviving consume a FirstAidKit";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT - NO" };
		default		= 999;
	};
	
	class param_FAR_bleedout 
	{
		title		= "Who long can a player be unconcious?";
		values[]	= { 0,		1,		2,		3,		4,		5,		999 };
		texts[]		= { "60s",	"120s",	"180s",	"240s",	"300s", "360s", "DEFAULT - 240s" };
		default		= 999;	
	};

	class param_FAR_health
	{
		title		= "How much health does a player have after reviving?";
		values[]	= { 0,		1,		2,		3,		999 };
		texts[]		= { "100%",	"75%",	"50%",	"25%",	"DEFAULT - 50%" };
		default		= 999;	
	};
};