/*
=======================================================================================================

	@client
	
	File:		hintConfig.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

=======================================================================================================
*/ 

T8C_var_hintBuffer			= [];
T8C_var_hintActive			= false;
T8C_var_hintMinShowTime		= 8;

T8C_var_hintHeadArray		= [		"", "<img image='images\usoc.paa'/><br/>" ];
T8C_var_hintPresetArray		= [		"<t size='6' color='#FFFFFF' align='left'>%1</t><br /><t size='1.2' color='#E6E6E6' align='left'>%2</t>",
									"<t size='1' color='#2ECCFA' align='right'>%1</t><br /><t size='1.2' color='#58ACFA' align='left'>%2</t>" ];
T8C_var_hintTextArray		= [ 
									localize "STR_SMEGen_hint_Reward01",	// 0
									localize "STR_SMEGen_hint_Reward02",	// 1
									localize "STR_SMEGen_hint_Reward03"		// 2
							];