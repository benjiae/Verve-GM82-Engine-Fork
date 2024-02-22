///player_air_jump()

vspeed = -global.grav * air_jump_speed;

if place_meeting(x, y, WaterRefreshing) {
    air_jumps = max_air_jumps;
}
else {
    air_jumps -= 1;
    air_jumps = max(air_jumps, 0);
}

if (place_meeting(x-1,y,VineLeft) || place_meeting(x+1,y,VineRight)) && global.maker_vines {
} else {
    sound_play("player_air_jump");
}
