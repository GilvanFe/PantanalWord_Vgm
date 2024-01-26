var _animal_x = animal_vinculado.x;
var _animal_y = animal_vinculado.y;

var _palavra_x = _animal_x;
var _palavra_y = _animal_y + animal_vinculado.sprite_height/2 + 10;
draw_set_font(fnt_palavras_n1);
// Supondo que palavra_desenhada já tenha um valor atribuído

// Obtém a largura da string em pixels
var largura_string = string_width(palavra_desenhada);

// Define a escala do sprite com base na largura da string
var escala_x = largura_string / sprite_get_width(spr_tabua_palavra);

// Redimensiona o sprite
draw_sprite_ext(spr_tabua_palavra, 0, _palavra_x, _palavra_y + 30, escala_x+0.3, 1.5, 0, c_white, 1);


draw_text(_palavra_x+5,_palavra_y,palavra_desenhada );
draw_set_font(-1);
