///player_set_mask()

if global.dotkid == 0 {
    if global.grav == 1 {
        mask_index = sprPlayerMask;
    }
    else {
        mask_index = sprPlayerMaskFlip;
    }
} else {
    mask_index = spr2x2;
}
