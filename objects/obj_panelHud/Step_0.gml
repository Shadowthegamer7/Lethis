justClosed = false;

if isVisible {
    image_alpha = 1

    var _inputEnabled = hudWasVisible;
    if (!_inputEnabled) {
        keyPressCount = 0;
        hudWasVisible = true;
    }

    if (!instance_exists(hudPauseId)) {
        hudPauseId = instance_create_depth(x, y, 0, obj_pauser);
    }

    if (_inputEnabled && image_alpha > 0) {
        if (
            keyboard_check_pressed(vk_anykey)
            && !keyboard_check_pressed(vk_left)
            && !keyboard_check_pressed(vk_right)
            && !keyboard_check_pressed(vk_up)
            && !keyboard_check_pressed(vk_down)
        ) {
            keyPressCount += 1;
        }

        if (keyboard_check_pressed(vk_left) && (buttonPointer mod 3) > 0) {
            buttonPointer -= 1;
        } else if (keyboard_check_pressed(vk_right) && (buttonPointer mod 3) < 2) {
            buttonPointer += 1;
        } else if (keyboard_check_pressed(vk_up) && buttonPointer >= 3) {
            buttonPointer -= 3;
        } else if (keyboard_check_pressed(vk_down) && buttonPointer < 3) {
            buttonPointer += 3;
        }

        if (keyboard_check_pressed(ord("E"))) {
            audio_play_sound(snd_next, 100, false);

            if (!passcodeUnlocked) {
                var _selectedButton = buttonPointer + 1;

                switch (passcodeProgress) {
                    case 0:
                        if (_selectedButton == 1) {
                            passcodeProgress = 1;
                        }
                        break;
                    case 1:
                        if (_selectedButton == 2) {
                            passcodeProgress = 2;
                        } else {
                            passcodeProgress = (_selectedButton == 1) ? 1 : 0;
                        }
                        break;
                    case 2:
                        if (_selectedButton == 5) {
                            passcodeProgress = 3;
                            passcodeUnlocked = true;
                            with (obj_triggerCutscene) {
                                isUnlocked = true;
                            }
                        } else {
                            passcodeProgress = (_selectedButton == 1) ? 1 : 0;
                        }
                        break;
                }
            }
        }

        if (keyPressCount >= 3) {
            isVisible = false;
            image_alpha = 0;
            keyPressCount = 0;
            if (!passcodeUnlocked) {
                passcodeProgress = 0;
            }
            hudWasVisible = false;
            justClosed = true;

            with (obj_passButton) {
                isVisible = false;
                image_alpha = 0;
                image_blend = c_white;
            }
            if (instance_exists(hudPauseId)) {
                instance_destroy(hudPauseId);
            }
            hudPauseId = noone;
        }
    }
}  else {
    image_alpha = 0;
    keyPressCount = 0;
    if (!passcodeUnlocked) {
        passcodeProgress = 0;
    }
    hudWasVisible = false;

    with (obj_passButton) {
        isVisible = false;
        image_alpha = 0;
        image_blend = c_white;
    }
    if (instance_exists(hudPauseId)) {
        instance_destroy(hudPauseId);
    }
    hudPauseId = noone;
}

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2
