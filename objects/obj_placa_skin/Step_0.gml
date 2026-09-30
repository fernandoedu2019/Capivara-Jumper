if (position_meeting(mouse_x, mouse_y, self))
{
    escalax = lerp(escalax, 1.5, .1);
    escalay = lerp(escalay, 1.5, .1);
}
else
{
    retorna_mola(.1);
}