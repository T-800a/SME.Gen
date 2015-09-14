/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator
	
	Funktion:	fn_welcome.sqf
	Author:		T-800a

 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8C_fnc_debug
// );

player createDiarySubject [ "smegen", "SME.Gen" ];
player createDiaryRecord  [ "smegen", [ localize "STR_SMEGen_diary_desc_titel", localize "STR_SMEGen_diary_desc_text" ]];
player createDiaryRecord  [ "smegen", [ localize "STR_SMEGen_diary_keys_titel", localize "STR_SMEGen_diary_keys_text" ]];

waitUntil { sleep 2; !dialog };

private [ "_title", "_text01", "_text02", "_output" ];

_title	= parseText format [ "<t size='1.3' color='#2ECCFA' align='center'><strong>%1</strong></t>", ( localize "STR_SMEGen_welcome_titel" )];
_text01	= parseText format [ "<t size='1.1' color='#58ACFA' align='left'>%1</t>", ( localize "STR_SMEGen_welcome_01" )];
_text02	= parseText format [ "<t size='1.1' color='#58ACFA' align='left'>%1</t>", ( localize "STR_SMEGen_welcome_02" )];

_output = composeText [ _text01, _text02 ];

// [ _output, _title, true, false ] call BIS_fnc_guiMessage;

