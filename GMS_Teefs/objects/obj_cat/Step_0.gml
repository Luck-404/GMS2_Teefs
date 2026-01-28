if (!_my_turn) exit;

switch (dialogue_state)
{
    case STATE_TYPING:
        type_timer += type_speed;

        while (type_timer >= 1)
        {
            type_timer--;
            char_index++;

            if (char_index <= string_length(full_text))
                current_text = string_copy(full_text, 1, char_index);
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
            _my_turn = false;

            with (obj_dialogue_controller)
            {
                scr_advance_dialogue();
            }
        }
    break;
}

// Talking animation
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
