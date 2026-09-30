draw_self();
if(pontos < global.pontos_total)
{
     pontos += 2;

    // Não deixa passar do valor final
    pontos = min(pontos, global.pontos_total);
    var _pitch = random_range(1.9, 2);
    if(!audio_is_playing(bip)) audio_play_sound(bip, 0, 0, , , _pitch);
    
}

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_jogo);

draw_set_colour(c_black);

draw_text(
    x + 4,
    y - 10,
    string("PONTUAÇÃO")
);

draw_text(
    x,
    y + 15,
    string_format(pontos, 0, 0)
);

draw_set_colour(c_white);