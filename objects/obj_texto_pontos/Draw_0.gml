//Sobe os pontos e não vai ficando transparente
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//
//draw_set_color(c_yellow);
//draw_text(x, y, "+" + string(pontos));
//
//draw_set_color(c_white);
//draw_set_alpha(1);

//Essa versão sobe os pontos e depois vai ficando transparente
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(image_alpha);
draw_set_color(c_yellow);
draw_text(x, y, "+" + string(pontos));

draw_set_alpha(1);
draw_set_color(c_white);