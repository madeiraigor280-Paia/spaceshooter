image_angle += 1;

tempo_vivo--;

if (tempo_vivo <= 0)
{
	image_alpha -= 0.05;	
	if (image_alpha <= 0.2)
	{
		instance_destroy();	
	}
}
