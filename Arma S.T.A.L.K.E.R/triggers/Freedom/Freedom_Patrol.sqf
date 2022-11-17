private _all_freedom_units = ["B_FRD_Freedomer_Patrolman_01","B_FRD_Freedomer_Sniper_01", "B_FRD_Freedomer_Exo_1", "B_FRD_Freedomer_Warrior_01", "B_FRD_Freedomer_SEVA_01", "B_FRD_Freedomer_Gaurdian_01", "B_FRD_Freedomer_Seva_II_01"];

private _final_pos = [0,0,0];
private _position_player = [0, 0, 0];
_direction = getDir player;
if (_direction > 0 and _direction < 90) then {cardinal_direction = "North";};
if (_direction > 90 and _direction < 180) then {cardinal_direction = "South";};
if (_direction > 180 and _direction < 250) then{cardinal_direction = "South";};
if (_direction > 250 and _direction < 359) then{cardinal_direction = "North";};

_position_player = getPos player;
_position_player_x =  _position_player select 0;
_position_player_y =  _position_player select 1;

if (cardinal_direction == "North") then{ 
	_random_x = [250, 500] call BIS_fnc_randomInt;
	_random_y = [250, 500] call BIS_fnc_randomInt;
	_final_pos set [0 , _position_player_x  + _random_x];
	_final_pos set [1 , _position_player_y  + _random_y];
};
if (cardinal_direction == "South") then{
	_random_x = [-250, -500] call BIS_fnc_randomInt;
	_random_y = [-250, -500] call BIS_fnc_randomInt;
	_final_pos set [0 , _position_player_x + _random_x];
	_final_pos set [1 , _position_player_y + _random_y];
};

_position = _final_pos;   
   
_group_freedom_patrol = createGroup [west, true];  
   
_group_freedom_patrol = createGroup [west, true];  

for "_i" from 1 to 4 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 0, _position, [], 0, "FORM"]; };

_group_freedom_patrol move position player; 