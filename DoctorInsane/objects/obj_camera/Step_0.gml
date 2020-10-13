switch(modo)
{
	case "normal":
			
		
		if (instance_exists(obj_player))
		{
			
			alvo = obj_player;
			
			x = lerp(x, obj_player.x, vel);
			y = lerp(y, obj_player.y, vel);
		}
		
		break;
}

// Fazeno efeito de morte na câmera

if (escuro && global.vida > 0)
{
	alpha -= .05;
	if (alpha <= 0)
	{
		claro = true;
		escuro = false;
	}
}

if (global.vida <= 0 && claro)
{
	alpha += .01;
	if (alpha >= .5)
	{
		claro = false;
		escuro = true;
	}
}
