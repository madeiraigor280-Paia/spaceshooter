#region globais
global.debug = false



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
	if (instance_exists(obj_screenshake))
	{
		//Passando para ele o valor de treme
		obj_screenshake.treme = _treme;	
	}
	
}

#endregion