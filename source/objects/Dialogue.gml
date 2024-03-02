#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawing = 0;

message[0] = "please change";
portrait[0] = sprKidHead;
name[0] = "please change";

i = 0
max_boxes = 0

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

    draw_text(view_hborder[0] + x_offset[0], view_vborder + y_offset[0], name[i]); // Name
    draw_text(view_hborder[0] + x_offset[1], view_vborder + y_offset[1], message[i]); // Text
    draw_sprite(portrait[i], 0, view_hborder[0] + 31, view_vborder + 472); // Portrait
    if (input_check_pressed(key_jump)) i += 1; // Increase the textbox amount when the player jumps.

    if i > max_boxes {
        drawing = 0
    }
} else {
    Player.frozen = 0
    i = 0
}
