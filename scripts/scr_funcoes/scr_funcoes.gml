#region globais
global.debug = false

//Definindo o destino que minha transicao vai levar
global.destino = rm_inicio;

global.transicao = false;

#endregion


#region funções



//Função começa por function
function sendo_destruido(_particula = obj_explosao_tiro)
{
	instance_destroy();
	
	//Criando a minha particula
	var _part = instance_create_layer(x, y, "Particulas", _particula);
	_part.image_angle = random(359)
	
}

//Função de screenshake
function screenshake(_treme = 1)
{
	//Checando se a instância do objeto screenshake existe
	if (instance_exists(obj_screenshake))
	{
		//Checando se o valor do treme atual é maior do que  do
		//Objeto screenshake
		//Acessar o objeto screenshake
		with(obj_screenshake)
		{
			//Meu códico vai rodar dentro desse objeto
			//Se o treme novo for maior do que eu estou tremendo
			//Ai eu mudo o valor dele, caso contrário, eu não faço nada
			if (_treme > treme)
			{
				treme = _treme;
			}
		}
		//Passando para ele o valor de treme
		//obj_screenshake.treme = _treme;
	}
	
}

function inicia_efeito_mola()
{
	//Iniciando as variaveis que eu vou usar
	xscale = 1;
	yscale = 1;
	
}


//Ele vai definir qual valor vai ter o meu amassar
function efeito_mola(_xscale = 1, _yscale = 1)
{
	xscale = _xscale;
	yscale = _yscale;
	
}

function retorna_mola(_qtd = .1)
{
	xscale = lerp(xscale, 1, _qtd);
	yscale = lerp(yscale, 1, _qtd);
	
}

function desenha_efeito_mola()
{
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
	
}


function inicia_efeito_branco()
{
	tomei_dano = false;	
}

function timer_efeito_branco(_tempo = 1)
{
	tomei_dano = _tempo;	
}

function contador_efeito_branco()
{
	if (tomei_dano 	> 0)
	{
		tomei_dano--;	
	}
	
}

function desenha_efeito_branco(_funcao_desenho = 0)
{
	if (tomei_dano)
	{
		shader_set(sh_branco)
		_funcao_desenho();
		shader_reset();
	}
	else
	{
		_funcao_desenho();	
	}
	
	
}

function efeito_som(_som = snd_tiro, _variacao = .1)
{
	var _pitch = random_range(1 - _variacao, 1 + _variacao)
	
	audio_play_sound(_som, 0, 0, , , _pitch);
		
}

//Função para mudar de room
function transicao_simples()
{
	room_goto(global.destino);
	
	//Garanto que não tem som nenhum tocando
	audio_stop_all();
	
}

function morreu_player()
{
	layer_sequence_create("sq_transicao", room_width / 2, room_height / 2,  sq_transicao1);
	
		
	
}

function finaliza_transicao()
{
	global.transicao = false;	
	
}

function destroi_sequence()
{
	sequence_destroy(sq_alerta)	;
	
}

#endregion