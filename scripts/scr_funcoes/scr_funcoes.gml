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

#endregion