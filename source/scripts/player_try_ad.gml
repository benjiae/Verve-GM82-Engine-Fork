///player_try_ad()

if Player.on_floor && place_free(x + global.ad_move, y) && Player.hspeed = 0 && !place_meeting(x, y+1, IceBlock) {
    if keyboard_check_pressed(ord('D')) {
                    x = x + global.ad_move
                    x_scale = 1
    }
    if keyboard_check_pressed(ord('A')) {
                    x = x - global.ad_move
                    x_scale = -1
    }
}
