///player_shoot()
var _bullet;

if global.dotkid = 0 {
    if instance_number(Bullet) < 4 {
        _bullet = instance_create(x, y - 2 * global.grav, Bullet);
        if x_scale < 0 {
            _bullet.direction = 180;
        }
        sound_play("player_shoot");
    }
} else {
    if (instance_exists(Player)) Player.dotkid_circle = !Player.dotkid_circle
}
