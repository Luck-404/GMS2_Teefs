// =========================
// Dialogue Data
// =========================

_dialogue_index = 0;

_cat_dialogue = ds_list_create();
ds_list_add(_cat_dialogue, "Hello, my name is Teefs");
ds_list_add(_cat_dialogue, "I like milkies");
ds_list_add(_cat_dialogue, "I have 2 brain cells");
ds_list_add(_cat_dialogue, "I am better than you");

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
