//Só exibo o debug se ele esta ativo
if (global.debug)
{
	//Debug do level do tiro
	draw_text(20, 20, "Level tiro: " + string(level_tiro))
}

//Desenhando as vidas do player
//Desenhe a palavra vida na base da janela
var _tamanho_janela = view_get_hport(view_hport)

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

//draw_text(20, _gui_height - 40, "Vida");

//Desenhando a sprite do icone na inferior esquerda da tela
//draw_sprite(spr_icone_vida, 0, _gui_width - _gui_width + 10, _gui_height - 40)
//Ele vai pedir o icone, e ele vai pedir a quantidade de vezes para desenhar
desenha_icone(spr_gui_shield, escudos, _gui_height - 20);

//Desenhando as vidas
desenha_icone(spr_icone_vida, vidas, _gui_height - 50)