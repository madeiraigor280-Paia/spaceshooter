//Se for colocar o hitstop deixar assim

//if (global.hitstop) exit;


//Diminuindo o meu alpha
image_alpha -= 0.1;

//Se o meu alpha acabou, eu me destruo
if (image_alpha <= 0.1)
{
	instance_destroy();	
}