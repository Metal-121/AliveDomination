// By Metal
#define THIS_FILE "fn_staticserverreload.sqf"
#include "..\x_setup.sqf"
// Very simple reload repair for base defence in long term missions (Alive,CTI etc.)

private ["_object","_time"];
_object = _this;
private _reload_time_factor = 300;
_time=time;
waituntil {time==(_time+_reload_time_factor)};
//sleep x_reload_time_factor;
_object setVehicleAmmo 1;	// Reload turrets / drivers magazine
_object vehicleChat "Repairing...";
_object setDamage 0;
_time=time;
waituntil {time==(_time+_reload_time_factor)};
//sleep x_reload_time_factor;
if (true) exitWith {};

/*
this addEventHandler ["Fired",{_this#0 execVM "server\fn_staticserverreload.sqf"}];

if in Xeno Domi and added to cfgfunctionscs.hpp
this addEventHandler ["Fired",{_this#0 call d_fnc_staticserverreload}];


old code >> this addEventHandler ["Fired",{(_this select 0) {_this exec "server\fn_staticserverreload.sqf"}}]
setVehicleAmmo 1 >> intead of calling a script if you prefer 
*/