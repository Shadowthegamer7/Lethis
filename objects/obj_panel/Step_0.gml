if (room == rm_warpedHouse2) {
    if (distance_to_object(obj_hel) < 30) {
        if (!instance_exists(panelTalkButton) && !instance_exists(obj_talkButton)) {
            panelTalkButton = instance_create_layer(
                x + sprite_get_width(spr_talkButton) / 1.5,
                y - sprite_get_height(spr_talkButton) / 2,
                "Dialogue",
                obj_talkButton
            );
        }

        if (keyboard_check_pressed(ord("E")) && !obj_panelHud.isVisible && !obj_panelHud.justClosed) {
            obj_panelHud.isVisible = true;
            obj_passButton.isVisible = true;
        }
    } else if (instance_exists(panelTalkButton)) {
        instance_destroy(panelTalkButton);
        panelTalkButton = noone;
    }
}