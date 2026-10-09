//Checando se eu sai por baixo da room
if (global.hitstop) exit;


if (y >= room_height + 50)
{
	instance_destroy();	
}

y += velv;
x += velh;