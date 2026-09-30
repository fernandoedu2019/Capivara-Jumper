#region Variáveis Globais
//Velocidade inicial da subida do jogador
global.vel_inicial = 6;

//Velocidade do impulso que a plataforma vai dar
global.vel_pulo = 9;

//Velocidade do impulso que que fará a folha cair
global.vel_folha = 0.25;

//Variável dos pontos de cada Açai
global.pontos = 0;

//Váriavel dos pontos do Açai
global.pontos_total = 0;

global.comprado = [1, 0, 0];

global.sprite = spr_player;

#endregion

//Função responsável pela colisão do pulo na plataforma de madeira e na plataforma que se movimenta
function colisao_pulo()
{
	//Se o vspeed for maior que zero e se colidiu com a plataforma ele pula
	if (vspeed > 0)
	{
        //Faz o personagem pular
		vspeed = -global.vel_pulo;
        
        //Instância responsável para criar a fumaça quando acontecer o pulo
        instance_create_layer(x, y + vspeed, "Layer", obj_fumaca);
        
        toca_som(jump);
	}
}

function colisao_pulo_folha()
{
    if (vspeed > 0)
    {
        //Faz o personagem pular
        vspeed = -global.vel_pulo;

        //Instância responsável para criar a fumaça quando acontecer o pulo na folha
        instance_create_layer(x, y + vspeed, "Layer", obj_fumaca);
        toca_som(jump);

        //Começa a queda da plataforma da folha
        other.caindo = true;
    }
}