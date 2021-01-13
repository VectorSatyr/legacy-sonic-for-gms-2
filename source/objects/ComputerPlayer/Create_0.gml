/// @description  Initialize
event_inherited();
state = "following";
target = noone;

memory_size = 16;

memory_input_up = ds_queue_create();
memory_input_down = ds_queue_create();
memory_input_left = ds_queue_create();
memory_input_right = ds_queue_create();
memory_input_action = ds_queue_create();
memory_horizontal_axis = ds_queue_create();

repeat (memory_size) {
    ds_queue_enqueue(memory_input_up, false);
    ds_queue_enqueue(memory_input_down, false);
    ds_queue_enqueue(memory_input_left, false);
    ds_queue_enqueue(memory_input_right, false);
    ds_queue_enqueue(memory_input_action, false);
    ds_queue_enqueue(memory_horizontal_axis, 0);
}

