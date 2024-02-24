#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = "";
text2 = "";

running = 0
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///field text: string
///field text2: string
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
        Dialogue.drawing    = 1;
        Dialogue.box        = 0;
        Dialogue.max_boxes  = 0;
        if (text != "") Dialogue.max_boxes  = 1;
        running = 1
    }
    if running = 1 {
        if Dialogue.box == 0 {
            Dialogue.name = "Sign";
            Dialogue.text = text;
            Dialogue.portrait = sprDiagSign;
        }
        if Dialogue.box == 1 {
            Dialogue.name = "Kid";
            Dialogue.text = text2;
            Dialogue.portrait = sprKidHead;
        }
    }
}

draw_self()
