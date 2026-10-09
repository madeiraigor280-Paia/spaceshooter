//Funcao para criar as minhas particulas
function cria_particulas(_vida_min = 30, _vida_max = 60, _x = 0, _y = 0, _velh = 0, _velv = 0, _cor = c_white)
{
	//Checando se o objeto que gerencia as particulas existe
	if (!instance_exists(obj_part_manager)) instance_create_depth(0, 0, 0, obj_part_manager);
	
	//Nesse momento o gerenciador de particulas existe!
	with(obj_part_manager)
	{
		//Definindo quantas particulas eu vou criar
		var _qtd = irandom_range(10, 50);
		//Eu quero deixar o valor sempre positivo
		//Por isso vou usar o abs
		//Vai pegar qualquer valor e deixar positivo
		var _vel = abs(_velh) + abs(_velv);
		//Como ele funciona o point direction ? 
		//ele pega o x1 e y1
		//E da onde ele ia
		//Vamos passar a direcao inicial de 0 0
		var _dir = point_direction(0, 0, _velh, _velv);
		
		
		repeat(_qtd)
		{
			//Definindo a direcao da particula
			
			//Variando a posicao x e y da particula
			var _x1 = _x + random_range(-12, 12);
			var _y1 = _y + random_range(_velv, _vel * 4);
			var _part = instance_create_layer(_x1, _y1, "Particulas", obj_partzinha);
			
			var _vel_final = _vel + random_range(0.1, 2)
			
			with(_part)
			{
			//Calculando o valor correto do velh e velv
			
				//Criando a particula
				
				var _tam = random_range(0.2, .5);
			
			
				var _dir_part = _dir + random_range(-30, 30);
				var _vida = random_range(_vida_min, _vida_max)
			
				velh_original = lengthdir_x(_vel_final, _dir_part);
				velv_original = lengthdir_y(_vel_final, _dir_part);
				escala_original = _tam;
				image_angle = _dir_part;
				vida_max = _vida;
				vida_atual = _vida;
				cor_original = _cor;
				sprite_index = choose(spr_part_linha, spr_part_triang);
			
			}
		}
	}
	
	
}