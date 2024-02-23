#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawing = 0;

text = "";
portrait = "";
name = "";


box = 0; // The box it starts on
max_boxes = 0; // The box it's supposed to end on

first = 1;

x_offset[0] = 80; // Name
y_offset[0] = 466; // Name
x_offset[1] = 142; // Text
y_offset[1] = 530; // Text

text_color = make_color_rgb(205, 214, 244);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing = 1 {
    Player.frozen = 1
    draw_sprite(sprDialogueBase,0,view_hborder[0] + 24, view_vborder[0] + 432); // Drawing the base sprite
    // - Drawing
    draw_set_font(fDefaultSmall);
    draw_set_color(text_color);
    draw_set_halign(fa_left)

    if box <= max_boxes {
        draw_text(view_hborder[0] + x_offset[0], view_vborder + y_offset[0], name); // Name
        draw_text(view_hborder[0] + x_offset[1], view_vborder + y_offset[1], text); // Text
        draw_sprite(portrait, 0, view_hborder[0] + 31, view_vborder + 472); // Portrait
        if (input_check_pressed(key_jump)) box += 1; // Increase the textbox amount when the player jumps.

    } else if box > max_boxes {
        Player.frozen = 0;
        drawing = 0;
        box = 0;
    }
}
