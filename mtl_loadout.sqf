//by Metal MTL_
params ["_unit"];
if (isPlayer _unit) exitwith {}; //player unit do not run
//Not having any loadout option or other for enemy unit, exit with a custom skillset for enemy. 
//This will be the default skillset for all other factions units when they spawn. Script that changes the skillset after that will still do their changes
private _cunit = (typeOf _unit); // get the classname
if (!("sfp_" in _cunit)) exitwith {
		_unit setskill ["aimingaccuracy", (0.15 + ( random 0.2))];// get this and aimingshake higher if you don't like the prolonged firefights
		_unit setskill ["aimingshake", (0.1 +( random 0.2))];
		_unit setskill ["aimingspeed", (0.1 +( random 0.2))]; // time it takes for them to get their aim into focus, seperate it for snipers if you want them be better at first shot
		_unit setskill ["spotdistance", (0.1 +( random 0.2))]; //To high and they see you way to easy. Still see you if you fire at them but not instantly spot you 1000m away
		_unit setskill ["spottime", (0.1 +( random 0.2))];
		_unit setskill ["courage", (0.6 +( random 0.2))];// to low and they always flee
		_unit setskill ["reloadspeed", (0.4 +( random 0.2))];
		_unit setskill ["commanding", (0.6 +( random 0.2))]; // u want this fairly high or AI get stupid
		_unit setskill ["general", (0.25 +( random 0.2))];
};

private _file = "sfp_loadouts.sqf"; //default
private _hv = "sfp_hv_loadouts.sqf";
private _sog = "sfp_sog_loadouts.sqf";
//private _hv = false;
//private _regular = false;
//private _sog = false;
if ("_hv" in _cunit) then {_file =  _hv};
if (("_sog" in _cunit)||("_diver" in _cunit)) then {_file = _sog};
//debug
diag_log format["The Class = %1",_cunit];
comment "klä av enheten";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit; //gör detta för att kunna använda andra uniformer som öken etc.
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";     // Which radio will be given is defined via TFAR CBA Settings
_unit linkItem "ItemWatch";     // give watch or microDAGR not both
//_unit linkItem "TFAR_microdagr";
//if (_hv) then {
	private _sfp_ar=[];
	diag_log format ["filename %1",_file];
	_sfp_ar = call compile preprocessFileLineNumbers "sfp_full_loadout_list.sqf";
//	_sfp_ar = call _file;
	waitUntil {(count _sfp_ar >  0)};
	private _i = (count _sfp_ar);
	private _j = 0;
	private _l = "";
	private _bunit="";
	while {(_j<_i)} do {
	_bunit = ((_sfp_ar #_j)#0);
	if (_bunit isEqualTo _cunit) then 
		{
		_unit setUnitLoadout ((_sfp_ar #_j)#1);
// run a custom skillset on the units
		_unit setskill ["aimingaccuracy", (0.75 +( random 0.2))];
		_unit setskill ["aimingshake", (0.7 +( random 0.2))];
		_unit setskill ["aimingspeed", (0.7 +( random 0.2))];
		_unit setskill ["spotdistance", (0.8 +( random 0.2))];
		_unit setskill ["spottime", (0.8 +( random 0.2))];
		_unit setskill ["courage", (0.8 +( random 0.2))];
		_unit setskill ["reloadspeed", (0.7 +( random 0.2))];
		_unit setskill ["commanding", (0.7 +( random 0.2))];
		_unit setskill ["general", (0.7 +( random 0.2))];
/*
		_unit setskill ["aimingaccuracy", 0.9];
		_unit setskill ["aimingshake", 0.9];
		_unit setskill ["aimingspeed", 0.9];
		_unit setskill ["spotdistance", 0.9];
		_unit setskill ["spottime", 1.0];
		_unit setskill ["courage", 0.9];
		_unit setskill ["reloadspeed", 0.9];
		_unit setskill ["commanding", 0.9];
		_unit setskill ["general", 0.9];
*/	
		_j=_i;
		}else
		{ 
		_j =(_j+1);
		};
	};
//};
/*if (_regular) then {
	private _sfp_ar=[];
	_sfp_ar = call compile preprocessFileLineNumbers "sfp_loadouts.sqf";
	waitUntil {(count _sfp_ar >  0)};
	private _i = (count _sfp_ar);
	private _j = 0;
	private _l = "";
	private _bunit="";
	while {(_j<_i)} do {
	_bunit = ((_sfp_ar #_j)#0);
	if (_bunit isEqualTo _cunit) then 
		{
		_unit setUnitLoadout ((_sfp_ar #_j)#1);
		_j=_i;
		}else
		{ 
		_j =(_j+1);
		};
	};
};
if (_sog)then
	{
	_sfp_ar = call compile preprocessFileLineNumbers "sfp_sog_loadouts.sqf";
	waitUntil {(count _sfp_ar >  0)};
	private _i = (count _sfp_ar);
	private _j = 0;
	private _l = "";
	private _bunit="";
	while {(_j<_i)} do {
	_bunit = ((_sfp_ar #_j)#0);
	if (_bunit isEqualTo _cunit) then 
		{
		_unit setUnitLoadout ((_sfp_ar #_j)#1);
		_j=_i;
		}else
		{ 
		_j =(_j+1);
		};
	};
};
*/