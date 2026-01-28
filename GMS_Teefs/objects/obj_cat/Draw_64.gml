if (!_my_turn) exit;

var box_w = display_get_gui_width();
var box_h = 100;
var box_y = display_get_gui_height() - box_h;

draw_set_alpha(0.8);
draw_set_color(dialogue_box_color);
draw_rectangle(0, box_y, box_w, box_y + box_h, false);
draw_set_alpha(1);

draw_set_color(dialogue_text_color);
draw_text(16, box_y + 16, current_text);

if (dialogue_state == STATE_WAITING)
{
    draw_text(box_w - 120, box_y + box_h - 24, "[ENTER]");
}
