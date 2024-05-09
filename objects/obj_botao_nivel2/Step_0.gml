var _b2 = instance_position(mouse_x,mouse_y,id)
if _b2 != noone{
	if mouse_check_button_pressed(mb_left){
		image_xscale = 0.9;
		image_yscale = 0.9;
	}
	else if mouse_check_button_released(mb_left){
		image_xscale = 1;
		image_yscale = 1;
		global.n2_fase = 1;
		room_goto(Nivel2_fase1);
	}
}