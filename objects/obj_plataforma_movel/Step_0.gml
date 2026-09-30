// Inherit the parent event
event_inherited();

if (move)
{
    x += vel;
    if (x >= room_width-sprite_width/2 || x <= 0+sprite_width/2)
        vel = -vel;
}
x = clamp(x, 0+sprite_width/2, room_width-sprite_width/2);

