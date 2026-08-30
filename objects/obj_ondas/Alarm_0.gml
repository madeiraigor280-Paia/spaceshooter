//Crio a sequence com base no indice
layer_sequence_create("Seq_inimigos", 0, 0, ondas[atual])


//Reinicio o alarme em 300 frames e aumento o valor do indice



//Só aumento o atual se eu não cheguei no final do array
//Ela salva o tamanho do array
if (atual < array_length(ondas) - 1)
{
	atual++;
	alarm[0] = 320;
}