if (room == Room1_1) {
    if (!audio_is_playing(vFundo_Jogo)) {
        audio_stop_sound(vFundo_configuracao); 
        audio_play_sound(vFundo_Jogo, 10, true);
        audio_sound_gain(vFundo_Jogo, global.volume_desejado, 0); // Usa o volume desejado
    } else {
        audio_sound_gain(vFundo_Jogo, global.volume_desejado, 0); // Atualiza o volume se a música já estiver tocando
    }
} else {
    audio_stop_sound(vFundo_Jogo);
    if (!audio_is_playing(vFundo_configuracao)) {
        audio_stop_sound(vFundo_Jogo); 
        audio_play_sound(vFundo_configuracao, 10, true);
        audio_sound_gain(vFundo_configuracao, global.volume_desejado, 0); // Usa o volume desejado
    } else {
        audio_sound_gain(vFundo_configuracao, global.volume_desejado, 0); // Atualiza o volume se a música de configuração já estiver tocando
    }
}