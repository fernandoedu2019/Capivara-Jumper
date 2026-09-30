// Inherit the parent event
event_inherited();

// Se a folha estiver caindo
if (caindo == true)
{
    // Aplica a gravidade
    vspeed += global.vel_folha;

    // Se sair da parte inferior da room a folha é destruida
    if (y > room_height + 100) //A altura da room é 320 + 100, quando a folha chegar em 420 ela é destruida
    {
        instance_destroy();
    }
}
