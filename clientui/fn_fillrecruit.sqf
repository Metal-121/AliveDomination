// by Xeno
//#define __DEBUG__
#define THIS_FILE "fn_fillRecruit.sqf"
#include "..\x_setup.sqf"

disableSerialization;
private _dspx = uiNamespace getVariable "d_AIRecruitDialog";
private _ctrl = _dspx displayCtrl 1000;
lbClear _ctrl;

private ["_ipic", "_pic", "_idx"];
{
	_ipic = getText (configFile>>"cfgVehicles">>_x>>"icon");
	__TRACE_2("","_x","_ipic")
	_pic = [getText(configFile>>"CfgVehicleIcons">>_ipic), "#(argb,8,8,3)color(1,1,1,0)"] select (_ipic == "");
	__TRACE_1("","_pic")
	_idx = _ctrl lbAdd ([_x, "CfgVehicles"] call d_fnc_GetDisplayName);
	_ctrl lbSetPicture [_idx, _pic];
	_ctrl lbSetColor [_idx, [1, 1, 0, 0.8]];
} forEach d_UnitsToRecruit;

_ctrl lbSetCurSel 0;
// add a options in description.ext for dynamic Ai numbers if d_ai_dyn then....
// and still using the max, maybe a choosable min value/cut off number based on player count as 
//choosable option d_max_ai (number), d_max_player_for_ai (number), d_ai_dyn (bool)/Metal
if (count d_allplayers != 0 )then {call d_fnc_setainumbers;};
diag_log format ["max ai is %1, number of players connected %2",d_max_ai,_lastcount];

d_current_ai_units = (units group player) select {!(_x call d_fnc_isplayer) && {alive _x}};
d_current_ai_num = count d_current_ai_units;

(_dspx displayCtrl 1030) ctrlSetText format [localize "STR_DOM_MISSIONSTRING_693", d_current_ai_num, d_max_ai];

_ctrl = _dspx displayCtrl 1001;
lbClear _ctrl;
private ["_tt", "_pic", "_idx"];
{
	_tt = typeOf _x;
	_ipic = getText (configFile>>"cfgVehicles">>_tt>>"icon");
	__TRACE_2("","_tt","_ipic")
	_pic = [getText(configFile>>"CfgVehicleIcons">>_ipic), "#(argb,8,8,3)color(1,1,1,0)"] select (_ipic == "");
	__TRACE_1("","_pic")
	_idx = _ctrl lbAdd ([_tt, "CfgVehicles"] call d_fnc_GetDisplayName);
	_ctrl lbSetPicture [_idx, _pic];
	_ctrl lbSetColor [_idx, [1, 1, 0, 0.8]];
} forEach d_current_ai_units;

if (d_current_ai_units isNotEqualTo []) then {
	_ctrl lbSetCurSel 0;
};

if (d_current_ai_num == 0) then {
	(_dspx displayCtrl 1011) ctrlShow false;
	(_dspx displayCtrl 1012) ctrlShow false;
};
if (d_current_ai_num == d_max_ai) then {
	(_dspx displayCtrl 1010) ctrlShow false;
};