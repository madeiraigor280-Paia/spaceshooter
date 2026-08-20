

#region variaveis
//iniciando as minhas variaveis
velh = 0
velv = 0

vel = 2

//Vidas

//Escudos

//Variavel da espera do tiro
espera_tiro = 10
//Varivel do timer do tiro
//Qual a diferença ?
//A variavel do tiro sempre vai ser 10
//Mas preciso de uma variavel para contar esse tempo
timer_tiro = 0

//Level do meu tiro
level_tiro = 1;

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
		velh = 0;
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
	
	//Impedindo que o jogador saia pela esquerda
	//if (x <= sprite_width/2) x = sprite_width/2
	//if (x >= room_width - sprite_width/2)
	//{
	//	x = room_width - sprite_width/2
	//}
	
	x = clamp(x, sprite_width/2, room_width - sprite_width/2)
	
	y += velv * vel
	//Limitando a posição vertical do player
	y = clamp(y, 19, 500)
	
	//Façam o teste de cada tecla
	
	//Diminuindo o timer do tiro
	timer_tiro--;
	
	//Sempre que o jogador apertar a tecla do tiro
	//Ele vai criar o tiro na sua posição
	//Criando o tiro na camada dele
	//Se eu apertei a tecla para atirar
	//E se o timer do tiro esta zerado
	if (_atirar && timer_tiro <= 0)
	{
		//switch(level_tiro)
		//{
		//case 1:
		//{
		//	tiro_1()
		//	timer_tiro = espera_tiro;
		//}
		
		//break;
		//case 2:
		//{
		//	tiro_2()
		//	timer_tiro = espera_tiro;
		//}
		//	break;
		//}
	
		//Checando se eu estou no level do tiro
		if (level_tiro == 1)
		{
			tiro_1();
			timer_tiro = espera_tiro
			//timer_tiro = espera_tiro
		}
		else if (level_tiro == 2)
		{
			tiro_2()
			timer_tiro = espera_tiro
			//timer_tiro = espera_tiro * 2
		}
		else if (level_tiro == 3)
		{
			tiro_3()	
			timer_tiro = espera_tiro
		}
		else if (level_tiro == 4)
		{
			tiro_4()
			timer_tiro = espera_tiro * 3
		}
		
	}
	

}

//Criando o metodo do tiro 1
tiro_1 = function()
{
	//Criando o tiro
	var _tiro = instance_create_layer(x, y, "tiros", obj_tiro_player);
	
	
	//Dando a velocidade para o tiro
	_tiro.vspeed = -10
	
}

//Tiro 2
tiro_2 = function()
{
	//Criando o tiro da esquerda
	var _tiro = instance_create_layer(x - 10, y, "tiros", obj_tiro_player);
	//Dando a velocidade para o tiro
	_tiro.vspeed = -10
	_tiro = instance_create_layer(x + 10, y, "tiros", obj_tiro_player);
	_tiro.vspeed = -10


	
	
}

//Tiro 3
tiro_3 = function()
{
	tiro_1()
	tiro_2()
}

tiro_4 = function()
{
		for (var i=0; i<36; i++)
	{
		var _dire = i*-10;
		var _tiro = instance_create_layer(x,y,"tiros",obj_tiro_player);
		_tiro.speed = -10;	
		_tiro.direction = 0+_dire;
		_tiro.image_angle = _tiro.direction+90;
		
		
	}
}

//Ganhando level do tiro
ganha_level_tiro = function()
{
	//Garanta que ele não passe do level limite
	if (level_tiro < 4)
	{
		level_tiro++;
	}
	//level_tiro = clamp(level_tiro, 1, 4)
}

#endregion