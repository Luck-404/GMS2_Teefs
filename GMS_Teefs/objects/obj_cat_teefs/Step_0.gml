// Only act if it's my turn
if (!_my_turn) exit;

// =========================
// Dialogue State Machine
// =========================

switch (dialogue_state)
{
    case STATE_TYPING:
        type_timer += type_speed;

        while (type_timer >= 1)
        {
            type_timer--;
            char_index++;

            if (char_index <= string_length(full_text))
            {
                current_text = string_copy(full_text, 1, char_index);
            }
            else
            {
                dialogue_state = STATE_WAITING;
                break;
            }
        }
    break;

    case STATE_WAITING:
        if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left))
        {
            // Ask controller to swap turns
            with (obj_turn_controller)
            {
                request_turn_swap();
            }

            // Reset dialogue typing
            _dialogue_index++;

            if (_dialogue_index >= ds_list_size(_cat_dialogue))
            {
                _dialogue_index = 0;
            }

            full_text     = _cat_dialogue[| _dialogue_index];
            current_text  = "";
            char_index    = 0;
            type_timer    = 0;
            dialogue_state = STATE_TYPING;
        }
    break;
}

// =========================
// Talking Animation
// =========================

if (dialogue_state == STATE_TYPING)
{
    talk_anim_timer++;

    if (talk_anim_timer >= talk_anim_speed)
    {
        talk_anim_timer = 0;
        image_index = 1 - image_index;
    }
}
else
{
    image_index = 0;
    talk_anim_timer = 0;
}
