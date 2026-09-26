//Crio a transição APENAS se estiver tendo uma transição
if (global.transicao)
	layer_sequence_create("sq_transicao", 144, 256, sq_transicao2);
	
audio_stop_all();
audio_play_sound(snd_musica, 1, 1)