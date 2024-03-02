#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = "";
text2 = "";

running = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x, y, Player) {
    draw_set_font(fDefaultSmall);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_bottom);

    draw_text_outlined(mean(bbox_left, bbox_right), bbox_top, "^", c_white, c_black);

    if input_check_pressed(key_up) {
        instance_create(0, 0, Dialogue)
        dialogue_write("Sign", sprDiagSign, "Hi! i'm an example sign!", 0)
        dialogue_write("Kid", sprKidHead, "You sure do look like one", 1)
        Dialogue.max_boxes = 1
        Dialogue.drawing = 1
    }
}

draw_self()
