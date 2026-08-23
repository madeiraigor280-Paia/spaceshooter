//Colidi com o player eu me mato
instance_destroy()

//Rodando o metodo de ganhar level do player
//Em evento de colisão, quando alguem colidi comigo
//Esse alguem é o other
other.ganha_level_tiro()

//Criando a particula do tiro na minha posição
var _part =instance_create_layer(x, y,"Instances", obj_explosao_tiro);

//Quero mudar o angulo dela
_part.image_angle = random(359);

//Importa a sprite de particula do tiro
//Crie um objeto para ser a explosão do tiro
//Faça o power up instanciar essa explosão na posição dele.

