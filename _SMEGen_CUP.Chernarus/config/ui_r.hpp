#define true 1
#define false 0
#define ST_LEFT 0x00
#define ST_RIGHT 0x01 
#define ST_CENTER 0x02

class FAR_Diag 
{
	idd = 7700;
	movingEnable = true; 
	enableSimulation = true; 	
	
	controlsBackground[] = { FAR_Text_1, FAR_Text_2, FAR_Text_3, FAR_suiText, FAR_discoText };
	objects[] = {}; 
	controls[] = { FAR_sui, FAR_disco };
	
	onLoad = "uiNamespace setVariable [ 'FAR_Diag', _this select 0 ];";
	
	class  FAR_Text_1
	{ 
		idc = 7701;
		moving = 0;
		type = CT_STATIC;
		style = ST_CENTER;
		font = "puristaMedium";
		text = "------------";
		sizeEx = 0.03; 
		colorText[] = { 1, 1, 1, 1 };
		colorBackground[] = { 0, 0, 0, 0.4 }; 
		y = 0.7; x = 0.8; 
		w = 0.3; h = 0.03;
	};
	
	class  FAR_Text_2
	{ 
		idc = 7702;
		moving = 0;
		type = CT_STATIC;
		style = ST_LEFT;
		font = "puristaMedium";
		text = "------------";
		sizeEx = 0.03; 
		colorText[] = { 1, 1, 1, 1 };
		colorBackground[] = { 0, 0, 0, 0.4 }; 
		y = 0.732; x = 0.8; 
		w = 0.3; h = 0.03;
	};
	
	class  FAR_Text_3
	{ 
		idc = 7703;
		moving = 0;
		type = CT_STATIC;
		style = ST_LEFT;
		font = "puristaMedium";
		text = "------------";
		sizeEx = 0.03; 
		colorText[] = { 1, 1, 1, 1 };
		colorBackground[] = { 0, 0, 0, 0.4 }; 
		y = 0.764; x = 0.8; 
		w = 0.3; h = 0.03;
	};

	class FAR_sui
	{
		idc = 7704;
		moving = 1;
		type = 16;
		style = ST_CENTER;
		access = 0;
		default = 0;		
		font = "puristaMedium";
		text = "";

		color[] = {0,0,0,0};
		color2[] = {0,0,0,0};		
		colorText[] = { 1, 1, 1, 1 };
		colorText2[] = { 1, 1, 1, 1 };
		colorDisabled[] = { 1, 1, 1, 1 };
		colorBackground[] = {1, 0, 0, 0.3};
		colorBackground2[] = {0, 0, 0, 0};
		colorActiveBackground[] = {1, 0, 0, 0.6};
		colorFocused[] = {1, 0, 0, 0.3};
		colorBackgroundFocused[]  = {0, 0, 0, 0};
		period = 0;
		periodFocus = 0;
		periodOver = 0;	
		y = 0.796; x = 0.8; 
		w = 0.3; h = 0.03;

		action = "[] spawn FAR_fnc_killMe";

		size = 0.03; 
		sizeEx = 0.03; 

		animTextureNormal = "#(argb,8,8,3)color(1,0,0,0.4)"; 
		animTextureDisabled = "#(argb,8,8,3)color(1,0,0,0.2)"; 
		animTextureOver = "#(argb,8,8,3)color(1,0,0,0.8)"; 
		animTextureFocused = "#(argb,8,8,3)color(1,0,0,0.4)"; 
		animTexturePressed = "#(argb,8,8,3)color(1,0,0,0.8)"; 
		animTextureDefault = "#(argb,8,8,3)color(1,0,0,0.4)"; 
		
		textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
			
		class ShortcutPos { left = 0; top = 0; w = 0; h = 0; };
		class TextPos { left = 0; top = 0; 	right = 0; bottom = 0; };	
		class HitZone { left = 0; top = 0; right = 0; bottom = 0; };		
		soundEnter[] = {"", 0, 0};
		soundPush[] = {"", 0, 0};
		soundClick[] = {"", 0, 0};
		soundEscape[] = {"", 0, 0};
	};
	
	class  FAR_suiText
	{ 
		idc = -1;
		moving = 1;
		type = CT_STATIC;
		style = ST_CENTER;
		font = "puristaMedium";
		text = "Suicide";
		sizeEx = 0.03; 
		colorText[] = { 1, 1, 1, 1 };
		colorBackground[] = { 1, 1, 1, 0.2 }; 
		y = 0.796; x = 0.8; 
		w = 0.3; h = 0.03;
	};
	
	class FAR_disco
	{
		idc = 7705;
		moving = 1;
		type = 16;
		style = ST_CENTER;
		access = 0;
		default = 0;		
		font = "puristaMedium";
		text = "";

		color[] = {0,0,0,0};
		color2[] = {0,0,0,0};		
		colorText[] = { 1, 1, 1, 1 };
		colorText2[] = { 1, 1, 1, 1 };
		colorDisabled[] = { 1, 1, 1, 1 };
		colorBackground[] = {1, 0, 0, 0.3};
		colorBackground2[] = {0, 0, 0, 0};
		colorActiveBackground[] = {1, 0, 0, 0.6};
		colorFocused[] = {1, 0, 0, 0.3};
		colorBackgroundFocused[]  = {0, 0, 0, 0};
		period = 0;
		periodFocus = 0;
		periodOver = 0;	
		y = 0.828; x = 0.8; 
		w = 0.3; h = 0.03;

		action = "[] spawn FAR_fnc_disconnectMe;";

		size = 0.03; 
		sizeEx = 0.03; 

		animTextureNormal = "#(argb,8,8,3)color(1,0,0,0.4)"; 
		animTextureDisabled = "#(argb,8,8,3)color(1,0,0,0.2)"; 
		animTextureOver = "#(argb,8,8,3)color(1,0,0,0.8)"; 
		animTextureFocused = "#(argb,8,8,3)color(1,0,0,0.4)"; 
		animTexturePressed = "#(argb,8,8,3)color(1,0,0,0.8)"; 
		animTextureDefault = "#(argb,8,8,3)color(1,0,0,0.4)"; 
		
		textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
			
		class ShortcutPos { left = 0; top = 0; w = 0; h = 0; };
		class TextPos { left = 0; top = 0; 	right = 0; bottom = 0; };	
		class HitZone { left = 0; top = 0; right = 0; bottom = 0; };		
		soundEnter[] = {"", 0, 0};
		soundPush[] = {"", 0, 0};
		soundClick[] = {"", 0, 0};
		soundEscape[] = {"", 0, 0};
	};
	
	class  FAR_discoText
	{ 
		idc = -1;
		moving = 1;
		type = CT_STATIC;
		style = ST_CENTER;
		font = "puristaMedium";
		text = "Disconnect";
		sizeEx = 0.03; 
		colorText[] = { 1, 1, 1, 1 };
		colorBackground[] = { 1, 1, 1, 0.2 }; 
		y = 0.828; x = 0.8; 
		w = 0.3; h = 0.03;
	}; 	
};