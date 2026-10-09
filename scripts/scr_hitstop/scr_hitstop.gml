global.hitstop = false;

//Funcao para ativar o hitstop
function ativa_hitstop(_tempo = 30)
{
	//Checando se existe no momento um hitstop no jogo
	var _existe = instance_exists(obj_hitstop_manager);
	
	
	//Se o hitstop nao existe, eu vou criar ele
	if (!_existe) instance_create_depth(0, 0, 0, obj_hitstop_manager);
	
	global.hitstop = true;
	obj_hitstop_manager.timer_hitstop = _tempo;
	
	
	
	//Travando os backgrounds
	trava_backgrounds(obj_hitstop_manager.lista_backgrounds);
	
}

//Funcao para detectar os backgrounds da room atual
function pega_backgrounds()
{
	//Pegando todas as layers da room
	var _layers = layer_get_all();
	
	//Pegando o tamanho da lista de layers
	//Ele da o tamanho do array
	//O tamanho dele comeca no 1
	var _qtd = array_length(_layers);
	
	//Retorno e o valor que uma funcao pode devolver
	//Nem toda funcao tem retorno
	
	//Ele pega todas as nossas layers em arrays 1d
	//Vamos usar um laco de repeticao para passar em todos eles
	//O for vai repetir com as regras que vamos dar 
	
	//Vamos abrir as variaveis de indice
	//Indice comeca em 0
	//Vamos dar uma regra para ele se repetir
	//Enquanto a regra for verdadeira ele repete o laco de repeticao
	//Regra de incremento, o que ele vai fazer sempre que repetir o laco
	
	//Array com minhas layers de backgrounds
	var _bgs = [];
	
	for (var i = 0; i < _qtd; i++)
	{
		//Pegando a layer atual
		var _atual = _layers[i];
		
		//Vamos fazer gambiarra
		//Vamos pegar o id e a informacao da layer que tem o background
		//Se o numero e valido ele da 0 a algum numero
		//Qnd e invalido ele da -1
		var _teste = layer_background_get_id(_atual)
		
		//Validando se a layer atual e de background 
		if (_teste != -1)
		{
			//Se a layer atual for de background, eu vou passar o id
			//Dela para a minha lista de bgs
			//O que o array push faz ? ele joga o proximo item no final do array
			//Ele joga um cima do outro
			//Sempre que for jogar um valor dentro do array
			//Sem se preocupar com o tamanho do array
			//Por que ele empurra para o final do array
			var _nome = layer_get_name(_atual);
			
			array_push(_bgs, _nome);
				
		}
		
		
		//Mostrando o conteudo dos meus bgs
		//show_message(_bgs)
		//show_message(_teste)
	}
	
	//Retorn encerra a funcao, nada que vem depois dele vai rodar
	//E ele tambem retorna um valor
	//Devolvendo a lista de background
	//Consegui salvar
	return _bgs;
	
	//return faz duas coisas
	//Ele encerra a funcao
}

//Funcao para travar os backgrounds
function trava_backgrounds(_lista_backgrounds)
{
	//Pegue o tamanho do array
	//Pegando todas as layers da room
	
	var _qtd = array_length(_lista_backgrounds);
	//Use o laco de repeticao for para rodar pelo array
	
	for (var i = 0; i < _qtd; i++)
	{
		//Pegando o nome da camda atual
		var _atual = _lista_backgrounds[i];
		
		//Vamos fazer gambiarra
		//Vamos pegar o id e a informacao da layer que tem o background
		//Se o numero e valido ele da 0 a algum numero
		//Qnd e invalido ele da -1
		
		//show_message(_teste)
		//O other vai rodar na pessoa que esta chamando a funcao
		
		//Guardando a velocidade da layer atual
		
		//Pegando a hspeed e vspeed da layer atual
		var _vspeed = layer_get_vspeed(_atual);
		var _hspeed = layer_get_hspeed(_atual);
		
		//Hspeed 
		array_push(obj_hitstop_manager.bgs_vspeed, _vspeed)
		//vspeed
		array_push(obj_hitstop_manager.bgs_hspeed, _hspeed)
		
		
		
		
		
		layer_hspeed(_atual, 0);
		layer_vspeed(_atual, 0);
		
		
	}
	
	//Trave a velocidade de todas as layers
	//show_message(other.bgs_hspeed)
	
}

function destrava_background(_lista_backgrounds, _bgs_hspeed, _bgs_vspeed)
{
	var _qtd = array_length(_lista_backgrounds);
	
	//Rodando pela minha array
	for (var i = 0; i < _qtd; i ++)
	{
		var _atual = _lista_backgrounds[i]
		
		
		var _hspeed = _bgs_hspeed[i];
		var _vspeed = _bgs_vspeed[i];
		
		//Definindo a velocidade
		layer_hspeed(_atual, _hspeed);
		layer_vspeed(_atual, _vspeed);
	}
	
	
}