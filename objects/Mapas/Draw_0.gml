if(room == Room1_4) {
    var pos_x = 750;
    var pos_y = 320;

    // Verifica se global.MapaAtual está definido corretamente
    if (is_undefined(global.MapaAtual)) {
        global.MapaAtual = 0; // Define o primeiro mapa como padrão
    }

    // Atualiza a escala e a posição durante a transição
    if (global.transicao) {
        global.escala_atual += (global.escala_destino - global.escala_atual) * 0.1; // Suaviza a escala
        global.pos_offset += (global.MapaAtual > 0 ? -0 : 0); // Move os mapas para fora

        // Verifica se a transição terminou
        if (abs(global.escala_destino - global.escala_atual) < 0.01) {
            global.escala_atual = global.escala_destino; // Define a escala final
            global.transicao = false; // Finaliza a transição
            trocar = true; // Reseta comecar ao final da transição
            global.pos_offset = 0; // Reseta o deslocamento
        }
    }

    // Desenha o fundo escuro para o efeito de desvanecimento
    draw_set_color(c_black);
    draw_set_alpha(global.fade_alpha / 255);
    draw_rectangle(0, 0, room_width, room_height, true);
    draw_set_alpha(1); // Reseta a opacidade para o desenho seguinte

    // Desenho do mapa principal (grande)
    desenha_mapa(pos_x + global.pos_offset, pos_y, global.escala_atual, global.MapaAtual);

    // Desenho do mapa à esquerda (menor)
    if (global.MapaAtual > 0) {
        var pos_mapa_left = pos_x - 160 + global.pos_offset;
        desenha_mapa(pos_mapa_left, pos_y, global.escala_lateral, global.MapaAtual - 1);
    }

    // Desenho do mapa à direita (menor)
    if (global.MapaAtual < array_length(global.mapas) - 1) {
        var pos_mapa_right = pos_x + 300 + global.pos_offset;
        desenha_mapa(pos_mapa_right, pos_y, global.escala_lateral, global.MapaAtual + 1);
    }

    // Exibe mensagem se o mapa estiver bloqueado
    if (!global.mapas[global.MapaAtual].desbloqueada) {
        draw_set_color(c_red);
        draw_set_font(global.Fonte);
        var texto = "MAPA BLOQUEADO";
        var texto_x = pos_x - (string_width(texto) * 2) / 2;
        draw_text_transformed(texto_x, pos_y - 100, texto, 2, 2, 0);
    }
}