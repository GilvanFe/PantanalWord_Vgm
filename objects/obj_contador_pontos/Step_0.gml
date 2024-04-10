/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//if obj_gerencia_palavras.palavra_desenhada = obj_gerencia_palavras.palavra_completa {
	
	if global.fase1_acertos = 3 {
	
	global.n1_fase++;
	
		if global.n1_fase = 2 {
			//room_goto(Nivel1_fase2);
			//room_goto(Nivel2_fase1);
			instance_create_layer(500,2400,"Popups",obj_popup1);
		}

		if global.n1_fase = 3 {
			//room_goto(Nivel1_fase3);	
			instance_create_layer(500,2400,"Popups",obj_popup1);
		}

		if global.n1_fase = 4 {
			//room_goto(Nivel2_fase1);	
			instance_create_layer(500,2400,"Popups",obj_popup1);
		}
	}




