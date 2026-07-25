if(animacao_terminou){
sprite_index = sBotao
Aletorio.rodar_roleta()
animacao_terminou = false}

if(comecar_contagem){
	
	contagem += 0.2
	sprite_index = sBotaoApertado
	if(contagem = 12){
		audio_stop_sound(vDinheiroMaquina);
		audio_play_sound(vMaquinaRoleta, 5, true);
		if(global.volume_desejado <= 0){
		audio_sound_gain(vMaquinaRoleta, global.volume_desejado + 0, 0);}
		else{
		audio_sound_gain(vMaquinaRoleta, global.volume_desejado + 0.23, 0)
	}
}
}

if(contagem == 50){
	animacao_terminou = true
	comecar_contagem = false
	contagem = 0
	audio_stop_sound(vMaquinaRoleta);
}