poder = choose("Escudo", "Vida", "Tiro");



aplico_power = function()
{
	
	switch(poder)
	{
		case ("Escudo"):
		{
			image_blend = c_red;
			var _player = obj_jogador
			_player.ganha_escudo();
		
		}
		break;
		
		case ("Vida"):
		{
			image_blend = c_white;
			obj_jogador.ganha_vida();
			
			
		}
		
		
		break;
		
		
		case ("Tiro"):
		{
			image_blend = c_blue;
			obj_jogador.ganha_level_tiro();
			
		}
		break;
	}
	
	
	
	
}