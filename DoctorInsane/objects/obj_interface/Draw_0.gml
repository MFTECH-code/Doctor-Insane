var cam_posX = camera_get_view_x(view_camera[0]);
var cam_posY = camera_get_view_y(view_camera[0]);


draw_text(cam_posX + margem, cam_posY + margem, "vida: " + string(global.vida));

if (global.vel_reduzida)
{
	draw_text(cam_posX + margem, cam_posY + margem + 40, "Velocidade reduzida");
}

if (global.pulo_reduzido)
{
	draw_text(cam_posX + margem, cam_posY + margem + 80, "Pulo reduzido");
}
