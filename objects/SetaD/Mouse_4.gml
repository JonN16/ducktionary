if(room == Room1_2){
    if (global.SkinEscolhida < array_length(global.skins_struct) - 1 && !escolher_skins.mudando_skin and global.funcionaBotao and global.Personagem == 0) {
        // Salvar a skin anterior
        escolher_skins.previous_skin = global.SkinEscolhida;

        // Se a próxima skin estiver desbloqueada e a skin atual também estiver desbloqueada
        if (global.skins_struct[global.SkinEscolhida].desbloqueada && global.skins_struct[global.SkinEscolhida + 1].desbloqueada) {
            global.SkinEscolhida += 1;  // Mudar para a próxima skin
            escolher_skins.fade_alpha = 0;  // Reiniciar a alpha de fade
            escolher_skins.mudando_skin = true;  // Indicar que a mudança de skin está em andamento
        } else {
            // Mudar para a próxima skin sem animação se a atual estiver desbloqueada e a próxima bloqueada
            global.SkinEscolhida += 1; // Mudar para a próxima skin
            escolher_skins.fade_alpha = 1; // Definir alpha como 1 (totalmente visível)
        }
    }

	if (global.SkinPato1Escolhida < array_length(global.Pato1skins_struct) - 1 && !escolher_skins.mudando_skin && global.funcionaBotao && global.Personagem == 1) {
	    // Salvar a skin anterior
	    escolher_skins.previous_skin = global.SkinPato1Escolhida;

	    // Se a próxima skin estiver desbloqueada e a skin atual também estiver desbloqueada
	    if (global.Pato1skins_struct[global.SkinPato1Escolhida].desbloqueada && global.Pato1skins_struct[global.SkinPato1Escolhida + 1].desbloqueada) {
	        global.SkinPato1Escolhida += 1;  // Mudar para a próxima skin
	        escolher_skins.fade_alpha = 0;  // Reiniciar a alpha de fade
	        escolher_skins.mudando_skin = true;  // Indicar que a mudança de skin está em andamento
	    } else {
	        // Mudar para a próxima skin sem animação se a atual estiver desbloqueada e a próxima bloqueada
	        global.SkinPato1Escolhida += 1; // Mudar para a próxima skin
	        escolher_skins.fade_alpha = 1; // Definir alpha como 1 (totalmente visível)
	    }
	}
	
	if (global.SkinCanhaoEscolhida < array_length(global.Canhaoskins_struct) - 1 && !escolher_skins.mudando_skin && global.funcionaBotao && global.Personagem == 2) {
	    // Salvar a skin anterior
	    escolher_skins.previous_skin = global.SkinCanhaoEscolhida;

	    // Se a próxima skin estiver desbloqueada e a skin atual também estiver desbloqueada
	    if (global.Canhaoskins_struct[global.SkinCanhaoEscolhida].desbloqueada && global.Canhaoskins_struct[global.SkinCanhaoEscolhida + 1].desbloqueada) {
	        global.SkinCanhaoEscolhida += 1;  // Mudar para a próxima skin
	        escolher_skins.fade_alpha = 0;  // Reiniciar a alpha de fade
	        escolher_skins.mudando_skin = true;  // Indicar que a mudança de skin está em andamento
	    } else {
	        // Mudar para a próxima skin sem animação se a atual estiver desbloqueada e a próxima bloqueada
	        global.SkinCanhaoEscolhida += 1; // Mudar para a próxima skin
	        escolher_skins.fade_alpha = 1; // Definir alpha como 1 (totalmente visível)
	    }
	}

}

if (room == Room1_4) {
    if (global.MapaAtual < array_length(global.mapas) - 1 && !global.escolher_mapas_mudando) {
        botao = true;
        if (!global.transicao) { // Verifica se não está em transição
            global.transicao = true; // Ativa a animação de transição
            global.escala_destino = global.escala_lateral; // Define a escala de destino
        }
    }
}


	
	
