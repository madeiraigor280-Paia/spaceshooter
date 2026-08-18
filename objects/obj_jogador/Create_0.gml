

#region variaveis
//iniciando as minhas variaveis
velh = 0
velv = 0

vel = 2

#endregion


#region metodos
//Fazendo o sistema de movimentação do jogador
//Metodo de controlar o player
controla_player = function()
{
	
	//Pegando as teclas
	var _right	 = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var _left	 = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var _up		 = keyboard_check(ord("W")) or keyboard_check(vk_up);
	var _down	 = keyboard_check(ord("S")) or keyboard_check(vk_down);
	var _atirar	 = keyboard_check(vk_space) or mouse_check_button(mb_left);
	
	//Peguem as demais teclas
	
	// 1 - 0 = 1
	
	//Posso fazer assim também var _velh = _right - _left
	
	//x += _velh
	//Fazendo a velocidade horizontal
	if (_right xor _left)
	{
		velh = (_right - _left)	
	}
	else
	{
		velh = 0	
	}

	if (_up xor _down)
	{
		velv = (_down - _up)	
	}
	else
	{
		velv = 0	
	}
	x += velh * vel
	y += velv * vel
	
	//Façam o teste de cada tecla
	
	//Sempre que o jogador apertar a tecla do tiro
	//Ele vai criar o tiro na sua posição
	if (_atirar)
	{
		instance_create_layer(x, y, "tiros", obj_tiro_player)
	}
	

}
#endregion