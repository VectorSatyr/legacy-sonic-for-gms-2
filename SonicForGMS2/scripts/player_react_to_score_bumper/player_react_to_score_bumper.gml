/// @description  player_react_to_score_bumper(ind, phase)
/// @param ind
/// @param  phase

var ind = argument0;
var phase = argument1;

player_react_to_bumper(ind, phase);

switch (phase) {
case "entering":
    if (ind.counter[owner.index] > 0) {
        --ind.counter[owner.index];
        game_player_change_score(owner, 10);
        instance_create(ind.x, ind.y, ScorePopup);
    }
    break;
}
