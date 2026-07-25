image_xscale*=regulax
image_yscale*=regulax
if (global.comecou) {
    if (!Configurador.PatoAndando) {

        // Se a tecla espaço for pressionada e se o canhão está carregado 
        if (keyboard_check_pressed(vk_space) && Configurador.carregado) {
			audio_play_sound(vCanhao, 1, false);
			audio_sound_pitch(vCanhao, 6); 
			audio_sound_gain(vCanhao, global.volume_desejado * 1.5, 0)
			audio_sound_gain(vCanhao, 0, 0200);
			audio_play_sound(vPato2_Voando, 1, false);
			audio_sound_pitch(vPato2_Voando, 1.3); 
			audio_sound_gain(vPato2_Voando, global.volume_desejado * 15, 0)
			audio_sound_gain(vPato2_Voando, 0, 0950);
			audio_play_sound(vVento, 1, false);
			audio_sound_pitch(vVento, 3.2); 
			audio_sound_gain(vVento, global.volume_desejado * 6, 0)
			audio_sound_gain(vVento, 0, 0950);
           
            gravity = Configurador.num;

            // Afirma que o Pato não está mais ao lado do canhão
            Configurador.VerificaMunicao = false;

            // O Pato está em movimento 
            patoMovimento = true;

            // Afirma que agora o canhão não está mais carregado 
            Configurador.carregado = false;
        }

        // Se o Pato estiver se movimentando (no ar)
        if (patoMovimento) {
            // Se o pato sair da tela 
            if (x > 1400) {
                // Não terá mais Pato, pois ele será destruído 
                Configurador.QuantidadePato = 0;
                // O Pato não estará mais se movimentando, pois ele será destruído 
                patoMovimento = false;
                audio_stop_sound(vPato2_Voando);
				audio_stop_sound(vVento);
                instance_destroy(); 
            }
            // Se o pato ainda estiver na tela
            else {
                // Se move 20 pixels para a direita a cada frame
                x += (Configurador.pos_nuvem_x - Configurador.limite) / Configurador.quantidadePonto + Configurador.corrige;
                X += (Configurador.pos_nuvem_x - Configurador.limite) / Configurador.quantidadePonto + Configurador.corrige;
                image_angle = -90 + (0 + 90) * (1 - power(2.71828, -(Configurador.variacaoX * (1.2 * X / Configurador.modificador + 1 * Configurador.num))));
                tempo++;
            }
        }
    }

    // Se o Pato existir (QuantidadePato == true) e estiver andando (PatoAndando == true)
    if (Configurador.QuantidadePato == 1 && Configurador.PatoAndando) {
        // Traz o Pato para frente do canhão 
        depth = -4;

        // Se o Pato ainda não chegou no Pato Atirador 
        if (x <= 300 && y >= 230) {
            oPato2.sprite_index = global.skins_struct[Skins.escolhida].corre;
			 if (!audio_is_playing(vPatoAndando)) {
			 audio_play_sound(vPatoAndando, 1, true); 
				 }
			audio_sound_pitch(vPatoAndando, 2); 
			audio_sound_gain(vPatoAndando, global.volume_desejado * 18, 0);
            // Movimenta o Pato para a direita
            x += 2.1;
            // Movimenta o Pato para cima 
            y -= 0.8;
        }
        // Se o Pato já chegou no Pato Atirador 
        else {
            // Se ele não chegou ao lado do canhão 
            if (x <= 415) {
                // Movimenta o Pato para a direita
                x += 2.1;
            }
            // Se ele já chegou no canhão 
            else {
				Configurador.somParado = true
                // Muda o sprite do Pato para ele parado 
                sprite_index = global.skins_struct[Skins.escolhida].skin;
				audio_stop_sound(vPatoAndando)

                // Afirma que ele parou de andar
                Configurador.PatoAndando = false;

                // Afirma que o Pato está ao lado do canhão 
                Configurador.VerificaMunicao = true;
            }
        }
    }
}
else {
   if (room == Room1_2) {
    if (global.botaoSkinApertado) {
        if (x < 585) {
            oPato2.sprite_index = global.skins_struct[global.SkinAtual].corre;
            x += 2.1;
        }
        if (x >= 585 && x < 700) {
            oPorta.sprite_index = sPortaAbrindo;
            x += 1.9;
            y -= 0.45;
            regulax -= 0.00008;

            // Ajusta a escala do pato
            image_xscale *= regulax;
            image_yscale *= regulax;

            // Limita a escala a 3.375
            if (image_xscale > 3.375) image_xscale = 3.375;
            if (image_yscale > 3.675) image_yscale = 3.675;
        }
        if (x >= 700 && x < 840) {
            image_alpha -= 0.035;
            x += 1.9;
            y -= 0.45;
            regulax -= 0.00008;

            // Ajusta a escala do pato
            image_xscale *= regulax;
            image_yscale *= regulax;

            // Limita a escala a 3.375
            if (image_xscale > 3.375) image_xscale = 3.375;
            if (image_yscale > 3.675) image_yscale = 3.675;
        }
        if (x >= 840) {
            global.botaoSkinApertado = false;
        }
    } else {
        image_xscale = -3.375;
        if (x >= 424) {
            global.SkinAtual = global.SkinEscolhida;
            oPato2.sprite_index = global.skins_struct[global.SkinAtual].corre;
            if (x >= 700) {
                if (regulax < 1) regulax += 0.01;
                image_alpha += 0.035;
                x -= 2.1;
                y += 0.45;

                // Ajusta a escala do pato
                image_xscale *= regulax;
                image_yscale *= regulax;

                // Limita a escala a 3.375
                if (image_xscale > 3.375) image_xscale = 3.375;
                if (image_yscale > 3.675) image_yscale = 3.675;
            }
            if (x >= 585 && x < 700) {
                if (regulax < 1) regulax += 0.01;
				if (image_xscale > 3.375) image_xscale = 3.375;
				if (image_yscale > 3.675) image_yscale = 3.675;
                if (image_alpha < 1) image_alpha += 0.035;
                x -= 1.9;
                if (y < 687) y += 0.5;

                // Limita a escala a 3.375
                if (image_xscale > 3.375) image_xscale = 3.375;
                if (image_yscale > 3.675) image_yscale = 3.675;
            }
            if (x >= 595 && x < 600) {
                oPorta.sprite_index = sPortaMeio;
				if (image_xscale > 3.375) image_xscale = 3.375;
				if (image_yscale > 3.675) image_yscale = 3.675;
            }
            if (x < 585 && x >= 424) {
                oPorta.sprite_index = sPortaFechada;
                oPato2.sprite_index = global.skins_struct[global.SkinAtual].corre;
                x -= 2.1;
				if (image_xscale > 3.375) image_xscale = 3.375;
				if (image_yscale > 3.675) image_yscale = 3.675;
            }
        } else {
            regulax = 1;
            image_xscale = 3.375;
            oPato2.sprite_index = global.skins_struct[global.SkinAtual].skin;
            global.funcionaBotao = true;
			if (image_xscale > 3.375) image_xscale = 3.375;
            if (image_yscale > 3.675) image_yscale = 3.675;
        }
    }
} else {
    sprite_index = global.skins_struct[Skins.escolhida].skin; // Usando o sprite parado
}
}