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

["Land_BarGate_F","[14172.123047,16341.90332,0]",39.1892,-100,1,0,[],[0,0]] call _cFnc;
["Land_BarGate_F","[14140.214844,16302.569336,0]",41.3988,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14164.897461,16343.518555,-0.229798]",130.836,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14159.338867,16336.855469,-0.229798]",130.836,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14153.780273,16330.193359,-0.229798]",130.836,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14148.27832,16323.483398,-0.229798]",129.836,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14142.836914,16316.725586,-0.229798]",129.836,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14137.452148,16309.921875,-0.229798]",128.836,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_1_F","[14178.12793,16337.168945,0]",-34.8108,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_1_F","[14177.192383,16338.231445,-0.010101]",-128.811,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14224.782227,16271.196289,-0.228115]",84.8158,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_Big_F","[14214.833008,16263.328125,-0.305556]",38.331,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[14216.317383,16277.481445,0]",42.3082,-100,1,0,[],[0,0]] call _cFnc;
["Land_BagBunker_Small_F","[14220.25293,16275.0966797,-0.0934343]",-2.70444,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[14212.117188,16281.277344,0]",42.3082,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_1_F","[14223.00488281,16273.332031,0]",-6.68171,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14221.973633,16272.352539,0]",9.22739,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14222.0488281,16271.922852,0]",8.21729,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14222.164063,16271.360352,0]",4.9976,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14222.270508,16270.5625,0]",19.4547,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14222.65625,16269.689453,0]",27.9774,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo_Patrol_V1_F","[14223.286133,16280.53418,0]",-42.7928,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14159.510742,16314.130859,0]",-0.3054,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14160.00976563,16313.464844,0]",-8.63873,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14160.555664,16312.8125,0]",-0.368543,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14160.65332,16312.227539,0]",-0.368543,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14162.178711,16310.84082,0]",-80.1034,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14162.646484,16310.00390625,0]",-84.6488,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14141.275391,16297.242188,0]",81.0986,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14145.889648,16302.214844,0]",-8.90137,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14134.797852,16303.448242,0]",-8.90137,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14138.900391,16308.0732422,0]",-98.9014,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14173.414063,16336.524414,0]",79.2047,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14177.861328,16341.646484,0]",-10.7953,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14166.735352,16342.512695,0]",-10.7953,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14170.682617,16347.270508,0]",-100.795,-100,1,0,[],[0,0]] call _cFnc;
["Land_PartyTent_01_F","[14187.0966797,16265.632813,0]",43.7349,-100,1,0,[],[0,0]] call _cFnc;
["Land_PartyTent_01_F","[14179.830078,16272.598633,0]",313.735,-100,1,0,[],[0,0]] call _cFnc;
["Land_ClutterCutter_large_F","[14186.954102,16265.675781,0]",43.7349,-100,1,0,[],[0,0]] call _cFnc;
["Land_ClutterCutter_large_F","[14179.849609,16272.417969,0]",43.7349,-100,1,0,[],[0,0]] call _cFnc;
["MapBoard_altis_F","[14186.955078,16260.560547,0]",204.735,-100,1,0,[],[0,0]] call _cFnc;
["MapBoard_stratis_F","[14184.806641,16263.21582,0]",249.735,-100,1,0,[],[0,0]] call _cFnc;
["Land_MapBoard_F","[14185.604492,16261.685547,0]",231.735,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14189.384766,16263.367188,0]",49.197,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14188.671875,16264.0263672,0]",49.1969,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14188.00878906,16264.863281,0]",45.2525,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14187.264648,16265.619141,0]",36.602,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14187.995117,16267.0927734,0]",32.746,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14188.922852,16266.489258,0]",30.8531,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14189.59668,16265.678711,0]",52.488,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14190.319336,16264.717773,0]",47.4932,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14191.0722656,16263.734375,0]",66.876,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14192.142578,16265.336914,0]",63.8182,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14191.222656,16266.429688,0]",41.774,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14190.257813,16267.249023,0]",38.889,-100,1,0,[],[0,0]] call _cFnc;
["Land_CampingChair_V2_F","[14189.310547,16267.927734,0]",30.4531,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14193.700195,16266.837891,0]",43.7349,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14190.880859,16269.577148,0]",44.735,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14187.208984,16272.923828,0]",43.735,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14183.717773,16276.40332,0]",223.672,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_F","[14180.760742,16279.299805,0]",42.9143,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14151.961914,16290.132813,0]",44.6187,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14168.557617,16274.326172,0]",43.9243,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[14189.174805,16254.789063,0]",43.9243,-100,1,0,[],[0,0]] call _cFnc;
["WaterPump_01_forest_F","[14203.225586,16302.834961,0]",258.331,-100,1,0,[],[0,0]] call _cFnc;
["StorageBladder_02_water_forest_F","[14206.704102,16299.400391,0.0134679]",49.6189,-100,1,0,[],[0,0]] call _cFnc;
["ContainmentArea_02_forest_F","[14206.895508,16299.404297,0.00757581]",228.596,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallet_MilBoxes_F","[14210.882813,16296.666016,0]",45.3892,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_empty_F","[14212.174805,16295.196289,0]",48.2932,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_full_F","[14213.341797,16293.790039,0]",141.033,-100,1,0,[],[0,0]] call _cFnc;
["Land_DieselGroundPowerUnit_01_F","[14218.677734,16288.854492,0]",133.52,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo10_military_green_F","[14214.657227,16291.945313,0]",318.306,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_box_F","[14179.993164,16267.166992,0]",219.568,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_box_F","[14178.81543,16268.321289,0]",226.513,-100,1,0,[],[0,0]] call _cFnc;
["FlexibleTank_01_forest_F","[14203.0361328,16301.304688,0]",226.513,-100,1,0,[],[0,0]] call _cFnc;
["FlexibleTank_01_sand_F","[14202.490234,16301.601563,0]",187.816,-100,1,0,[],[0,0]] call _cFnc;
["FlexibleTank_01_forest_F","[14202.425781,16300.930664,0]",100.816,-100,1,0,[],[0,0]] call _cFnc;
["Land_GasTank_02_F","[14218.274414,16290.457031,0]",57.3816,-100,1,0,[],[0,0]] call _cFnc;
["Land_MobileScafolding_01_F","[14217.270508,16289.294922,0]",72.7857,-100,1,0,[],[0,0]] call _cFnc;
["Land_ToolTrolley_01_F","[14216.780273,16290.463867,0]",252.786,-100,1,0,[],[0,0]] call _cFnc;
["Land_ToolTrolley_02_F","[14216.853516,16289.693359,0]",249.187,-100,1,0,[],[0,0]] call _cFnc;
["Land_WeldingTrolley_01_F","[14217.652344,16288.255859,0]",194.074,-100,1,0,[],[0,0]] call _cFnc;
["Land_EngineCrane_01_F","[14211.425781,16292.550781,0]",96.2832,-100,1,0,[],[0,0]] call _cFnc;
["Land_GasTank_01_blue_F","[14216.87793,16288.833984,0]",127.344,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_vr_F","[14156.894531,16262.175781,0]",47.3611,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_sand_F","[14171.650391,16260.480469,0]",107.361,-100,1,0,[],[0,0]] call _cFnc;
["SignAd_Sponsor_ARMEX_F","[14164.932617,16262.999023,-0.644472]",196.361,-100,1,0,[],[0,0]] call _cFnc;
["SignAd_Sponsor_Vrana_F","[14160.746094,16264.325195,-0.628479]",198.361,-100,1,0,[],[0,0]] call _cFnc;
["Land_Sign_WarningMilitaryArea_F","[14167.953125,16347.277344,0]",237.386,-100,1,0,[],[0,0]] call _cFnc;
["Land_Sign_WarningMilitaryArea_F","[14134.448242,16306.0117188,0]",19.369,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallet_MilBoxes_F","[14160.890625,16261.6875,0]",28.3336,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_full_F","[14169.744141,16261.547852,0]",8.95215,-100,1,0,[],[0,0]] call _cFnc;
["VR_Area_01_square_4x4_grey_F","[14163.84375,16267.0126953,0]",17.538,-100,1,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[14169.174805,16322.639648,0]",271.768,-100,1,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[14206.732422,16258.737305,0]",66.5279,-100,1,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[14136.0810547,16283.0166016,0]",211.667,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_military_green_F","[14166.826172,16260.0625,0]",17.538,-100,1,0,[],[0,0]] call _cFnc;
["CargoNet_01_box_F","[14168.0546875,16261.883789,0]",21.0734,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_empty_F","[14159.575195,16263.0410156,0]",53.9648,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallet_MilBoxes_F","[14170.399414,16263.323242,0]",284.331,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymRack_01_F","[14176.106445,16272.972656,0]",-107.588,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymRack_02_F","[14177.0605469,16270.320313,0]",-136.944,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymRack_03_F","[14179.922852,16278.624023,0]",42.7274,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymRack_03_F","[14182.243164,16276.272461,0]",42.7274,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymRack_03_F","[14183.24707,16275.186523,0]",42.7274,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymBench_01_F","[14180.480469,16276.753906,0]",43.99,-100,1,0,[],[0,0]] call _cFnc;
["Land_GymBench_01_F","[14181.967773,16273.848633,0]",61.288,-100,1,0,[],[0,0]] call _cFnc;

// VR-Arsenal Sign
["SignAd_Sponsor_F","[14168.269531,16274.0390625,-0.446128]",-136.076,-100,1,0,[],[0,0],mission_obj_arsenal_sign] call _cFnc;

// U.SOC Sign
["SignAd_Sponsor_F","[14162.836914,16263.65332,-0.628479]",197.361,-100,1,0,[],[0,0],mission_obj_usoc_sign] call _cFnc;

// Billboard Objects
["Land_Billboard_F","[14165.645508,16278.996094,-1.07318]",223.788,20.2344,1,0,[],[0,0],mission_obj_billboard_01] call _cFnc;
["Land_Billboard_F","[14161.300781,16283.161133,-1.04873]",223.788,20.2344,1,0,[],[0,0],mission_obj_billboard_02] call  _cFnc;
["Land_Billboard_F","[14156.953125,16287.328125,-0.970242]",223.788,20.2344,1,0,[],[0,0],mission_obj_billboard_03] call  _cFnc;