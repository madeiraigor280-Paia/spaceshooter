timer_hitstop = 0;

//Testando os backgrounds
lista_backgrounds = pega_backgrounds();

bgs_hspeed = [];
bgs_vspeed = [];

//show_message(lista_backgrounds)

desfaz_hitstop = function()
{
	//Se nao esta tendo hitstop, eu nao faco nada
	if (!global.hitstop) return;
	
	//Abaixando o tempo do hitstop
	timer_hitstop--;
	
	//Parando a animacao de todo mundo
	with(all)
	{
		image_speed = 0;	
	}
	
	//Se o timer do hitstop zerou, eu acabo com o hitstop
	if (timer_hitstop <= 0)
	{
		global.hitstop = false;
		
		//Eu vou destravar as layers de background
		destrava_background(lista_backgrounds, bgs_hspeed, bgs_vspeed)
		//Sai do hitstop, eu devolvo a animacao de todo mundo
		with(all)
		{
			//Se cada inimigo e personagem tiver sua variavel de speed
			//Colocar aqui a variavel de speed del img_spd = other.img_spd
			image_speed = 1;	
		}
		
	}
	
	
}