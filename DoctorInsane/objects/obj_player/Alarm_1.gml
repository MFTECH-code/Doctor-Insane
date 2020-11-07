

if (velv != 0)
{
	estado = "movendo";
}

if (velh > 0)
{
	estado =  "caindo";
}

if (velh < 0)
{
	estado = "subindo";
}

if (velv == 0 && velh == 0.5)
{
	estado = "parado";
}
dano_control = false;