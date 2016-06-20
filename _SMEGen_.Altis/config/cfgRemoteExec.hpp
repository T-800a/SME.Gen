/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		cfgRemoteExec.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class CfgRemoteExec
{        
	class Functions
	{
		// State of remoteExec: 
		// 0 - turned off
		// 1 - turned on, taking whitelist into account,
		// 2 - turned on, however, ignoring whitelists (default because of backward compatibility)
		
		mode = 1;
		
		// Ability to send jip messages:
		// 0 - disabled,
		// 1 - enabled (default)
		
		jip = 1;
		
/* ------------------
		//  functions:
		class YourFunction1
		{
			// targes:
			// 0 - can target anyone (default)
			// 1 - can target only clients
			// 2 - can target only the server
			
			allowedTargets = 1;
			
			// JIP:
			// 0 - sending jip messages is disabled for this function (overrides settings in the Functions class)
			// 1 - OK
			
			jip = 0;
		};
----------------- */

		class T8C_fnc_hintProcess { allowedTargets = 1; };
		class T8SME_client_fnc_handleReward { allowedTargets = 1; };
		class T8SME_client_fnc_addActionIntel { allowedTargets = 0; };
		
	// downloadData / Laptop	
		class T8L_fnc_addActionLaptop { allowedTargets = 0; };
		class T8L_fnc_removeActionLaptop { allowedTargets = 0; };
	}; 
}; 