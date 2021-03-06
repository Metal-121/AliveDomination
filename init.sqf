// by Xeno
//#define __DEBUG__
#define THIS_FILE "init.sqf"
#include "x_setup.sqf"
diag_log [diag_frameno, diag_ticktime, time, "Executing Dom init.sqf"];

if (productVersion # 2 < 202) exitWith {
	diag_log [diag_frameno, diag_ticktime, time, "You need at least A3 patch 2.02 to run the mission!!!!"];
	endMission "LOSER";
	forceEnd;
};

if (isMultiplayer && {hasInterface}) then {
	enableRadio false;
	showChat false;
	0 fadeSound 0;
	titleText ["", "BLACK FADED"];
};

enableSaving [false,false];
enableTeamSwitch false;

#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif

isNil {call compileScript ["d_init.sqf", false]};
	// override default data 
	// see script/staticData.sqf
	["MISSION INIT - Waiting"] call ALIVE_fnc_dump;
 
	waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};

	waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};// Alive data loaded
 
	["MISSION INIT - Continue"] call ALIVE_fnc_dump;
 	// override static data settings
	sleep 0.3;
	execNow "staticData.sqf";
	execNow "mtl_loadout.sqf"
	execNow "sfp_hv_loadouts.sqf";
	execNow "sfp_dog_loadouts.sqf";
	execNow "sfp_loadouts.sqf";
	execNow "sfp_full loadout_list.sqf";
	
	sleep 0.3;
 
	["MISSION INIT - Static data override loaded"] call ALIVE_fnc_dump;
diag_log format["staticdata Completed"];
waituntil {!isnil "ALIVE_autoGeneratedTasks"};
// -->> complete list of created tasks -->> ALIVE_autoGeneratedTasks = ["MilAssault","MilDefence","CivAssault","Assassination","TransportInsertion","DestroyVehicles","DestroyInfantry","SabotageBuilding","InsurgencyPatrol","InsurgencyDestroyAssets","Rescue","CSAR"];
ALIVE_autoGeneratedTasks = ["MilAssault","MilDefence","CivAssault","Assassination","DestroyVehicles","DestroyInfantry","InsurgencyPatrol","InsurgencyDestroyAssets","Rescue","CSAR"];
//sleep 0.3
//0 = ["AIRPORT_SFP","exil"]execVM "scripts\areadenial.sqf";
//diag_log format["airport denial Completed"];



SA_TOW_RULES_OVERRIDE =
	[
		["Tank", "CAN_TOW", "Tank"],
		["Tank", "CAN_TOW", "Truck"],
		["Tank", "CAN_TOW", "Car"],
		["Tank", "CAN_TOW", "Air"],
		["Tank", "CAN_TOW", "ship"],
		["Truck", "CAN_TOW", "Tank"],
		["Truck", "CAN_TOW", "Truck"],
		["Truck", "CAN_TOW", "Car"],
		["Truck", "CAN_TOW", "Air"],
		["Truck", "CAN_TOW", "ship"],
		["Car", "CANT_TOW", "Tank"],
		["Car", "CAN_TOW", "Truck"],
		["Car", "CAN_TOW", "Car"],
		["Car", "CAN_TOW", "Air"],
		["Car", "CAN_TOW", "ship"],
		["ship", "CANT_TOW", "Tank"],
		["ship", "CANT_TOW", "Truck"],
		["ship", "CANT_TOW", "Car"],
		["ship", "CANT_TOW", "Air"],
		["ship", "CAN_TOW", "ship"],
		["Air", "CANT_TOW", "Tank"],
		["Air", "CANT_TOW", "Truck"],
		["Air", "CANT_TOW", "Car"],
		["Air", "CAN_TOW", "Air"],
		["Air", "CANT_TOW", "ship"]
];

#ifdef __IFA3LITE__
if (isServer) then {
	diag_log ["DOM init.sqf, setting date back to 1944..."];
	private _date = date;
	_date set [0, 1944];
	setDate _date;
};
#endif

diag_log [diag_frameno, diag_ticktime, time, "Dom init.sqf processed"];
