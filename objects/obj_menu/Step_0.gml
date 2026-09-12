//Sempre que eu apertar a setinha para baixo, eu desço no menu
if (keyboard_check_pressed(vk_down))
{
	atual += 1;
	//atual = clamp(atual, 0, 2)	
	//if (atual > 2) atual = 2;
}

//Quando eu apertar a seta para cima, ele sobe no menu
if (keyboard_check_pressed(vk_up))
{
	atual -= 1;
	
}

//Limitar o movimento no menu
//Atual não pode ser menor do que 0 ou maior que 2
atual = clamp(atual, 0, array_length(menu) - 1)	