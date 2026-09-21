

var _lista_vel = global.vida_mult[global.level-1];
//show_debug_message(_lista_vel);

if (global.level < 9)
{
	global.pontos += 0.1;
	
	
	if (global.pontos >= global.lista_pontos[global.level-1])
	{
		global.level++;
		_lista_vel++;
		
		
	}
	
	
}