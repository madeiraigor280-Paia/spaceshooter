alarm[0] = game_get_speed(gamespeed_fps) * 2;

//Método para atirar
atirando = function()
{
	var _tiro	= instance_create_layer(x, y, "tiros", obj_tiro_inimigo1);
	_tiro.vspeed = 4;
	
}