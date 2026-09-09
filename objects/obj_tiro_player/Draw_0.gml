//Me desenhando
draw_self();

//Efeito de brilho no tiro

var _cor = choose(c_aqua, c_red, c_blue);

//Mudar a forma como o computador processa as cores
//Isso muda como ele mistura as cores
//Adicionando o Blend mode adicionando as cores

gpu_set_blendmode(bm_add);
var _alpha = choose(0.4, 0.8)

//Desenhando a sprite do tiro NOVAMENTE por cima dela um pouco transparente
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 2, image_yscale * 2, image_angle, cor, _alpha);

//Resetando com o computador processa as cores
gpu_set_blendmode(bm_normal);