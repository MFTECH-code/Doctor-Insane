var left, right, jump, _velh, chao, _jump;
if (estado != "dano")
{
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	jump = keyboard_check_pressed(ord("Z"));
	_jump = keyboard_check_released(ord("Z"));

	chao = place_meeting(x, y + 1, obj_bloco);

	_velh = (right - left) * vel;



	velh = lerp(velh, _velh, .1);
} 
else
{
	_velh = 0;
	chao = place_meeting(x, y + 1, obj_bloco);
	jump = keyboard_check_pressed(ord("Z"));
	_jump = keyboard_check_released(ord("Z"));
}


if (!chao)
{
	velv += grav;
	
	if (pulo_duplo == true)
	{
		if (jump)
		{
			pulo_duplo = false;
			velv = -pulo;
		}
	}
	
	
	if (velv < 0)
	{
		if (_jump)
		{
			velv = velv / 2;		
		}
	}
}

if (chao)
{
	pulo_duplo = true;
	if (jump)
	{
		velv = -pulo;
	}
}



// Gerenciamento de estados

if (_velh != 0)
{
	image_xscale = sign(_velh);
}
// Poderes dos queijos
if (global.pulo_reduzido) // Pulo reduzido
{
	pulo = 5;
	if (jump)
	{
		global.pulo_reduzido = false;
	}
}
else
{
	pulo = 10;
}
// - - - - - - - - - - - - - - - - - - - - 
if (global.vel_reduzida && control == false)
{
	vel = 2;
	control = true;
	alarm[0] = room_speed * 3;
}

// Animação
switch(estado)
{
	case "parado":
		sprite_index = parado;
		
		if (_velh != 0)
		{
			estado = "movendo";
		}
		
		if (velv < 0)
		{
			estado = "subindo";
		}
		
		// Colisão com espinhos e se o estado for diferente de dano
		if (place_meeting(x, y + 1, obj_espinho) && estado != "dano")
		{
			estado = "dano";
		}
		
		break;
		
	case "movendo":
		sprite_index = movendo;
		
		if (velv == 0 && _velh == 0)
		{
			estado = "parado";
		}
		
		if (velv < 0)
		{
			estado = "subindo";
		}
		
		if (velv > 0)
		{
			estado = "caindo";
		}
		
		// Colisão com espinhos e se o estado for diferente de dano
		if (place_meeting(x, y + 1, obj_espinho) && estado != "dano")
		{
			estado = "dano";
		}
		
		break;
	
	case "subindo":
		
		sprite_index = subindo;
		
		
		if (velv > 0)
		{
			estado = "caindo";
		}
		
		// Colisão com espinhos e se o player não estiver no estado de dano
		if (place_meeting(x, y - 1, obj_espinho) && estado != "dano")
		{
			estado = "dano";
		}
		
		break;
	
	case "caindo":
		sprite_index = caindo;
		
		if (velv == 0 && _velh == 0)
		{
			estado = "parado";
		}
		
		if (velv == 0)
		{
			estado = "movendo";
		}
		
		// Colisão com espinhos e se o player não estiver tomando dano
		if (place_meeting(x, y + 1, obj_espinho) && estado != "dano")
		{
			estado = "dano";
		}
		
		break;
		
		case "dano":
			sprite_index = tomando_dano;
				
			//velh = sign(_velh) * 5;
			velv = -2;
			
			
			if (dano_control = false)
			{
				global.vida--;
				dano_control = true;
				alarm[1] = room_speed / 2;
			}
			
			break;
}

























