// Dialogue data
_dialogue_index = 0;

_cat_dialogue = ds_list_create();
ds_list_add(_cat_dialogue, "Hello, my name is Teefs");
ds_list_add(_cat_dialogue, "I like milkies");
ds_list_add(_cat_dialogue, "I have 2 brain cells");
ds_list_add(_cat_dialogue, "I am better than you");

// Typewriter variables
current_text = "";
full_text = _cat_dialogue[| _dialogue_index];
char_index = 0;

type_speed = 0.5; // characters per step (increase for faster text)
type_timer = 0;

// States
STATE_TYPING = 0;
STATE_WAITING = 1;
dialogue_state = STATE_TYPING;

// Talking animation
talk_anim_speed = 8; // frames between mouth flips
talk_anim_timer = 0;

image_speed = 0; // we control frames manually
image_index = 0;
