<p align="center"><img src="https://github.com/T-800a/SME.Gen/blob/master/SMEGen_logo_tp.png" width="512"></p>
<h2 align="center">SmallMilitaryEncounter Generator</h2>
<p align="center">
    <a href="#">
        <img src="https://img.shields.io/badge/SME.Gen-V.030-green.svg?style=flat-square" alt="SME.Gen: V.024">
    </a>
    <a href="#">
        <img src="http://img.shields.io/badge/Author-T--800a-blue.svg?style=flat-square" alt="Author: T-800a">
    </a>
    <a href="http://www.cup-arma3.org/" target="_blank">
        <img src="http://img.shields.io/badge/Utilises-CUP-orange.svg?style=flat-square" alt="Requires: CUP">
    </a>
</p>
<p align="center"><sup><strong>A dynamic mission for ARMA3 that generates small military encounters.</strong></sup></p>

The intent of the mission is to have something similiar to an Domination / Invade & Annex type COOP missions, but in a smaler and more infantry focused scope. There is always a set of tasks available. If those tasks are finished a cleanup will happen and a new set of tasks will be generated.


#### Missions:
##### _SMEGen_CUP.Takistan
- Default Enemy: CUP Takistan Army
- Default Gear Set: CUP USMC
- no ACE modules placed


##### _SMEGen_ACE.Altis		
- Default Enemy: Vanilla OPFOR Guerillas
- Default Gear Set: Vanilla BLUFOR with ACE itmes
- ACE modules placed in the Mission


#### Mission Parameters
- select the enemy faction
- select a reward set
- select the amount of simultaneous mission sites
- select the AI skill level ( militia / regular / special forces ( for details check T8/config.hpp ))
- seelct if you want to keep your gear after respawning


#### Vanilla Systems
The missions uss various vanilla systems:
- BIS tasks
- BIS dynamic groups
- BIS virtual arsenal
- BIS respawn menu
- ~~BIS revive~~ (why you so broken?! stopped working for me after 1.54)


#### Additional Scrips
And the mission uses some other scripts:
- [T8-Units Script](https://forums.bistudio.com/topic/172795-release-t8-units-a-less-dynamic-ai-creator/)
- [FAR Revive](https://github.com/farooqaaa/far_revive) (but in [my own 'flavour'](https://forums.bistudio.com/topic/146926-farooqs-revive/?p=2526375) with some of the later sqf improvments, because BIS revie broke)
- [download data script](https://forums.bistudio.com/topic/157241-script-snippet-downlad-data-from-a-laptop/?hl=download%20data) (a bit updated version of my script)


#### Available tasks
Currently there are 4 types of mission-sites with different tasks available:

##### Towns
- clear occupied town
- destroy 2 mortars
- destroy 2 resupply vehicles
- kill HVT and his Guards
- gather INTEL from HVT

##### Military Bases
- clear occupied base
- destroy 2 mortars
- destroy 2 resupply vehicles
- kill HVT and his Guards
- collect INTEL from HVT

##### Road-Positions
- destroy broken down convoy
- clear road block / checkpoint
- IED site: clear IEDs or gather INTEL

##### Installations
- destroy communication base (radiotower)
- recover UGV and return it to base (stomper)
- download INTEL in a compound


#### Rewards
##### Player Gear
A player ranks up with every succesfully completed task. With every new Rank the player will get acces to more, better gear in the virtual Arsenal.


##### Vehicles
for completing a set of missions:
- mobile HQ / mobile respawn
- armed MRAP
- armed (light) helicopter

After completing two mission one vehicle will be spawned, starting with the MHQ. If one vehichle gets destoryed it will be respawned instead of spawning the next tiers vehicle. There won't be multiple iterations of the same vehicle. The reward vehicles can be found outside the Base in the Hangars.


#### Time Acceleration
The time is accelerated: 4h IRL = 24h in game. If you want to change this, there is a module placed in the mission.



#### Singleplayer
I use the Singleplayer mostly for debugging. There are also some Keys preset to help with porting the mission to a new map. 
You will need the following extension for SP debugging:
- [KillzoneKids MakeFile extension](http://killzonekid.com/arma-extension-make_file-dll-v1-0/)
- [KillzoneKids DebugConsole extension](http://killzonekid.com/arma-console-extension-debug_console-dll-v2-0/)


##### Keys:
- F5: log current player position as 'town'
- F6: log current player position as 'military base'
- F7: log current player position as 'road' (direction of the player matters! look down the road)
- F8: log current player position as 'compound' (use open, even space approx. 75m x 75m )
- F9: exports the logged positions to a file with arma-config formating.
