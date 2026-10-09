vida = 10;

//Variavel que controla o meu estado
estado = "chegando";

velh = 0;
velv = 0;
vel	 = 1;

contador = 0;

//Iniciando os efeitos
inicia_efeito_branco();
inicia_efeito_mola()

dir_x_fug = 0;
dir_y_fug = 0;
dir = 0;

tempo_carregando = game_get_speed(gamespeed_fps) * 3;
timer_carregando = 0;

decidi_direcao = false;
//Máquina de estado
//state de machine
//É uma tecnica de programação
//Vamos usar a maquina de estados estilo switch
maquina_de_estados = function()
{
	//Vamos usar a função chamada Switch
	//Como ela funciona ?
	//Ela funciona como um IF
	//Variavel que eu estou checando o valor
	switch(estado)
	{
		//Diferente do IF que tem o valor booleano
		//O switch ve valores exatos
		
		//Casos estado de chegando
		case "chegando":
		{
			//Enquanto o y dele for menor do que 160
			//Ele vai ir para baixo
			if (y < 160)
			{
				velv = vel;
				
			}
			else //Meu Y não é menor do que 160, ele só pode ser 160 ou mais
			{
				//Terminei de chegar, eu mudo de estado
				estado = "carregando";
				
			}
			
			
				
		}
		//Acabei o case, eu aviso que ele tem que parar
		//Para ele parar vamos usar o break
		break;
		
		case "carregando":
		{
			velv = 0;
			//Aumentar o valor do timer até ele chegar no tempo
			timer_carregando++;
			
			//Se ele chegou no tempo de carregar
			if (timer_carregando >= tempo_carregando)
			{
				//Ou para o estado de atacando ou atirando2
				estado = choose("atacando", "atirando2")
				//Resetando o timer
				timer_carregando = 0;
				
				//Aumento o valor do contador
				contador++;
				
			}
			
			//Ele vai esperar 3 segundos
			
			//Depois de 3 segundos ele vai para o estado de atirar
		}
		//Terminei o case, eu aviso para ele parar
		break;
		
		//Estado de atirando
		//Criem o case dele (com break)
		//Importem as sprites do tiro dele
		//Crie os objetos dos tiros do inimigo 3;
		case "atacando":
		{
			efeito_mola(1.5, .5);
			efeito_som(snd_tiro, .1);
			//Encontrando a direção para o player
			//Fazer ele chegar se o player existe
			if (instance_exists(obj_jogador))
			{
				var _dir = point_direction(x, y, obj_jogador.x, obj_jogador.y);
			
				//Criando o tiro a
				var _tiro = instance_create_layer(x, y, "tiros", obj_tiro_inimigo3_a);
				
				var _vel = 2;
				var _velh = lengthdir_x(_vel, _dir);
				var _velv = lengthdir_y(_vel, _dir);
				
				//Passando o velh e velv para o tiro
				_tiro.velh = _velh;
				_tiro.velv = _velv;
				
				_tiro.direction = _dir;
				_tiro.image_angle = _dir + 90;
				
			}
			
			//Atirei eu volto a carregar
			if (contador <= 3)
			{
				estado = "carregando";
			}
			else
			{
				estado = "fugindo";
				
				//Randomizar as coordenadas
				//Escolhendo a direção para onde eu vou fugir
				dir = irandom(359);
				//var _x = choose(-32, 320)
				//var _y = choose(-32, 576)
				
				
				//dir_x_fug = lengthdir_x(vel, _x);
				//dir_y_fug = lengthdir_y(vel, _y);
			}
			
			
		}
		//Aviso que terminei 
		break;
		
		case "atirando2":
		{
			efeito_mola(1.5, .5);
			var _range = 5
			var _ang = 255 + random_range(-_range, _range);
			
			efeito_som(snd_tiro, .1);
			//Repetir a criação do tiro 3x
			repeat(8)
			{
				//Criando o meu tiro
				var _tiro = instance_create_layer(x, y, "tiros", obj_tiro_inimigo3_b)
				//Pegando o valor do velh dele com base na direção que ele tem que ir
				var _vel = _tiro.vel
				var _velh = lengthdir_x(_vel, _ang);
				var _velv = lengthdir_y(_vel, _ang);
				
				//Passando o velh  e velv do tiro
				_tiro.velh = _velh;
				_tiro.velv = _velv;
				
				
				_tiro.direction = _ang; //270 //315
				
				//Aumento o ang em 45
				_ang += 15;
				
				
				
			}
			
			//Vou para o estado de carregando SE o meu contador
			//Ainda não passou de 3
			if (contador <= 3)
			{
				estado = "carregando";
			}
			else
			{
				estado = "fugindo";
				
				//Randomizar as coordenadas
				//Escolhendo a direção para onde eu vou fugir
				dir = irandom(359);
				
				////Escolhendo a direção para onde eu vou fugir
				//var _x = choose(-32, 320)
				//var _y = choose(-32, 576)
				
				////Escolhendo a direção para onde eu vou fugir
				//dir_x_fug = _x;
				//dir_y_fug = _y;
				
			}
			//Caso contrário ele vai para o estado de fugindo
		}
		break;
		
		case "fugindo":
		{
			//Indo para cima
			//Decidindo o lado SE eu ainda não decidi uma direção
			if (decidi_direcao == false)
			{
				
				//var _dir = point_direction(x, y, dir_x_fug, dir_y_fug);
				
				velh = lengthdir_x(vel * 2, dir)
				velv = lengthdir_y(vel * 2, dir);
				//if (point_direction(x, y, dir_x_fug, dir_y_fug) <= vel)
				//{
				//	velh = 0;
				//	velv = 0;
					
				//}
				
				
				
				//Já decidi minha direção
				decidi_direcao = true;
			}
			
			 
			
			//Já sai da tela, eu me destruo
			if (y <= -100 or y >= room_height + 100 or x < -100 or x > room_width + 100)
			{
				instance_destroy();
			}
			
		}
		break;
		
	}
	
}

morrendo = function()
{
	//Perder vida
	efeito_mola(1.5, .5);
	timer_efeito_branco(2);
	
	ativa_hitstop(1);
	//Se ele ficou sem vida ele se destroi
	if (vida > 1)
	{
		vida--;
		
		
	}
	else
	{
		instance_destroy();
		
		var _part = instance_create_layer(x, y, "Particulas", obj_explosao_inimigo);
		_part.image_angle = random(359);
		
		//Se eu me destruir, eu tremo ainda mais a tela
		screenshake(20);
		
		var _chance = random(100)
		if (_chance > 80)
		{
			instance_create_layer(x, y, layer, obj_powerup)
		}
		//Som da explosão
		efeito_som(snd_explosao)
	}
	
	//E cria a particula de explosão dele
	
}