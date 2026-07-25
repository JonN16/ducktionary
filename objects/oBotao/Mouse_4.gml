comecar_contagem = true
audio_play_sound(vDinheiroMaquina, 5, true);
if(global.volume_desejado <= 0){
		audio_sound_gain(vDinheiroMaquina, global.volume_desejado + 0, 0);}
		else{
		audio_sound_gain(vDinheiroMaquina, global.volume_desejado + 0.23, 0)
		}
