alvo = self;
modo = "normal";
vel = .1;

escuro = true;
claro = false;

alpha = 1;


if (instance_exists(obj_player))
{
	x = obj_player.x;
	y = obj_player.y;
}