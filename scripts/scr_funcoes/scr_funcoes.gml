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

#endregion