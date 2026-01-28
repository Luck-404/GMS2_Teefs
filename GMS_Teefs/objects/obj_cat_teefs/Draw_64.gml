// Only draw dialogue if it's my turn
if (!_my_turn) exit;

var box_w = display_get_gui_width();
var box_h = 100;
var box_y = display_get_gui_height() - box_h;

// Background
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0, box_y, box_w, box_y + box_h, false);
draw_set_alpha(1);

// Text
draw_set_color(c_white);
draw_text(16, box_y + 16, current_text);

// Prompt
if (dialogue_state == STATE_WAITING)
{
    draw_text(box_w - 120, box_y + box_h - 24, "[ENTER]");
}
