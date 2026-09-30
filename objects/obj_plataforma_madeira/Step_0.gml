//Destruindo e criando as plataformas
var _cam_height = camera_get_view_height(view_camera[0]);
var _marg = 60;

//Me destruindo quando eu sair da view
if (camera_get_view_y(view_camera[0]) + _cam_height + _marg < y)
{
	instance_destroy();
	var _obj = choose(obj_plataforma_madeira, obj_plataforma_folha, obj_plataforma_movel);
	var _x = random_range(sprite_width/2, room_width - sprite_width/2);
	instance_create_layer(_x, ystart - _cam_height - _marg, layer, _obj);
}
