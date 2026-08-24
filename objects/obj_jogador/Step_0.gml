
//move_and_collide(velh * vel, velv * vel, obj_chao)

//Ativando e desativando o meu debug
if (keyboard_check_released(vk_tab))
{
	//Eu inverto o valor do debug
	global.debug = !global.debug;
}

//Controlando o player
controla_player();


//Sempre que eu apertar enter o jogador perde 1 de vida

//Se o jogador estiver com 0 ou menos vida
//Ele é destruido
if (keyboard_check_pressed(vk_enter))
{
	perde_vida();	
}

//Quando eu apertar a tecla E
//Eu gasto 1 de escudo



//Mudando o valor do level do meu tiro
//Se eu apertei para cima, o level do meu tiro diminui
var _cima = keyboard_check_pressed(ord("O"))
var _baixo = keyboard_check_pressed(ord("L"))
if (_baixo)
{
	level_tiro -= 1	
	level_tiro = clamp(level_tiro, 1, 3)
}

if (_cima)
{
	level_tiro += 1
	level_tiro = clamp(level_tiro, 1, 3)
}


//if (keyboard_check_pressed(vk_up))
//{
//	level_tiro--;	
//}


//if (keyboard_check_pressed(vk_down))
//{
//	level_tiro++;	
//}
//Se eu apertei para baixo o level do meu tiro aumenta

//Crie um debug para o level do meu tiro
//Crie esse debug no evento draw

//show_debug_message(timer_invencivel)