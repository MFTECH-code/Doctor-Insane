draw_set_alpha(alpha);
draw_set_color(c_red);
draw_rectangle(0, 0, 1366, 768, false);
draw_set_color(c_white);
draw_set_alpha(1);

if (global.vida <= 0)
{
	draw_set_font(fnt_morte);
	draw_text((room_width / 2) + 120, (room_height / 2) + 20, "Você morreu!");
	draw_text((room_width / 2) + 120, (room_height / 2) + 200, "Aperte espaço");
	draw_set_font(noone);
}
