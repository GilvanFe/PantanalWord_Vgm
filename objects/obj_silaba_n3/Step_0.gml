if mouse_check_button(mb_left){
	var _b1 = instance_position(mouse_x,mouse_y,propria_silaba);
	if (_b1 != noone){
		esta_arrastando = true;
		posicao_mouse_x = mouse_x;
		posicao_mouse_y = mouse_y;
	}

}

if esta_arrastando{
	propria_silaba.x = posicao_mouse_x;
	propria_silaba.y = posicao_mouse_y;
	posicao_mouse_x = mouse_x;
	posicao_mouse_y = mouse_y;
}

if mouse_check_button_released(mb_left) {
   esta_arrastando = false;
}

var _b2 = instance_position(x,y, obj_background);
var _b3 = instance_position(x,y, encaixa_palavra);
var _b4 = instance_position(x,y, obj_guarda_palavras);

if _b2 != noone && esta_arrastando == false && _b3 == noone{
	x = posicao_inicial_x;
	y = posicao_inicial_y;

	audio_play_sound(Errou,10,false)


}

if _b3 != noone && esta_arrastando == false{
	
		if global.fase1_acertos == 0 && gerencia_palavra.palavra_desenhada == palavra_incompleta {
			gerencia_palavra.palavra_desenhada = gerencia_palavra.palavra_completa1;
			if som == false{
				audio_play_sound(Acertou,10,false)
				som = true;
			}
			global.fase1_acertos +=1;
		}  else if global.fase1_acertos == 1 &&  gerencia_palavra.palavra_desenhada == palavra_incompleta {
			gerencia_palavra.palavra_desenhada = gerencia_palavra.palavra_completa2;
			if som == false{
				audio_play_sound(Acertou,10,false)
				som = true;
			}
			global.fase1_acertos +=1;
		}  else if global.fase1_acertos == 2 &&  gerencia_palavra.palavra_desenhada == palavra_incompleta {
			gerencia_palavra.palavra_desenhada = gerencia_palavra.palavra_completa3;
			if som == false{
				audio_play_sound(Acertou,10,false)
				som = true;
			}
			global.fase1_acertos +=1;
		} else if global.fase1_acertos == 3 &&  gerencia_palavra.palavra_desenhada == palavra_incompleta {
			gerencia_palavra.palavra_desenhada = gerencia_palavra.palavra_completa4;
			if som == false{
				audio_play_sound(Acertou,10,false)
				som = true;
			}
			global.fase1_acertos +=1;
		} else {
			error = true;
		
		}
	
	if error == true {
		x = posicao_inicial_x;
		y = posicao_inicial_y;

		audio_play_sound(Errou,10,false);
		error = false;
	
	} else {
		instance_deactivate_object(propria_silaba);
	}
}
