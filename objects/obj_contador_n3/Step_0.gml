/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//if obj_gerencia_palavras.palavra_desenhada = obj_gerencia_palavras.palavra_completa {
	
	if global.fase1_acertos = pontos {
	instance_create_layer(500,2400,"Popups",obj_popup1);
	global.fase1_acertos = 0;
	global.contador += 1;
	}


//show_debug_message(global.contador);

