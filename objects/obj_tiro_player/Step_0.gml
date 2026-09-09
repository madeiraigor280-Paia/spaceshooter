//Checando se eu sai da room por cima


if (y <= -32)
{
	//Me destruindo
	instance_destroy()
}

if (x <= - 32)
{
	instance_destroy()	
}

if (y >= 544)
{
	instance_destroy()	
}

if (x >= 320)
{
	instance_destroy()	
}


//Fazendo o tiro ficar menor
image_xscale = lerp(image_xscale, 1, .1);
image_yscale = lerp(image_yscale, 1, .1);

//Fazendo o tiro do player ganhar velocidade
vspeed = lerp(vspeed, -10, .1); 
