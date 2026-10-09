if (variable_global_exists(global.hitstop))
{
	if (global.hitstop) exit;	
}

//Diminuindo a minha vida
vida_atual--;

//Fazer a particula ficar transparente
//Fazer a regra de 3 para ver a porcentagem
var _val = vida_atual / vida_max;


image_alpha = _val;
velh = (_val * _val) * velh_original;
velv = _val * velv_original * _val;
//image_xscale = lerp(image_xscale, 0, val);

image_xscale = _val * escala_original;
image_yscale = image_xscale;
//if (image_xscale > 0)
//{
//	image_xscale -= qtd;
//	image_yscale -= qtd;
//}


//Merge colour mistura duas cores
var _nova_cor = merge_colour(c_white, cor_original, _val);
image_blend = _nova_cor;







//velh = lerp(velh, 0, 0.01)
//velh = lerp(velv, 0, 0.01)




if (vida_atual <= 0.1)
{
	instance_destroy();	
}

x += velh;
y += velv;