function scr_spawn_scene_cats(_scene)
{
    var map = ds_map_create();

    switch (_scene)
    {
        case "PARK":
            map[? CAT_ID.TEEFS] =
                instance_create_layer(250, room_height/2, "Instances", obj_cat_teefs);
            map[? CAT_ID.GRAY] =
                instance_create_layer(room_width - 250, room_height/2, "Instances", obj_cat_gray);
        break;

        case "HOUSE":
            map[? CAT_ID.GRAY] =
                instance_create_layer(250, room_height/2, "Instances", obj_cat_gray);
            map[? CAT_ID.TEEFS] =
                instance_create_layer(room_width - 250, room_height/2, "Instances", obj_cat_teefs);
        break;
    }

    return map;
}
