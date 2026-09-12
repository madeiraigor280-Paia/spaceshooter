//Pegue as dimensões da tela
//Desenhe o texto no meio da tela
var _tamanho_tela = display_get_gui_height() / 2;

//Alinhando o texto
draw_set_valign(1);


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
	
	//Vou avisar para ele que a opção atual fica na cor vermelha
	//Checando se o I é igual a minha opção atual
	
	if (i == atual)
	{
		_cor = c_red;	
	}
	//Desenhe o texto do menu referente ao I
	draw_set_colour(_cor);
	draw_text(20, _tamanho_tela  + i * 20, menu[i]);
	
	draw_set_colour(-1);
	
}

draw_set_valign(0);
