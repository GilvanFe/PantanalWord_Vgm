/// Step Event do objeto popup

// Atualiza a posição do popup para fazê-lo subir gradualmente até a metade da tela
if (popup_visible) {
    popup_y -= popup_speed;
    if (popup_y <=(display_get_gui_height() / 2) + 500) { // Quando o popup atingir a metade da tela
        popup_y = (display_get_gui_height() / 2) + 500; // Pare o popup no meio da tela
    }
}

x = display_get_gui_width() - 70;
y = popup_y;

if mouse_check_button(mb_left){
	audio_play_sound(Clique_1,10,false);
	if global.contador < 3 {
		var _b1 = instance_position(mouse_x,mouse_y,obj_popup1);
		if (_b1 != noone){
			room_goto_next();
		}
	}
	else if global.contador > 2 {
		var _b1 = instance_position(mouse_x,mouse_y,obj_popup1);
		if (_b1 != noone){
			room_goto(Room2);
		}
		global.contador = 0;
	}
}
