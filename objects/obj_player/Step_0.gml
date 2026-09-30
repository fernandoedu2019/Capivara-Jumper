//Fazendo a câmera seguir o player
if(cam_y > y) cam_y = y;

camera_set_view_pos(view_camera[0], 0, cam_y - 160);

if(y > camera_get_view_y(view_camera[0]) + 380)
{
    game_restart();
    room_goto(rm_inicio);
    audio_stop_all();
}


//var _pontos = -round(y / 10);
//
//if(global.pontos < _pontos)
//{
    //global.pontos = _pontos;
//}
//
//if(global.pontos > global.max_pontos)
//{
    //global.max_pontos = global.pontos;
//}

//Chamando a função responsável pelos controles
controles();
retorna_mola(.1);