/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_addDiary.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

player createDiarySubject [ "smegen", "SME.Gen" ];
player createDiaryRecord  [ "smegen", [ localize "STR_SMEGen_diary_server_titel", localize "STR_SMEGen_diary_server_text" ]];
player createDiaryRecord  [ "smegen", [ localize "STR_SMEGen_diary_keys_titel", localize "STR_SMEGen_diary_keys_text" ]];
player createDiaryRecord  [ "smegen", [ localize "STR_SMEGen_diary_desc_titel", localize "STR_SMEGen_diary_desc_text" ]];
