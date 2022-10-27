//Animal Patrol

_random_pos = floor random 250;

private _final_pos = [0, 0, 0];
private _position_player = [0, 0, 0];
_position_player = getPos player;
_position_player_x = _position_player select 0;
_position_player_y = _position_player select 1;
_final_pos set [0 , _position_player_x + 150 + _random_pos];
_final_pos set [1 , _position_player_y + 150 + _random_pos];

_position = _final_pos;   
   
_group_freedom_patrol = createGroup [west, true];  


_random_number = floor random 5;

switch (_random_number) do
{
	case 1: {for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit ["B_FRD_Freedomer_Patrolman_01", _position, [], 0, "FORM"]; }; };
	case 2: {for "_i" from 1 to 2 do { _unit = _group_freedom_patrol createUnit ["B_FRD_Freedomer_Exo_01", _position, [], 0, "FORM"]; }; };
	case 3: {for "_i" from 1 to 2 do { _unit = _group_freedom_patrol createUnit ["B_FRD_Freedomer_Sniper_01", _position, [], 0, "FORM"]; }; };
	case 4: {for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit ["B_FRD_Freedomer_Warrior_01", _position, [], 0, "FORM"]; }; };
	case 5: {for "_i" from 1 to 1 do { _unit = _group_freedom_patrol createUnit ["B_FRD_Freedomer_SEVA_01", _position, [], 0, "FORM"]; }; };
}; 


