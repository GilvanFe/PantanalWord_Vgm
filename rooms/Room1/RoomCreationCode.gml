instance_create_layer(camera_get_view_width(view_camera[0])/2,895,"Instances",obj_botao_iniciar);
instance_create_layer(camera_get_view_width(view_camera[0])/2,1005,"Instances",obj_botao_sair);

audio_play_sound(snd_menu,10,true);

if audio_is_playing(snd_menu){
	audio_pause_all()
	audio_play_sound(snd_menu,5,true);
}
