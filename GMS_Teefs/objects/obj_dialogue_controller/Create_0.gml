enum CAT_ID
{
    TEEFS,
    GRAY
}

global.scene = "HOUSE";
_dialogue_index = -1;

dialogue_timeline = scr_get_scene_dialogue(global.scene);
cats = scr_spawn_scene_cats(global.scene);

// Start first line immediately
scr_advance_dialogue();
