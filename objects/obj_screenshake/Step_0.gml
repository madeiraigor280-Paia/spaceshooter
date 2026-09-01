//Tremendo a tela!!
//Isso só ativa se ativar o viewport and cameras
//Alterando a posição X e Y do viewport com base no valor do treme
if (treme > 0.1)
{
	var _x = random_range(-treme, treme)
	var _y = random_range(-treme, treme)
	//Alterando a posição X do viewport
	//View_current é o que eu estou usando
	view_set_xport(view_current, _x)
	view_set_yport(view_current, _y)
}
else //Cheguei perto do zero, eu zero  o valor do treme
{
	treme = 0;
	
	//Garanto que a posição da minha view é zerada também
	view_set_xport(view_current, 0)
	view_set_yport(view_current, 0)
	
}
//Parando de tremer de pouqinho em pouquinho
treme = lerp(treme, 0, .1)