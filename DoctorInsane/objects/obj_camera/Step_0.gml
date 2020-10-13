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