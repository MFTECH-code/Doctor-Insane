// Códigos de colisão
repeat(abs(velh))
{
	if (!place_meeting(x + sign(velh), y, obj_bloco))
	{
		x += sign(velh);
	}
	else
	{
		velh = 0;
		break;
	}
}

repeat(abs(velv))
{
	if (!place_meeting(x, y + sign(velv), obj_bloco))
	{
		y += sign(velv);
	}
	else
	{
		velv = 0;
		break;
	}
}