#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = ""
enabled = 0
on_dialogue = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///field text: string
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

    if input_check_pressed(key_up) && !on_dialogue{
    on_dialogue = 1
}   }

if on_dialogue = 1 {
    Player.frozen = 1
    Dialogue.drawing = 1
    dialogue_write("Sign", text, sprDiagSign)
    if (input_check(key_jump)) on_dialogue = 0

} else if on_dialogue = 0 {
    Player.frozen = 0
    Dialogue.drawing = 0
}


draw_self()
