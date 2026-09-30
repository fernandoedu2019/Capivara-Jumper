// Faz o texto subir
y -= vel_subida;

// Diminui a transparência
image_alpha -= 0.03;

// Contador
tempo--;

// Destrói o texto quando terminar
if (tempo <= 0)
{
    instance_destroy();
}