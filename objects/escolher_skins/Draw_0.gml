function DesenhaSkin(SkinEscolhida,skins_struct,escala_x, escala_x_outside) {
    if (SkinEscolhida != previous_skin) {
        fade_alpha += fade_step; // Aumenta a opacidade de transição
        if (fade_alpha > 1) fade_alpha = 1; // Garante que a opacidade não ultrapasse 1
    }

    // Define a posição e a escala da skin
    var pos_x = 272; // Posição X para desenhar a skin
    var pos_y = 192; // Posição Y para desenhar a skin
 // Escala da skin

    // Verifica se a skin escolhida está desbloqueada
    if (skins_struct[SkinEscolhida].desbloqueada) {
        // Desenha a skin normal se estiver desbloqueada
        draw_sprite_ext(skins_struct[SkinEscolhida].skin, image_index, pos_x, pos_y, escala_x, escala_x, 0, c_white, fade_alpha);
    } else {
        // Desenha uma silhueta preta para skins bloqueadas
        draw_set_color(c_black); // Define a cor preta para a silhueta
        draw_sprite(skins_struct[SkinEscolhida].skin, image_index, pos_x, pos_y); // Desenha a skin
        draw_set_alpha(0.5); // Define a transparência da silhueta
        draw_sprite_ext(skins_struct[SkinEscolhida].skin, image_index, pos_x, pos_y, escala_x, escala_x, 0, c_black, 1); // Desenha a silhueta em preto
        draw_set_alpha(1); // Restaura a transparência padrão
    }

    // Desenha a skin anterior, se existir e estiver desbloqueada
    if (previous_skin != -1) {
        if (skins_struct[previous_skin].desbloqueada) {
            // Desenha a skin anterior se estiver desbloqueada
            draw_sprite_ext(skins_struct[previous_skin].skin, image_index, pos_x, pos_y, escala_x, escala_x, 0, c_white, 1 - fade_alpha);
        } else {
            // Desenha a silhueta preta para a skin anterior se estiver bloqueada
            draw_set_color(c_black); // Define a cor preta para a silhueta
            draw_sprite(skins_struct[previous_skin].skin, image_index, pos_x, pos_y); // Desenha a skin anterior
            draw_set_alpha(0.5); // Define a transparência da silhueta
            draw_sprite_ext(skins_struct[previous_skin].skin, image_index, pos_x, pos_y, escala_x, escala_x, 0, c_black, 1); // Desenha a silhueta em preto
            draw_set_alpha(1); // Restaura a transparência padrão
        }
    }

    // Define a escala externa e deslocamento para as skins laterais
; // Escala das skins laterais
    var deslocamento = 120; // Distância entre as skins

    // Desenha a skin à esquerda, se desbloqueada
    if (SkinEscolhida > 0) { // Verifica se existe uma skin à esquerda
        if (skins_struct[SkinEscolhida - 1].desbloqueada) {
            var pos_skin_left = pos_x - deslocamento; // Define a posição da skin à esquerda
            draw_sprite_ext(skins_struct[SkinEscolhida - 1].skin, image_index, pos_skin_left, pos_y, escala_x_outside, escala_x_outside, 0, c_white, fade_alpha); // Desenha a skin à esquerda
        } else {
            // Desenha a silhueta preta para a skin à esquerda se estiver bloqueada
            draw_set_color(c_black); // Define a cor preta para a silhueta
            draw_sprite(skins_struct[SkinEscolhida - 1].skin, image_index, pos_x - deslocamento, pos_y); // Desenha a skin
            draw_set_alpha(0.5); // Define a transparência da silhueta
            draw_sprite_ext(skins_struct[SkinEscolhida - 1].skin, image_index, pos_x - deslocamento, pos_y, escala_x_outside, escala_x_outside, 0, c_black, 1); // Desenha a silhueta em preto
            draw_set_alpha(1); // Restaura a transparência padrão
        }
    }

    // Desenha a skin à direita, se desbloqueada
    if (SkinEscolhida < array_length(skins_struct) - 1) { // Verifica se existe uma skin à direita
        if (skins_struct[SkinEscolhida + 1].desbloqueada) {
            var pos_skin_right = pos_x + deslocamento; // Define a posição da skin à direita
            draw_sprite_ext(skins_struct[SkinEscolhida + 1].skin, image_index, pos_skin_right, pos_y, escala_x_outside, escala_x_outside, 0, c_white, fade_alpha); // Desenha a skin à direita
        } else {
            // Desenha a silhueta preta para a skin à direita se estiver bloqueada
            draw_set_color(c_black); // Define a cor preta para a silhueta
            draw_sprite(skins_struct[SkinEscolhida + 1].skin, image_index, pos_x + deslocamento, pos_y); // Desenha a skin
            draw_set_alpha(0.5); // Define a transparência da silhueta
            draw_sprite_ext(skins_struct[SkinEscolhida + 1].skin, image_index, pos_x + deslocamento, pos_y, escala_x_outside, escala_x_outside, 0, c_black, 1); // Desenha a silhueta em preto
            draw_set_alpha(1); // Restaura a transparência padrão
        }
    }

    // Atualiza a skin anterior se a transição estiver completa
    if (fade_alpha >= 1) {
        previous_skin = SkinEscolhida; // Atualiza a skin anterior
        escolher_skins.mudando_skin = false; // Indica que não está mais mudando a skin
    }

    // Calcula a largura e altura do sprite atual
    var largura_sprite = sprite_get_width(skins_struct[SkinEscolhida].skin) * escala_x; // Largura da skin atual
    var altura_sprite = sprite_get_height(skins_struct[SkinEscolhida].skin) * escala_x; // Altura da skin atual

    // Adiciona textos de preço e sorteio diretamente aqui
    var text_offset = -100; // Distância do texto em relação à skin
    var text_scale = 2; // Fator de escala para aumentar o tamanho do texto
    var text_color = c_white;
    draw_set_font(global.Fonte); // Define a fonte do texto
    var texto = ""; // Variável para armazenar o texto a ser desenhado

    // Recupera preço e sorteio
    var preco = skins_struct[SkinEscolhida].preco;
    var sorteio = skins_struct[SkinEscolhida].sorteio;

    // Define a cor do texto antes de desenhar
    if (!skins_struct[SkinEscolhida].desbloqueada) {
        if (sorteio) {
            draw_set_color(c_yellow); // Cor do texto para sorteio
            texto = "SORTEIO"; // Texto de sorteio
        } else {
            draw_set_color(c_red); // Cor do texto para preço
            texto = string(preco); // Texto de preço
        }

        // Ajusta a posição para que o texto fique centralizado
        var texto_x = pos_x - (string_width(texto) * text_scale) / 2;
        var texto_y = pos_y + text_offset;

        // Desenha o texto transformado com escala
        draw_text_transformed(texto_x, texto_y, texto, text_scale, text_scale, 0); 
    }

    // Restaura a cor padrão
    draw_set_color(c_white);
}

if(global.Personagem == 0){
	DesenhaSkin(global.SkinEscolhida,global.skins_struct,5,3.8)
}
if(global.Personagem == 1){
	DesenhaSkin(global.SkinPato1Escolhida,global.Pato1skins_struct,5,3.8)
}
if(global.Personagem == 2){
	DesenhaSkin(global.SkinCanhaoEscolhida,global.Canhaoskins_struct,3,2)
}
