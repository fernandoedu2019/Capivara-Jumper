////Me desenhando
//draw_self();
//
////Definindo a fonte
//draw_set_font(fnt_jogo);
//
////Alinhando o texto
//draw_set_halign(1);
//
////Alinhando o texto
//draw_set_valign(1);
//
////Cor do texto
//draw_set_colour(c_black);
//
////Desenhando o texto
//draw_text(x + 3 + x_placa, y -2 + 1 + y_placa, "JOGAR");
//
////Cor do texto
//draw_set_colour(cor_texto);
//
////Desenhando o texto
//draw_text(x + 2 + x_placa, y - 2 + y_placa, "JOGAR");
//
////Resetando o texto
//draw_set_colour(-1);
//
////Resentando a fonte
//draw_set_font(-1);
//
////Resentando o alinhamento
//draw_set_halign(-1);
//
////Resentando o alinhamento
//draw_set_valign(-1);

draw_self();
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_jogo);
draw_set_colour(cor_texto);

draw_text_transformed(x + 4, y, "Jogar", escalax_texto, escalay_texto, image_angle);

draw_set_colour(-1);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);