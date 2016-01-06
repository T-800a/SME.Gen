/*
 =======================================================================================================================

	T8 Units Script

	File:		MACRO.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

// #define __DEBUG(FILE,TEXT,VAR)
#define __DEBUG(FILE,TEXT,VAR)			[FILE,TEXT,VAR] call T8C_fnc_debug
#define __DEBUGCON(TEXT)				"debug_console" callExtension (TEXT + "~0000")

#define __GetMVAR(VAR,VAL)				missionNamespace getVariable [ VAR, VAL ]
#define __GetOVAR(OBJ,VAR,VAL)			OBJ getVariable [ VAR, VAL ]

#define __SetMVAR(VAR,VAL)				missionNamespace setVariable [ VAR, VAL, false ]
#define __SetMVARG(VAR,VAL)				missionNamespace setVariable [ VAR, VAL, true ]
#define __SetOVAR(OBJ,VAR,VAL)			OBJ setVariable [ VAR, VAL, false ]
#define __SetOVARG(OBJ,VAR,VAL)			OBJ setVariable [ VAR, VAL, true ]


