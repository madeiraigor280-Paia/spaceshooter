alarm[0] = game_get_speed(gamespeed_fps) * 2;

//Descobrindo se eu fui criado uma sequence
//O que faz saber se ele está uma sequencia ?
//Usando o in_sequence
criado_em_sequence = in_sequence;

//Método para atirar
atirando = function()
{
	efeito_som(snd_tiro, .1);
	//Só posso atirar se eu estou dentro da room
	if (x < room_width && x > 0 && y > 0 && y < room_height)
	{
		var _tiro	= instance_create_layer(x, y, "tiros", obj_tiro_inimigo1);
		_tiro.vspeed = 4;
	}
	
}

crio_explosao = function()
{
	instance_destroy();
	
	var _explosao = instance_create_layer(x, y, layer, obj_explosao_inimigo);
	
	_explosao.image_angle = random(359)
	
}

morrendo = function()
{
	sendo_destruido(obj_explosao_inimigo);
	//Explodindo
	efeito_som(snd_explosao, .1);
	
	var _chance = random(100)
	//Criando o power up
	//Se o chance for maior do que 90
	//Ele cria o power up
	if (_chance > 80)
	{
		instance_create_layer(x, y, layer, obj_powerup)
	}
		
	
}