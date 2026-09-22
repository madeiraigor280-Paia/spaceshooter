// Inherit the parent event
vida_max = 30 * global.vida_mult[global.level-1];
vida = vida_max;
x_barra = 0;
tam_barra = 0;

hp_secundario = vida_max;


estado = "chegando"

screenshake(40)

//Efeitos da mola e branco
inicia_efeito_branco();
inicia_efeito_mola();

timer_taunt = choose(60, 100);
tempo_taunt = 0;
escolhi = false;

fiz_alerta = false;

timer_carregando = choose(150, 200);

carrega = 0;

if (!fiz_alerta)
{
	layer_sequence_create("sq_alerta", 144, 244, sq_alerta);
	fiz_alerta = true;
}

// Create ou onde você dispara a sequência
seq = layer_sequence_create("sq_alerta", 144, 244, sq_alerta);


maquina_de_estado = function()
{
	switch(estado)
	{
		case "chegando":
		{
			if (y < 120)
			{
				vspeed = 1.2;	
			}
			else
			{
				estado = "carregando";
				
			}
		
		}
		
		break;
		
		case "carregando":
			//Diminuindo o timer carregando
			carrega++;
			vspeed = 0;
			if (!escolhi)
			{
				hspeed = choose(-1.2, 1.2)
				escolhi = true;
				
			}
			
			var _chao = place_meeting(x + hspeed, y, obj_chao)
			if (_chao)
			{
				hspeed = -hspeed;	
				
			}
			
			if (carrega >= timer_carregando)
			{
				
				estado = choose("atirando1", "atirando2", "atirando3")	
				carrega = 0;
				escolhi = false;
				timer_carregando = choose(150, 200);
			}
			
			
			
		break;
		
		case "atirando1":
		{
			
			hspeed = 0;
			for (var i=0; i<12; i++)
			{
				var _dire = i*-10;
				var _tiro = instance_create_layer(x,y,"tiros",obj_tiro_inimigo2);
				//_tiro.speed = -10;	
				_tiro.direction = 0+_dire;
				_tiro.image_angle = _tiro.direction+90;
				
				_tiro.speed = 5;   // velocidade inicial, na direção certa
		
		
			
			}
			
			estado = "taunt";
			
		}
		
		break;
		
		case "atirando2":
			hspeed = 0;
			if (instance_exists(obj_jogador))
			{
				var _dir = point_direction(x, y, obj_jogador.x, obj_jogador.y)
				
				//Criando o tiro a
				
				var _x = 40
				repeat(10)
				{
					var _tiro = instance_create_layer(x + _x, y, "tiros", obj_tiro_inimigo2);
					_tiro.speed = 5;
					_tiro.direction = _dir;
					_tiro.image_angle = _dir + 90;
					_x += 10
				}
				
				
				estado = "taunt";
			}
			
		
		break;
		
		
		case "atirando3":
			hspeed = 0;
			
			
			var _x = 0;
			repeat(20)
			{
				var _tiro = instance_create_layer(x + _x, y, "tiros", obj_tiro_inimigo2);
				_tiro.speed = 5;
				_tiro.direction = -90;
				
				_x += 10
				
			}
			
			estado = "taunt";
		break;
		
		
		case "taunt":
		{
			hspeed = 0;
			
			tempo_taunt++;
			
			
			if (tempo_taunt >= timer_taunt)
			{
				estado = "carregando";
				tempo_taunt = 0;
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
	
	
	//Se ele ficou sem vida ele se destroi
	if (vida > 1)
	{
		vida--;
		
		
	}
	else
	{
		instance_destroy();
		
		var _power_up = instance_create_layer(x, y, layer, obj_powerup);
		
		var _part = instance_create_layer(x, y, "Particulas", obj_explosao_inimigo);
		_part.image_angle = random(359);
		
		//Se eu me destruir, eu tremo ainda mais a tela
		screenshake(20);
		
		//Som da explosão
		efeito_som(snd_explosao)
	}
	
	//E cria a particula de explosão dele
	
}


