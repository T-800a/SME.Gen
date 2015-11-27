/*
 =======================================================================================================================
	
	@server
	
	File:		altis_mainbase.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_cFnc is a modiefied version of the original XCAM function!
	
 =======================================================================================================================
*/

private [ "_cFnc" ];

_cFnc = 
{
	private [ "_obj" ];
	if (( count _this ) isEqualTo 9 ) then
	{
		_obj = _this select 8;
	} else {
		_obj = createVehicle [(_this select 0), call compile (_this select 1), [], 0, "CAN_COLLIDE" ];
	};
	if((_this select 4) == 0) then {_obj enableSimulation false};
	_obj setdir (_this select 2);
	if((_this select 3) == -100) then
	{
		_obj setposATL (call compile (_this select 1));
		if((_this select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_this select 1)) select 0),((call compile (_this select 1)) select 1),(_this select 3)];
		[_obj,((_this select 7) select 0),((_this select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_this select 6) > 0) then {{call _x} foreach (_this select 6)};
	
	_obj allowDamage false;
	
	//Return
	_obj
};

["Land_HBarrierBig_F","[706.216675,12067.0595703,0]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[706.216675,12075.555664,0]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[706.216675,12084.0517578,0]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[706.216675,12092.547852,0]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[706.216675,12101.0439453,0]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[706.216675,12109.540039,-0.0799664]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_JetEngineStarter_01_F","[741.39563,12064.0283203,0]",-270,-100,1,0,[],[0,0]] call _cFnc;
["Land_DieselGroundPowerUnit_01_F","[768.411926,12069.0742188,0]",-263.119,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_grey_F","[755.579041,12054.526367,0]",-316.465,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo40_military_green_F","[709.0756226,12079.192383,0]",-269.495,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_sand_F","[730.801636,12046.118164,0.111111]",-289.697,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo10_military_green_F","[726.05896,12048.435547,0.186869]",-257.626,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_medium_F","[728.26239,12052.163086,0.154882]",-257.626,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_large_F","[729.203064,12051.232422,0.154882]",-279.28,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_small_F","[729.328369,12052.0234375,0.154882]",-252.891,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_large_F","[733.772034,12052.553711,0.154882]",-310.909,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_medium_F","[732.968689,12052.685547,0.154882]",-310.909,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_small_F","[733.620422,12053.18457,0.154882]",-297.462,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_box_F","[733.378235,12050.742188,0.154882]",-297.462,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_barrels_F","[709.89856,12056.614258,0.154882]",-271.199,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_barrels_F","[709.809753,12058.610352,0.154882]",-264.949,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_barrels_F","[712.150818,12058.62793,0.154882]",-453.346,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_barrels_F","[712.217957,12056.743164,0.154882]",-441.288,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_barrels_F","[714.134521,12056.491211,0.154882]",-441.288,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_barrels_F","[714.425415,12058.657227,0.154882]",-453.598,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[763.919067,12060.475586,0]",135,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[766.0317383,12065.797852,0]",90,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[758.584839,12058.329102,0]",180,-100,1,0,[],[0,0]] call _cFnc;
["SignAd_Sponsor_ARMEX_F","[732.120361,12052.0253906,0]",-180,-100,1,0,[],[0,0]] call _cFnc;
["SignAd_Sponsor_Vrana_F","[727.791565,12052.0253906,0]",-180,-100,1,0,[],[0,0]] call _cFnc;

["SignAd_Sponsor_F","[729.953735,12052.0253906,0]",-180,-100,1,0,[],[0,0],mission_obj_usoc_sign] call _cFnc;
["SignAd_Sponsor_F","[734.991699,12063.148438,0]",-180,-100,1,0,[],[0,0],mission_obj_arsenal_sign] call _cFnc;
["Land_InfoStand_V2_F","[729.882629,12055.912109,0.128408]",-180,-100,1,0,[],[0,0],mission_obj_arsenal_post] call _cFnc;
["Land_Billboard_F","[758.875549,12056.735352,0]",-180,-100,1,0,[],[0,0],mission_obj_billboard_01] call _cFnc;
["Land_Billboard_F","[765.0346069,12059.43457,0]",-225,-100,1,0,[],[0,0],mission_obj_billboard_02] call _cFnc;
["Land_Billboard_F","[767.549316,12065.90332,0]",-270,-100,1,0,[],[0,0],mission_obj_billboard_03] call _cFnc;

