vspeed = -2;

morrendo = function()
{
	


	//Criando a minha particula
	var _part = instance_create_layer(x, y, "Instances", obj_explosao_tiro);
	//Quero mudar o angulo dela
	_part.image_angle = random(359);
	
}
