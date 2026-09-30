var _chance = random(100);

if (_chance > 50)
{
    var _acai = instance_create_layer(
        x,
        bbox_top - 20,
        layer,
        obj_acai
    );
    _acai.image_speed = 0;
    _acai.image_index = irandom_range(0, 2);

    switch (_acai.image_index)
    {
        case 0:
            _acai.pontos = 15;
            
            break;
        
        case 1:
            _acai.pontos = 10;
            
            break;

        case 2:
            _acai.pontos = 25;
            
            break;
    }
}
