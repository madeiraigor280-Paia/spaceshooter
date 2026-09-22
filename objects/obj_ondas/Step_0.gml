tempo_boss++;
tempo_mini++;

if (tempo_boss >= timer_boss && !instance_exists(obj_inimigo2))
{
	instance_create_layer(128, -32, "Inimigos", obj_inimigo2);
	tempo_boss = 0;
	timer_boss = choose(1000, 1200)
}

if (tempo_mini >= timer_mini_boss)
{
	instance_create_layer(32, -32, "Inimigos", obj_inimigo3);	
	instance_create_layer(256, - 32, "Inimigos", obj_inimigo3);
	
	tempo_mini = 0;
	
}