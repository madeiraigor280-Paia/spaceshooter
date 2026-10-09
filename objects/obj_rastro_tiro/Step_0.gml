if (global.hitstop) exit;

//Fazendo o meu rastro desaparecer
image_alpha -= 0.1;

//Diminuindo o meu tamanho conforme o tempo passa

image_xscale -= 0.1;
//image_yscale -= 0.1;

image_xscale = clamp(image_xscale, 0, 1);


//Destruindo o rastro quando ele sumir por completo
if (image_alpha <= 0.1) instance_destroy();