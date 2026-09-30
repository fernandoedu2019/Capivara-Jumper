//Variável responsável pela velocidade horizontal
velh = 1.5

//Sprite do player
sprite_index = global.sprite;

//Variável responsável por fazer o personagem cair juntamente com a força da gravidade
vspeed = -global.vel_inicial;
gravity = 0.3;

global.pontos = 0;

inicia_efeito_mola();

// Velocidade horizontal
velocidade = 3;
velh = 0;

// Velocidades alvo
velh_alvo = 0;


cam_y = y;
cam_x = 0;
audio_stop_all();
toca_som(effervesce);

//Criando controle
function controles()
{
    var _esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
    var _direita = keyboard_check(ord("D")) or keyboard_check(vk_right);

    velh_alvo = (_direita - _esquerda) * velocidade;
    velh = lerp(velh, velh_alvo, 0.2);

    x += velh;
}
