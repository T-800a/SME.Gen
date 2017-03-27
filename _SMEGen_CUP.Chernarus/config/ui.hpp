/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		ui.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	
 =======================================================================================================================
*/


class SME_RscText
{
	type = 0;
	idc = -1;
	x = 0;
	y = 0;
	w = 64;
	h = 16;
	style = 0;
	shadow = 1;
	colorShadow[] = {0, 0, 0, 0.5};
	font = "RobotoCondensed";
	sizeEx = 0.04;
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0, 0, 0, 0};
	linespacing = 1;
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
	text = "Default Text";
};

class SME_RscButton
{
	access = 0;
	idc = -1;
	type = 1;
	style = 0;
	x = 0;
	y = 0;
	w = 64;
	h = 16;
	text = "Default Text";
	font = "RobotoCondensed";
	sizeEx = 0.04;
	colorText[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorBackground[] = {0, 0, 0, 0.6};
	colorBackgroundActive[] = {0, 0, 0, 1};
	colorBackgroundDisabled[] = {0, 0, 0, 0.5};
	colorFocused[] = {0, 0, 0, 1};
	colorShadow[] = {0, 0, 0, 0};
	offsetX = 0.004;
	offsetY = 0.004;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	shadow = 2;
	colorBorder[] = {0, 0, 0, 1};
	borderSize = 0;
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1};
	soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1};
	soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1};
	soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1};
};

class SME_RscListBox
{
	type = 5;
	idc = -1;
	x = 0;
	y = 0;
	w = 120;
	h = 80;
	style = 0;
	font = "RobotoCondensed";
	sizeEx = 0.04;
	shadow = 0;
	colorShadow[] = {0, 0, 0, 0.5};
	colorText[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorSelect[] = {0, 0, 0, 1};
	colorSelect2[] = {0, 0, 0, 1};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	period = 1.2;
	colorBackground[] = {0, 0, 0, 0};
	maxHistoryDelay = 1;
	colorPicture[] = {1, 1, 1, 1};
	colorPictureSelected[] = {1, 1, 1, 1};
	colorPictureDisabled[] = {1, 1, 1, 0.25};
	colorPictureRight[] = {1, 1, 1, 1};
	colorPictureRightSelected[] = {1, 1, 1, 1};
	colorPictureRightDisabled[] = {1, 1, 1, 0.25};
	colorTextRight[] = {1, 1, 1, 1};
	colorSelectRight[] = {0, 0, 0, 1};
	colorSelect2Right[] = {0, 0, 0, 1};
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect", 0.09, 1};
	rowHeight = 0;
	fade = 0;
	deletable = 0;

	class ListScrollBar
	{
		color[] = {1, 1, 1, 1};
		autoScrollEnabled = 1;
		autoScrollDelay = 5;
		autoScrollRewind = 0;
		autoScrollSpeed = -1;
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		height = 0;
		scrollSpeed = 0.06;
		shadow = 0;
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		width = 0;
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	};
};

class SME_RscBackground
{
	type = 0;
	idc = -1;
	style = 128;
	text = "";
	colorText[] = {0, 0, 0, 0};
	font = "RobotoCondensed";
	sizeEx = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 20;
	h = 20;
	colorBackground[] = {0.2, 0.2, 0.2, 0.4};
};


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


class SME_teleportMenu
{
	idd = 58100;
	name= "SME_teleportMenu";
	movingEnable = 1;
	enableSimulation = 1;
	
	objects[]				= {};
	controls[]				= { "SME_Title", "SME_List", "SME_Close", "SME_Teleport" };
	controlsBackground[]	= { "SME_TitleBackground", "SME_MainBackground" };
	
	class SME_TitleBackground : SME_RscBackground
	{
		x = -0.30;
		y = 0;
		w = 0.318;
		h = (1 / 25);
		colorBackground[] = {0, 0, 0, 0.6};
	};

	class SME_MainBackground : SME_RscBackground
	{
		x = -0.30;
		y = 0 + (11 / 250);
		w = 0.318;
		h = 0.36;
	};

	class SME_Title : SME_RscText
	{
		idc = 58102;
		text = "Relocate";
		moving = 1;
		x = -0.30;
		y = 0;
		w = 0.6;
		h = (1 / 25);
	};
   
   class SME_List : SME_RscListBox
	{
		idc = 58101;
		x = -0.30;
		y = 0 + (11 / 250);
		w = 0.318;
		h = 0.36;
		
		onLBSelChanged = "";
	};

	class SME_Teleport : SME_RscButton
	{
		text = "relocate";
		x = -0.3;
		y = 0.45 - (1 / 25);
		w = 0.318;
		h = (1 / 25);
		onButtonClick = "";
	};

	class SME_Close : SME_RscButton
	{
		text = "close";
		x = -0.14;
		y = 0.5 - (1 / 25);
		w = (6.25 / 40);
		h = (1 / 25);
		onButtonClick = "closeDialog 58000;";
	};
};