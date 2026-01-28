_my_turn = false;

// Dialogue typing
current_text = "";
full_text = "";
char_index = 0;
type_timer = 0;
type_speed = 0.5;

STATE_TYPING  = 0;
STATE_WAITING = 1;
dialogue_state = STATE_TYPING;

// Animation
talk_anim_speed = 8;
talk_anim_timer = 0;

image_speed = 0;
image_index = 0;
