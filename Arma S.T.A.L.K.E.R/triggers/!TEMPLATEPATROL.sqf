private _all_freedom_units = ["B_FRD_Freedomer_Patrolman_01","B_FRD_Freedomer_Sniper_01", "B_FRD_Freedomer_Exo_1", "B_FRD_Freedomer_Warrior_01", "B_FRD_Freedomer_SEVA_01", "B_FRD_Freedomer_Gaurdian_01", "B_FRD_Freedomer_Seva_II_01"];

private _all_clear_sky_units = ["B_ClearSky_ClearSky_Explorer_01", "B_ClearSky_ClearSky_guardian_01", "B_ClearSky_ClearSky_Researcher_01", "B_ClearSky_ClearSky_Scientist_01", "B_ClearSky_ClearSky_Scout_01"];

private _all_merc_units = ["B_MCE_Merc_Anomalous_Operative_01","B_MCE_Merc_Artifact_Collector_01", "B_MCE_Merc_Commander_01", "B_MCE_Merc_Contractor_01","B_MCE_Merc_Enforcer_01", "B_MCE_Merc_Operative_01","B_MCE_Merc_Patrolman_01"];

private _all_bandit_units = ["O_BD_Bandit_Assaulter_01", "O_BD_Bandit_Exo_01", "O_BD_Bandit_Highwayman_01", "O_BD_Bandit_Looter_01", "O_BD_Bandit_Murderer_01", "O_BD_Bandit_Robber_01", "O_BD_Bandit_Thug_01"];

private _all_duty_units = ["O_DTY_Dutyer_Exo_01", "O_DTY_Dutyer_Medic_01", "O_DTY_Dutyer_Patrolman_01", "O_DTY_Dutyer_SEVA_01", "O_DTY_Dutyer_SEVA_II_01", "O_DTY_Dutyer_Sniper_01", "O_DTY_Dutyer_specialist_01"];

private _all_monolith_units = ["O_OML_Monolith_Anomalous_Assaulter_01", "O_ML_Monolith_Anomalous_Hunter_01", "O_ML_Monolith_Preacher_01", "O_ML_Monolith_Scientist_01", "O_ML_Monolith_Sentinel_01", "O_ML_Monolith_Sniper_01", "O_ML_Monolith_Terminator_01", "O_ML_Monolith_Trooper_01"];

private _all_ecologist_units = ["I_ECO_ECO_Contracter_01", "I_ECO_Ecologist_Gaurd_01", "I_ECO_Ecologist_Protector_01", "I_ECO_Ecologist_Researcher_01"];

private _all_loner_units = ["I_LN_Loner_Adventurer_01", "I_LN_Loner_Artifact_Hunter_01", "I_LN_Loner_Begger_01", "I_LN_Loner_Exo_01", "I_LN_Loner_Explorer_01", "I_LN_Loner_Hunter_01", "I_LN_Loner_Scavenger_01"];

private _all_army_units = ["I_UKRState_Security_Service_Anomalous_Autorifleman_01", "I_UKRState_Security_Service_Anomalous_Medic_01", "I_UKRState_Security_Service_Anomalous_Rifleman_01", "I_UKRState_Security_Service_Military_Autoriflemen_01". "I_UKRState_Security_Service_Military_Medic_01", "I_UKRState_Security_Service_Military_Officer_01", "I_UKRState_Security_Service_Military_Rifleman_01", "I_UKRState_Security_Service_Military_Scout_01"];

private _all_mutant_units = [""];


/* 0 degrees is 0, 1, 0 (Facing north)
180 is 1, 1, 0 (Facing South)
250 1, 0, 0 (Facing West) 
90 1, 0, 0 (Facing East)
320 .5, .5, 0 (Facing NW)
40 .5, .5, 0 (Facing NE)
140 .5, .5, 0 (Facing SE)
220 .5, .5. 0 (Facing SW)
*/




/*_random_pos = [0, 300] call BIS_fnc_randomInt;

private _final_pos = [0, 0, 0];
private _position_player = [0, 0, 0];
_position_player = getPos player;
_position_player_x = _position_player select 0;
_position_player_y = _position_player select 1;
_final_pos set [0 , _position_player_x + 200 + _random_pos];
_final_pos set [1 , _position_player_y + 200 + _random_pos];


*/

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

hint str _final_pos select 0;

//Standard spawn patrol code
for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 0, _position, [], 0, "FORM"];



_random_number = floor random 5;

switch (_random_number) do // Generally for animals, patrols aren't usually randomized
{
	case 1: {for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 0, _position, [], 0, "FORM"]; }; };
	case 2: {for "_i" from 1 to 2 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 1, _position, [], 0, "FORM"]; }; };
	case 3: {for "_i" from 1 to 2 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 2, _position, [], 0, "FORM"]; }; };
	case 4: {for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 3, _position, [], 0, "FORM"]; }; };
	case 5: {for "_i" from 1 to 1 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 4, _position, [], 0, "FORM"]; }; };
}; 


//Script for specialized location 



//Script for spawning in compositions
_compReference = [ COMP_NAME, POS_ATL, OFFSET, DIR, ALIGN_TERRAIN, ALIGN_WATER, IGNORE_ATLOFFSET ] call LARs_fnc_spawnComp;

//---------- Patrol Only
_group_freedom_patrol move position player;


