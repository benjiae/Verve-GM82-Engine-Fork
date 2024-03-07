#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = "";
text2 = "";

running = 0
image_alpha = 0
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(Player) {
    if place_meeting(x, y, Player) && Player.on_floor {
        draw_set_font(fDefaultSmall);
        draw_set_halign(fa_middle);
        draw_set_valign(fa_bottom);

        draw_text_outlined(Player.x, Player.y - 16, "^", c_white, c_black, 2)

        if input_check_pressed(key_up) {
            Dialogue.drawing = 1
        }
    }
}
