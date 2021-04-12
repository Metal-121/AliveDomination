#define THIS_FILE "fn_setainumbers.sqf"
#include "..\x_setup.sqf"
//by Metal MTL_
if (!hasInterface) exitWith {};

private _plcnt = (count d_allplayers);
if (_plcnt != 0 )then 
{
	if ((_plcnt > 0 ) && (_plcnt < 2))  then {d_max_ai = 48};
	if ((_plcnt >= 2) && (_plcnt < 6))  then {d_max_ai = 16};
	if ((_plcnt >  5) && (_plcnt < 8))  then {d_max_ai = 14};
	if ((_plcnt >  7) && (_plcnt < 10)) then {d_max_ai = 12};
	if ((_plcnt >  9) && (_plcnt < 12)) then {d_max_ai = 10};
	if ((_plcnt > 11) && (_plcnt < 14)) then {d_max_ai = 8};
	if ((_plcnt > 13) && (_plcnt < 17)) then {d_max_ai = 6};
	if ((_plcnt > 16) && (_plcnt < 21)) then {d_max_ai = 4};
	if  (_plcnt > 20) then {_max_ai = 0};
}else{
	diag_log format ["max ai is %1, no players connected %2",d_max_ai,_plcnt];
};
diag_log format ["max ai is %1 and the player count is %2 ref value %3",d_max_ai,_plcnt];