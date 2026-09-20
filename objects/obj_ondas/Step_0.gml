tempo_boss++;

if (tempo_boss >= timer_boss && !instance_exists(obj_inimigo2))
{
	instance_create_layer(128, -32, "Inimigos", obj_inimigo2);
	
}