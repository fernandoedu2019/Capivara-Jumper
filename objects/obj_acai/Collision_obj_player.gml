// Soma a pontuação
global.pontos += pontos;

// Cria o texto com a pontuação obtida
var _texto = instance_create_layer(
    x,
    y - 20,
    layer,
    obj_texto_pontos
);

// Transfere o valor do açaí para o texto
_texto.pontos = pontos;

// Destrói o açaí
instance_destroy();