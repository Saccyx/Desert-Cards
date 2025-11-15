function inventory_use(slot_index) {
    // Check slot is valid
    if (slot_index < 0 || slot_index >= ds_list_size(inventory)) {
        show_debug_message("Tried to use an inventory slot that doesn't exist.");
        return;
    }

    var item = inventory[| slot_index];

    // Decide what happens based on the item object's type
    switch (item) {
        case obj_blank_card:
            // The Blank Card does nothing
            // You can show a message, or literally leave this empty.
            show_message("Nothing happens. It's just a blank card.");
        break;

        // example for future items:
        /*
        case obj_health_potion:
            hp = min(hp + 25, max_hp);
            show_message("You feel a bit better.");
            ds_list_delete(inventory, slot_index);
        break;
        */
    }
}
