/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//if obj_gerencia_palavras.palavra_desenhada = obj_gerencia_palavras.palavra_completa {
	
	if global.fase1_acertos = 3 {
	
	global.n1_fase++;
	
		if global.n1_fase = 2 {
			room_goto(Nivel1_fase2);
		}

		if global.n1_fase = 3 {
			room_goto(Nivel1_fase3);	
		}

		if global.n1_fase = 4 {
			room_goto(Room2);	
		}
	}




