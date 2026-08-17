event_inherited()

timer = 0
surf = -1

link_id = 0

s_drawer = method(self, function(_sprite, _index, _xx, _yy, _xscale, _yscale, _angle, _blend, _alpha) {
    draw_sprite_ext(_sprite, (talking ? draw_get_subimg(,, undefined, 0, undefined) : _index), 
        _xx, _yy, 
        _xscale, _yscale, 
        _angle, _blend, _alpha
    )
})