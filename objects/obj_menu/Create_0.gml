//Meu menu vai ter as opções

//Jogar

//Tutorial


//Sair

//Criando um array para as opções do menu
menu = ["Jogar", "Tutorial", "Sair"];

//Opção que estou 
atual = 0;

margem = 40;

controla_menu = function()
{
	//Sempre que eu apertar a setinha para baixo, eu desço no menu
	if (keyboard_check_pressed(vk_down))
	{
		atual += 1;
	
		audio_stop_sound(snd_zap);
		//Tocando o som do zap
		efeito_som(snd_zap, .1);
	
		margem = -20;
		//atual = clamp(atual, 0, 2)	
		//if (atual > 2) atual = 2;
	}

	//Quando eu apertar a seta para cima, ele sobe no menu
	if (keyboard_check_pressed(vk_up))
	{
		atual -= 1;
		audio_stop_sound(snd_zap);
		efeito_som(snd_zap, .1);
	
		margem = -20;
	}

	//Limitar o movimento no menu
	//Atual não pode ser menor do que 0 ou maior que 2
	atual = clamp(atual, 0, array_length(menu) - 1)	

	margem = lerp(margem, 40, .1);
	
	//Checando se a pessoa apertou o enter
	if (keyboard_check_pressed(vk_enter))
	{
		ativa_menu();
	
	}
	
}

ativa_menu = function()
{
		//Fazendo o menu funcionar
		switch(atual)
		{
			//Jogar
			case 0:
			//Chamando a transição 1
			//Esse é o centro da minha room
			layer_sequence_create("sq_transicao", room_width /2 , room_height / 2, sq_transicao1);
			//O destino é a tela de jogo
			global.destino = rm_jogo;
			
			//Está tendo uma transicçaõ
			global.transicao = true;
			
			break;
		
			//Tutorial
			case 1:
			layer_sequence_create("sq_transicao", room_width / 2, room_height / 2, sq_transicao1);
			global.destino = rm_tutorial;
			
			//Está tendo uma transição
			global.transicao = true;
			
			break;
		
			//Sair
			case 2:
				//Fechando o jogo
				game_end();
			break;
		
		}	
	
	
}

desenha_menu = function()
{
		//Pegue as dimensões da tela
	//Desenhe o texto no meio da tela
	var _tamanho_tela = display_get_gui_height() / 2;

	//Alinhando o texto
	draw_set_valign(1);

	//Definindo a minha fonte
	draw_set_font(fnt_menu);

	//Pegando a altura da fonte
	var _alt = string_height("I")

	//Desenhando a opção de jogar do meu menu

	//Usando um laço de repetição para desenhar todas as opções do menu
	//Laço de repetição for usa um indice, uma condição de repetição e uma ação
	//Meu indice começa com o valor de 0;
	//Minha condição é enquanto o 1 for menor do que 3
	//Enquanto meu i é menor do que 3
	//Ao repetir ele vai aumentar o valor do 1 em 1
	//O laço de repetição com for é muito bom para ser usado com vetores

	//Para achar o tamanho do array
	for (var i = 0; i < array_length(menu); i ++)
	{	
		//Variavel da cor do texto
		var _cor = c_white;
	
		//Variavel da margem
		var _marg = 0;
		//Vou avisar para ele que a opção atual fica na cor vermelha
		//Checando se o I é igual a minha opção atual
	
		if (i == atual)
		{
			_cor = c_red;
			//O atual tem margem
			_marg = margem;
		}
		//Desenhe o texto do menu referente ao I
		draw_set_colour(_cor);
		draw_text(20 + _marg, _tamanho_tela  + i * _alt * 1.2 - 100, menu[i]);
	
		draw_set_colour(-1);
	
	}

	draw_set_valign(0);
	draw_set_font(-1);
	
}