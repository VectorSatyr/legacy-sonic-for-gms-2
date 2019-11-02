/// @description  Wait for animals
if (waiting_for_animals) {
    if (not instance_exists(AnimalFriend)) {
        instance_create(0, 0, ScoreTally);
        waiting_for_animals = false;
    }
}

