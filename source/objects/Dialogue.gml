#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
drawing = 0;
text = "";
head = "";
name = "";

text_done = 0
name_done = 0

tco = 1
nco = 1

x_offset[0] = 80 // Name
y_offset[0] = 466 // Name
x_offset[1] = 142 // Text
y_offset[1] = 530 // Text

white = make_color_rgb(205, 214, 244)
black = make_color_rgb(30, 30, 46)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if drawing = 1 {
    draw_sprite(sprDialogueBase,0,view_hborder[0] + 24, view_vborder[0] + 432); // Drawing the base sprite
    // - Drawing text
    draw_set_font(fDefaultSmall);
    draw_set_color(white);
    draw_set_halign(fa_left)
    draw_text(view_hborder[0] + x_offset[0], view_vborder + y_offset[0], name); // Name
    draw_text(view_hborder[0] + x_offset[1], view_vborder + y_offset[1], text); // Text
    // - Drawing the portrait
    draw_sprite(head, 0, view_hborder[0] + 31, view_vborder + 472)
} else {

}
