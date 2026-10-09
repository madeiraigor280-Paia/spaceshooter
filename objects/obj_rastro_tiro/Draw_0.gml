gpu_set_blendmode(bm_add);
var _alpha = choose(0.4, 0.8)

//Desenhando a sprite do tiro NOVAMENTE por cima dela um pouco transparente
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, cor, image_alpha);

//Resetando com o computador processa as cores
gpu_set_blendmode(bm_normal);