// Inicialização das variáveis globais e mapas
global.mapas = [];
global.mapas[0] = { mapa: sFundo, desbloqueada: true };
global.mapas[1] = { mapa: sFundoBatman, desbloqueada: true };
global.mapas[2] = { mapa: sFundoEspaco, desbloqueada: true };
global.mapas[3] = { mapa: sFundoColorido, desbloqueada: true };

global.MapaAtual = 0; // Mapa inicial
global.escolher_mapas_mudando = false; // Estado da animação de transição
previous_mapa = -1; // Mapa anterior
trocar = false

global.escala_atual = 0.2; // Escala inicial do mapa central
global.escala_lateral = 0.09; // Escala inicial dos mapas laterais
global.escala_destino = 0.2;
global.fade_alpha = 0
global.pos_offset = 0; // Deslocamento para animação// Escala do mapa de destino


// Função para desenhar mapa com opacidade se necessário
function desenha_mapa(pos, pos_y, escala, indice) {
    var desbloqueada = global.mapas[indice].desbloqueada;
    if (desbloqueada) {
        draw_sprite_ext(global.mapas[indice].mapa, image_index, pos, pos_y, escala, escala, 0, c_white, 1);
    } else {
        draw_set_alpha(0.5);
        draw_sprite_ext(global.mapas[indice].mapa, image_index, pos, pos_y, escala, escala, 0, c_black, 1);
        draw_set_alpha(1); // Restaura a transparência
    }
}


// Função para desenhar bordas ao redor do sprite do mapa
function desenha_bordas(pos, largura, altura, offset, pos_y) {
    draw_set_color(c_black);
    draw_line(pos - largura / 2 - offset, pos_y - altura / 2 - offset, pos + largura / 2 + offset, pos_y - altura / 2 - offset); // Borda superior
    draw_line(pos - largura / 2 - offset, pos_y + altura / 2 + offset, pos + largura / 2 + offset, pos_y + altura / 2 + offset); // Borda inferior
    draw_line(pos - largura / 2 - offset, pos_y - altura / 2 - offset, pos - largura / 2 - offset, pos_y + altura / 2 + offset); // Borda esquerda
    draw_line(pos + largura / 2 + offset, pos_y - altura / 2 - offset, pos + largura / 2 + offset, pos_y + altura / 2 + offset); // Borda direita
}