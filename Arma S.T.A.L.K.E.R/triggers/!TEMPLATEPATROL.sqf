private _all_freedom_units = ["B_FRD_Freedomer_Patrolman_01","B_FRD_Freedomer_Sniper_01", "B_FRD_Freedomer_Exo_1", "B_FRD_Freedomer_Warrior_01", "B_FRD_Freedomer_SEVA_01", "B_FRD_Freedomer_Gaurdian_01", "B_FRD_Freedomer_Seva_II_01"];

private _all_clear_sky_units = ["B_ClearSky_ClearSky_Explorer_01", "B_ClearSky_ClearSky_guardian_01", "B_ClearSky_ClearSky_Researcher_01", "B_ClearSky_ClearSky_Scientist_01", "B_ClearSky_ClearSky_Scout_01"];

private _all_merc_units = ["B_MCE_Merc_Anomalous_Operative_01","B_MCE_Merc_Artifact_Collector_01", "B_MCE_Merc_Commander_01", "B_MCE_Merc_Contractor_01","B_MCE_Merc_Enforcer_01", "B_MCE_Merc_Operative_01","B_MCE_Merc_Patrolman_01"];

private _all_bandit_units = ["O_BD_Bandit_Assaulter_01", "O_BD_Bandit_Exo_01", "O_BD_Bandit_Highwayman_01", "O_BD_Bandit_Looter_01", "O_BD_Bandit_Murderer_01", "O_BD_Bandit_Robber_01", "O_BD_Bandit_Thug_01"];

private _all_duty_units = ["O_DTY_Dutyer_Exo_01", "O_DTY_Dutyer_Medic_01", "O_DTY_Dutyer_Patrolman_01", "O_DTY_Dutyer_SEVA_01", "O_DTY_Dutyer_SEVA_II_01", "O_DTY_Dutyer_Sniper_01", "O_DTY_Dutyer_specialist_01"];

private _all_monolith_units = ["O_OML_Monolith_Anomalous_Assaulter_01", "O_ML_Monolith_Anomalous_Hunter_01", "O_ML_Monolith_Preacher_01", "O_ML_Monolith_Scientist_01", "O_ML_Monolith_Sentinel_01", "O_ML_Monolith_Sniper_01", "O_ML_Monolith_Terminator_01", "O_ML_Monolith_Trooper_01"];

private _all_ecologist_units = ["I_ECO_ECO_Contracter_01", "I_ECO_Ecologist_Gaurd_01", "I_ECO_Ecologist_Protector_01", "I_ECO_Ecologist_Researcher_01"];

private _all_loner_units = ["I_LN_Loner_Adventurer_01", "I_LN_Loner_Artifact_Hunter_01", "I_LN_Loner_Begger_01", "I_LN_Loner_Exo_01", "I_LN_Loner_Explorer_01", "I_LN_Loner_Hunter_01", "I_LN_Loner_Scavenger_01"];

private _all_army_units = ["I_UKRState_Security_Service_Anomalous_Autorifleman_01", "I_UKRState_Security_Service_Anomalous_Medic_01", "I_UKRState_Security_Service_Anomalous_Rifleman_01", "I_UKRState_Security_Service_Military_Autoriflemen_01". "I_UKRState_Security_Service_Military_Medic_01", "I_UKRState_Security_Service_Military_Officer_01", "I_UKRState_Security_Service_Military_Rifleman_01", "I_UKRState_Security_Service_Military_Scout_01"]

private _all_mutant_units = [""]





for	"_i" from 1 to 4 do {

_random_pos = [-300, 300] call BIS_fnc_randomInt;

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
	case 1: {for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 0, _position, [], 0, "FORM"]; }; };
	case 2: {for "_i" from 1 to 2 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 1, _position, [], 0, "FORM"]; }; };
	case 3: {for "_i" from 1 to 2 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 2, _position, [], 0, "FORM"]; }; };
	case 4: {for "_i" from 1 to 3 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 3, _position, [], 0, "FORM"]; }; };
	case 5: {for "_i" from 1 to 1 do { _unit = _group_freedom_patrol createUnit [_all_freedom_units select 4, _position, [], 0, "FORM"]; }; };
}; 


_group_freedom_patrol move position player;


};