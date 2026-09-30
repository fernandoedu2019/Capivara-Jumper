draw_sprite_ext(loja[index], 0, x, y, 1, 1, image_angle, image_blend, image_alpha);
draw_set_font(fnt_jogo);
var _add = 0;
var _unadd = 0;

if (index == 0)
{
    _add = 145;
    _unadd = 24;
}
else if(index == 1)
{
    _add = -100;
    _unadd = 15;
}else if(index == 2)
{
    _add = 145;
    _unadd = 24;
}

draw_set_colour(cor);
draw_text(x - _add, y-15, preco[index]);
draw_set_colour(-1);
draw_sprite_ext(spr_acai, 2, x - _add + _unadd + _unadd, y, 1.5, 1.5, image_angle, image_blend, image_alpha);
draw_set_font(-1);