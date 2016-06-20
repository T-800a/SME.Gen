/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		ui.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
 =======================================================================================================================
*/


class RscTitles
{
	class SME_progressbar
	{
		idd = -1;
		movingEnable = 0;
		fadein = 0;
		duration = 9999999;
		fadeout = 0;
		name = "SME_progressbar";
		onLoad = "uiNamespace setVariable ['SME_progressbar',_this select 0]";
		objects[] = {};
		
		class controlsBackground 
		{
			class MainBackground
			{
				idc = -1;
				type = 0;
				style = 0x00;
				shadow = 1;
				colorShadow[] = {0, 0, 0, 0.5};
				font = "PuristaMedium";
				SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
				text = "";
				colorText[] = {1, 1, 1, 1.0};
				linespacing = 1;
				
				colorBackground[] = {0, 0, 0, 0.7};
				x = 0.125;
				y = 0.1;
				w = 0.75;
				h = "(3/50) + (3/100)";
			};
		};
		
		class controls
		{
			class progBarSlider
			{
				access = 0;
				idc = 76402;
				type = 8;
				style = 0x00;
				default = 0;
				blinkingPeriod = 0;

				x = 0.125;
				y = 0.1;
				w = 0.75;
				h = (2/100);

				texture = "#(argb,8,8,3)color(1,1,1,1)";
				colorBar[] = {1,1,1,1};
				colorFrame[] = {0,0,0,1};

				tooltip = "";
				tooltipColorShade[] = {0,0,0,1};
				tooltipColorText[] = {1,1,1,1};
				tooltipColorBox[] = {1,1,1,1};

				onCanDestroy = "";
				onDestroy = "";
			};		
			
			class progBarText
			{
				type = 0;
				idc = 76401;
				style = 0x02;
				x = 0.125;
				y = 0.1 + (3/100);
				w = 0.75;
				h = (3/50);
				font = "PuristaBold";
				SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.15)";
				colorBackground[] = {0, 0, 0, 0};
				colorText[] = {1, 1, 1, 1};
				shadow = true;
				text = "Progress Bar";
			};
		};
	};
};