var _animal_x = animal_vinculado.x;
var _animal_y = animal_vinculado.y;

var _palavra_x = _animal_x;
var _palavra_y = _animal_y + animal_vinculado.sprite_height/2 + 10;
draw_set_font(fnt_palavras_n1);
draw_text(_palavra_x,_palavra_y,palavra_desenhada );
draw_set_font(-1);
