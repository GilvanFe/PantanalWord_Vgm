var _altura_media = camera_get_view_height(view_camera[0])/2

instance_create_layer(camera_get_view_width(view_camera[0])/2, _altura_media-175,"Instances",obj_botao_nivel1);
instance_create_layer(camera_get_view_width(view_camera[0])/2, _altura_media,"Instances",obj_botao_nivel2);
instance_create_layer(camera_get_view_width(view_camera[0])/2, _altura_media+175,"Instances",obj_botao_nivel3);

if (audio_is_playing(snd_em_jogo) ) {
	if audio_is_playing(snd_menu){
		audio_pause_all();
	}
    audio_play_sound(snd_menu, 5, true);
    audio_pause_sound(snd_em_jogo);

}

