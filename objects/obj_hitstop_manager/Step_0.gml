//Se o hitstop esta ativo, ai sim eu trabalho
desfaz_hitstop();

if (keyboard_check_pressed(ord("T")))
{
	global.hitstop = true;
	timer_hitstop = 60;
	
	//Travando os meus backgrounds
	trava_backgrounds(lista_backgrounds)
	
	
}