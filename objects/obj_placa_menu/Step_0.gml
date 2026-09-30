if position_meeting(mouse_x, mouse_y, id)
{
    cor_texto = c_yellow;
    escalax_texto = lerp(escalax_texto, 1.2, .1);
    escalay_texto = lerp(escalay_texto, 1.2, .1);
    if (mouse_check_button_pressed(mb_left))
    {
        room_goto(rm_jogo);
    }
}
else
{
    cor_texto = c_white;
    escalax_texto = lerp(escalax_texto, .9, .1);
    escalay_texto = lerp(escalay_texto, .9, .1);
}