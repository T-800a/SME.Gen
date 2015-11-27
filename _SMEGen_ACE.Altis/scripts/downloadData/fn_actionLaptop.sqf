/*
 =======================================================================================================================

	downloadData - V004
	
	a small script to download data from a laptop ( and as example because of this complete a task )

	File:		fn_ActionLaptop.sqf
	Author:		T-800a / cuel for percentages
	
	How to:
	If you want one or more objects to be used with the script, give those objects a name in the editor and add/edit the
	following line in the init.sqf
	
	[ [ laptop01, nameOfMyPlacedObj, ... ], "T8L_fnc_addActionLaptop", true, true] spawn BIS_fnc_MP;
	[ laptop01, nameOfMyPlacedObj, ... ] remoteExec [ "T8L_fnc_addActionLaptop", 0, true ];

	You can check if the download on a laptop/object was finished and/or if someone uses the object by checking the 
	following variables saved to the object:
	
	_laptopInUse		= _myLaptop getVariable [ "T8L_pvar_inUse", false ];
	_downloadComplete	= _myLaptop getVariable [ "T8L_pvar_dataDownloaded", false ];

	
 ===== LICENSE =========================================================================================================
	
	DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
	Version 2, December 2004

	Copyright (C) 2004 Sam Hocevar
	14 rue de Plaisance, 75014 Paris, France
	Everyone is permitted to copy and distribute verbatim or modified
	copies of this license document, and changing it is allowed as long
	as the name is changed.

	DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

	0. You just DO WHAT THE FUCK YOU WANT TO.

 =======================================================================================================================
*/

private [ "_laptop", "_caller", "_id" ];
_laptop = _this select 0;
_caller = _this select 1;
_id = _this select 2;

if ( _laptop getVariable [ "T8L_pvar_inUse", false ] ) exitWith { cutText [ T8L_var_TLine02, "PLAIN" ]; };
if ( _laptop getVariable [ "T8L_pvar_dataDownloaded", false ] ) exitWith { cutText [ T8L_var_TLine04, "PLAIN" ]; };

cutText [ T8L_var_TLine03, "PLAIN" ];

_laptop setVariable [ "T8L_pvar_inUse", true, true ];
	
[ _laptop, _id ] spawn 
{
	private [ "_laptop", "_id", "_newFile", "_dlRate", "_percent", "_fileSize" ];
	
	_laptop		= _this select 0;
	_id			= _this select 1;
	
	_fileSize = _laptop getVariable [ "T8L_pvar_fileSize", 32768 ];
	
	_newFile = 0;
	T8L_var_DialogAbort = false;
	T8L_var_DialogSucce = false;
	
	createDialog "T8L_DataDownloadDialog";
	
	sleep 0.5;
	ctrlSetText [ 8001, T8L_var_TLine06 ];
	sleep 0.5;
	ctrlSetText [ 8001, T8L_var_TLine07 ];		
	ctrlSetText [ 8003, format [ "%1 kb", _fileSize ] ];		
	ctrlSetText [ 8004, format [ "%1 kb", _newFile ] ];		
	
	while { !T8L_var_DialogAbort } do
	{
		_dlRate = 200 + random 80;
		_newFile = _newFile + _dlRate;

		if ( _newFile > _fileSize ) then 
		{
			_dlRate = 0;		
			_newFile = _fileSize;
			
			ctrlSetText [ 8001, T8L_var_TLine04 ];			
			cutText [ T8L_var_TLine04, "PLAIN" ];
			
			T8L_var_DialogAbort = true;
			T8L_var_DialogSucce = true;
			_laptop setVariable [ "T8L_pvar_dataDownloaded", true, true ];			

			[ _laptop, _id ] remoteExec [ "T8L_fnc_removeActionLaptop", 0, true ]; 
			// [ [ _laptop, _id ], "T8L_fnc_removeActionLaptop", true, true ] spawn BIS_fnc_MP;
		};
		
		// percentage part by cuel!
		ctrlSetText [ 8002, format [ "%1 kb/t", _dlRate ] ];        
		_percent =  ( _newFile / _fileSize );
		_percent = toArray str _percent;
		{ _percent set [_x,-1] } forEach [ 0, 1 ]; 
		_percent = _percent - [-1];
		_percent resize 2;
		_percent = toString _percent;
		ctrlSetText [ 8004, format [ "%1 kb (%2%3)", _newFile, (if ( T8L_var_DialogAbort ) then { 100 } else { _percent }), "%" ]];
		
		sleep 0.25;
	};
	
	T8L_var_DialogAbort = false;

	_laptop setVariable [ "T8L_pvar_inUse", false, true ];	
};

