// =========================
// Dialogue Data
// =========================

_dialogue_index = 0;

_cat_dialogue = ds_list_create();
ds_list_add(_cat_dialogue, "Hello, my name is Crazy Joe");
ds_list_add(_cat_dialogue, "I like churuus");
ds_list_add(_cat_dialogue, "pp");
ds_list_add(_cat_dialogue, "69 420");

// =========================
// Typewriter Variables
// =========================

current_text = "";
full_text    = _cat_dialogue[| _dialogue_index];
char_index   = 0;

type_speed = 0.5;
type_timer = 0;

// =========================
// Dialogue States
// =========================

STATE_TYPING  = 0;
STATE_WAITING = 1;
dialogue_state = STATE_TYPING;

// =========================
// Talking Animation
// =========================

talk_anim_speed = 8;
talk_anim_timer = 0;

image_speed = 0;
image_index = 0;

// =========================
// Turn System
// =========================

_my_turn = false;
