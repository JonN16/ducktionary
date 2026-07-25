// CREATE
// Desativa a tela cheia
window_set_fullscreen(false); 

global.Fonte = font_add_sprite_ext(Sprite25, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_+-*/=", true, 2);
// Definições iniciais

largura_barra = 250; // Largura da barra
altura_barra = 10; // Altura da barra
pos_mouse_inicial_x = mouse_x; // Posição inicial do mouse no eixo X
bola_pos_x = room_width / 2; // Posição X da bola inicial (centralizada)
bola_pos_y = room_height / 2 - 110; // Posição Y fixa da bola (centralizada)
largura_barra_colorida = 0
progresso = 0.7