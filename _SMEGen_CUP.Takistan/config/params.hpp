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
	class param00 { title = "----- SME.Gen Settings -----"; values[] = {0}; texts[] = {""}; default = 0; };	

	class param01
	{
		title		= "Enemy Faction";
		values[]	= { 0,      1,            2,               3,     4,                5,                		20,					999 };
		texts[]		= { "CSAT", "CSAT Urban", "CSAT Guerilla", "AAF", "AAF - Guerilla", "CUP - Takistan Army",	"RHS EAST militia",	"DEFAULT: CUP - Takistan Army" };
		default		= 999;
	};
	
/*
// alternative params set if you want to play against BLUFOR
	class param01
	{
		title		= "Enemy Faction";
		values[]	= { 100,			110,			120,					999 };
		texts[]		= { "NATO Vanilla",	"CUP: USMC"		"RHS: US ARMY OCP",		"DEFAULT" };
		default		= 999;
	};
*/

	class param02
	{
		title		= "Reward Set";
		values[]	= { 0,        1,				2,				20,					900,						901,						902,								999 };
		texts[]		= { "BLUFOR", "BLUFOR - ACE",	"CUP: USMC",	"RHS: Independent",	"Vanilla - full Arsenal",	"CUP: USMC - full Arsenal",	"RHS: Independent - full Arsenal",	"DEFAULT: CUP - USMC" };
		default		= 999;
	};
	
	class param03
	{
		title		= "Simultaneous Mission Sites";
		values[]	= { 0,          1,			2,			3,			999 };
		texts[]		= { "1 Site",	"2 Sites",	"3 Sites",	"4 Sites",	"DEFAULT: 2 Sites" };
		default		= 999;
	};
	
	class param04
	{
		title		= "AI Skill";
		values[]	= { 0,          1,			2,					999 };
		texts[]		= { "Militia",	"Army",		"Special Forces",	"DEFAULT: Militia" };
		default		= 999;
	};
	
	class param05
	{
		title		= "Keep Loadout After Respawn";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT: Yes" };
		default		= 999;
	};
	
	class param06
	{
		title		= "Show Map Marker for Players and Vehicles";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT: ENABLED" };
		default		= 999;
	};
	
	class param07
	{
		title		= "Allow Vehicle Patrols";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT: ENABLED" };
		default		= 999;
	};
	
	class param08 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param09 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param10 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param11 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param12 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param13 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param14 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param15 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param16 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param17 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param18 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param19 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };

	
	class param20 { title = "----- FAR Revive Settings -----"; values[] = {0}; texts[] = {""}; default = 0; };
	class param21 
	{
		title		= "enable/disable FAR Revive";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT: ENABLED" };
		default		= 999;
	};
	
	class param22 
	{
		title		= "Who can revive?";
		values[]	= { 0,			1,							2,			3,						999 };
		texts[]		= { "everyone",	"everyone with Medikit",	"medics",	"medics with medikit",	"DEFAULT: everyone with Medikit" };
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
		texts[]		= { "60s",	"120s",	"180s",	"240s",	"300s", "360s", "DEFAULT: 240s" };
		default		= 999;	
	};

	class param25
	{
		title		= "How much health does a player have after reviving?";
		values[]	= { 0,		1,		2,		3,		999 };
		texts[]		= { "100%",	"75%",	"50%",	"25%",	"DEFAULT: 50%" };
		default		= 999;	
	};

	class param26 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param27 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param28 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param29 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
	class param30 { title = "-"; values[] = {0}; texts[] = {""}; default = 0; };
};