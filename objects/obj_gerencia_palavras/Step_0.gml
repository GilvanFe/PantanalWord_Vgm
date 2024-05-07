if encaixou == true {
	palavra_desenhada = palavra_completa;
	if som == false{
		audio_play_sound(Acertou,10,false)
		som = true;
	}
}