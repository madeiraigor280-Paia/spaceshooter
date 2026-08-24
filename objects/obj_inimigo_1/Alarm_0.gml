//Atirando
//instance_create_layer(x, y, "tiros", obj_tiro_inimigo1)
atirando();

//Reativando o alarme
alarm[0] = random_range(1, 2)  * game_get_speed(gamespeed_fps);

/*
Fazer o tiro do inimigo colidir com o player

Se destruir ao colidir com o player

Criar a particular do tiro ao se destruir

Fazer o inimigo atirar novamente depois de 1 segundo


*/