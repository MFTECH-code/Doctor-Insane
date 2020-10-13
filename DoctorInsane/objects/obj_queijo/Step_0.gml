// Gerenciando estados do queijo
switch(estado)
{
	case "envenenado":
		image_blend = c_purple;
		if (place_meeting(x, y, obj_player))
		{
			if (global.vida > 0) 
			{
				obj_player.estado = "dano";
			}
			instance_destroy();
		}
		break;
		
	case "vida_extra":
		image_blend = c_white;
		if (place_meeting(x, y, obj_player))
		{
			if (global.vida < global.vida_max) global.vida++;
			instance_destroy();
		}
		break;
	
	case "pulo_reduzido":
		image_blend = c_green;
		if (place_meeting(x, y, obj_player))
		{
			global.pulo_reduzido = true;
			instance_destroy();
		}
		break;
	
	case "velocidade_reduzida":
		image_blend = c_gray;
		if (place_meeting(x, y, obj_player))
		{
			global.vel_reduzida = true;
			instance_destroy();
		}
		break;
}