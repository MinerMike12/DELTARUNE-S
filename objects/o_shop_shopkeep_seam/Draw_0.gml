if !surface_exists(surf)
    surf = surface_create(640, 240)

surface_set_target(surf)

draw_sprite_ext(bg_seam_shop, 0, 0, 0, 2, 2, 0, c_white, 1)

surface_reset_target()

draw_surface_ext(surf, 0, 0, .5, .5, 0, c_white, 1)

s_drawer(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)