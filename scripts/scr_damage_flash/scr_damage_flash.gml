//Criando o meu damage flash
function ativa_damage_flash(_cor = c_white)
{
	//Como functiona o depth ? cada camada tem sua profundidade
	//Quem esta mais atras esta mais no fundo
	//Como o flash tem que ficar na frente de todo mundo
	//A profundidade dele tem que ser 0 ou negativo
	
	//Achando a proporçao da room em relacao ao tamanho 
	//da sprite do flash
	//var _spr_w = _flash.sprite_width;
	//var _spr_h = _flash.sprite_height;
	//var _proporcao = room_width / _spr_w;
	//var _proporcao_h = room_height / _spr_h;
	
	
	var _flash = instance_create_depth(0, 0, -1, obj_damage_flash);
	
	var _xscale = room_width / _flash.sprite_width;
	var _yscale = room_height / _flash.sprite_height;
	
	_flash.image_xscale = _xscale + 1;
	_flash.image_yscale = _yscale + 1;
	_flash.image_blend = _cor;
	
}