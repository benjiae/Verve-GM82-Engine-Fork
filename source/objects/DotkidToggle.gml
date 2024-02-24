#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
touched = 0
t = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = !global.dotkid

if place_meeting(x,y,Player) && touched = 0 {
    global.dotkid = !global.dotkid
    touched = 1
    t = 0
    if (global.dotkid = 0) Player.y -= 8
} else {
    if (t < 50) t+= 1
    if t = 50 && touched = 1 {
        touched = 0
    }
}

if touched = 1 {
    image_alpha = 0.5
} else {
    image_alpha = 1
}
