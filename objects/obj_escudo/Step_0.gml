
//Se a animação acabou
//E a animação esta negativa

if (global.hitstop) exit;

if (image_index <= 0.5 && image_speed < 0)
{
	
	instance_destroy();
}

//Se acabou o tempo do escudo, eu vou diminuir o meu image_speed;
timer_escudo--;

if (timer_escudo <= 0)
{
	image_speed = -3;
	
	if (!toquei_som)
	{
		efeito_som(sfx_shieldDown, 0)
		toquei_som = true;
	}
	
}