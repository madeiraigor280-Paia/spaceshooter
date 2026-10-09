//vspeed = 4;
cor = c_red;

morrendo = function()
{
	instance_destroy();


	//Criando a minha particula
	var _part = instance_create_layer(x, y, "Instances", obj_explosao_tiro);
	//Quero mudar o angulo dela
	_part.image_angle = random(359);
	
	//Criando as minhas particulas
	cria_particulas(, , x, y, velh, velv, cor);
	
}

velh = 0;
velv = 5;
vel = 4;