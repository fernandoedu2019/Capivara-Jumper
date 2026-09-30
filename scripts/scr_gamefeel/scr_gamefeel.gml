function screenshake(_shake = 0)
{
    if (instance_exists(obj_screenshake))
    {
        with (obj_screenshake) 
        {
            if (_shake > shake)
            {
                shake = _shake;
            }
        }
    }
    else return;
}

function inicia_efeito_mola()
{
    escalax = 1;
    escalay = 1;
}
function efeito_mola(_escalax = 1, _escalay = 1)
{
    escalax = _escalax;
    escalay = _escalay;
}
function retorna_mola(_qtd = .3)
{
    escalax = lerp(escalax, 1, _qtd);
    escalay = lerp(escalay, 1, _qtd);
}
function desenha_efeito_mola()
{
    draw_sprite_ext(sprite_index, image_index, x, y, escalax, escalay, image_angle, image_blend, image_alpha);
}


function inicia_tomei_dano()
{
    tomei_dano = false;
}
function timer_tomei_dano(_tempo = 5)
{
    tomei_dano = _tempo;
}
function contador_tomei_dano()
{
    if (tomei_dano > 0)
    {
        tomei_dano--;
    }
}
function efeito_branco(_funcao_mola = draw_self)
{
    if (tomei_dano)
    {
        shader_set(sh_branco);
        _funcao_mola();
        shader_reset();
    }
    else
        _funcao_mola();
}

function toca_som(_audio, _variacao = .1)
{
    var pitch = 1+random_range(-_variacao, _variacao);
    audio_play_sound(_audio, 10, 0, , , pitch);
}