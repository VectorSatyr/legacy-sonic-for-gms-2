action_inherited();
/// Destroy
state = "destroyed";
x_speed = 0;
y_speed = 0;

instance_destroy(chain_base);
for (var n = 0; n < total_chain_links; ++n) {
    instance_destroy(chain_link[n]);
}

with (chain_ball) {
    reaction_script = -1;
    destroy_time = 110;
}

