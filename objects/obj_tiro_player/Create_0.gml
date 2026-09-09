//vspeed = -2;

morrendo = function()
{
	


	//Criando a minha particula
	var _part = instance_create_layer(x, y, "Instances", obj_explosao_tiro);
	//Quero mudar o angulo dela
	_part.image_angle = random(359);
	
}

//Escolhendo a minha cor
cor = choose(c_red, c_aqua, c_lime, c_yellow, c_fuchsia, c_maroon);

vspeed = -1;


//Fazendo o tiro ter um efeito de grandão
image_xscale = 3;
image_yscale = 2;