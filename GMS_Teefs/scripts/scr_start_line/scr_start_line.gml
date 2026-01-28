function scr_start_line(_text)
{
    full_text = _text;
    current_text = "";
    char_index = 0;
    type_timer = 0;
    dialogue_state = STATE_TYPING;
    talk_anim_timer = 0; // <-- add this
    _my_turn = true;
}
