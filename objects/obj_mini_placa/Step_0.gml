if(position_meeting(mouse_x, mouse_y, self))
{
    cor = c_yellow;
    if (mouse_check_button_pressed(mb_left) && global.comprado[index] == false && global.pontos >= preco[index])
    {
        global.comprado[index] = true;
        global.pontos-= preco[index];
        global.sprite = loja[index];
    }
}
else
{
    cor = c_white;
}    