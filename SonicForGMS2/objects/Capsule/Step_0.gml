/// @description  Wait for animals
if (waiting_for_animals) {
    if (not instance_exists(AnimalFriend)) {
        instance_create_layer(0, 0, "gui", ScoreTally);
        waiting_for_animals = false;
    }
}

