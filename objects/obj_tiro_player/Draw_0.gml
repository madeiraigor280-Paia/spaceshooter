//Me desenhando
draw_self();

//Efeito de brilho no tiro

//Mudar a forma como o computador processa as cores
//Isso muda como ele mistura as cores
//Adicionando o Blend mode adicionando as cores
gpu_set_blendmode(bm_add);

//Desenhando a sprite do tiro NOVAMENTE por cima dela um pouco transparente
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.5, image_yscale * 1.5, image_angle, c_red, 0.5);

//Resetando com o computador processa as cores
gpu_set_blendmode(bm_normal);