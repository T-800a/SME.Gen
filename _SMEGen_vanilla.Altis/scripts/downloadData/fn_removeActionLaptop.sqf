/*
 =======================================================================================================================

	downloadData - V004
	
	a small script to download data from a laptop ( and as example because of this complete a task )

	File:		fn_removeActionLaptop.sqf
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


_laptop = _this select 0;
_id = _this select 1;
_laptop removeAction _id;
