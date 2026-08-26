alarm[0] = game_get_speed(gamespeed_fps) * 2;

//Descobrindo se eu fui criado uma sequence
//O que faz saber se ele está uma sequencia ?
//Usando o in_sequence
criado_em_sequence = in_sequence;

//Método para atirar
atirando = function()
{
	var _tiro	= instance_create_layer(x, y, "tiros", obj_tiro_inimigo1);
	_tiro.vspeed = 4;
	
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
	
	
	var _chance = random(100)
	//Criando o power up
	//Se o chance for maior do que 90
	//Ele cria o power up
	if (_chance > 90)
	{
		instance_create_layer(x, y, layer, obj_powerup)
	}
		
	
}