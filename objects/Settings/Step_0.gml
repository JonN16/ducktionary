// STEP
// Define a posição da barra e centraliza a janela
window_center();
var largura_barra = 200; // Define a largura da barra de progresso
var altura_barra = 20; // Define a altura da barra de progresso
var pos_x = room_width / 2 - largura_barra / 2; // Posição horizontal da barra
var pos_y = room_height / 2; // Posição vertical da barra

var buffer = 10; // Ajuste este valor para aumentar a área de detecção

if (mouse_check_button(mb_left)) {
    // Verifica se o mouse está sobre a barra, incluindo a área de buffer
    if (mouse_y >= pos_y - altura_barra / 2 - buffer && mouse_y <= pos_y + altura_barra / 2 + buffer &&
        mouse_x >= pos_x - buffer && mouse_x <= pos_x + largura_barra + buffer) {
        
        // Calcula a posição relativa do mouse na barra
        progresso = (mouse_x - pos_x) / largura_barra;
        
        // Define a largura e altura proporcionais à posição do mouse na barra
        global.largura_desejada = lerp(720, 1920, progresso); 
        global.altura_desejada = lerp(480, 1080, progresso); 
        
        // Limita a largura e altura dentro dos valores permitidos
        global.largura_desejada = clamp(global.largura_desejada, 720, 1920); 
        global.altura_desejada = clamp(global.altura_desejada, 480, 1080); 
        
        // Atualiza a posição da bola no eixo X do mouse
        bola_pos_x = mouse_x - 45;
    }
    window_center();
}

if (mouse_check_button_released(mb_left)) {
    display_set_gui_size(global.largura_desejada, global.altura_desejada); // Atualiza a GUI
    window_set_size(global.largura_desejada, global.altura_desejada); // Atualiza o tamanho da janela
    window_center();

    if (global.largura_desejada >= 1920 || global.altura_desejada >= 1080) {
        window_set_fullscreen(true); // Ativa tela cheia se os limites forem ultrapassados
    } else {
        window_set_fullscreen(false); // Desativa tela cheia caso contrário
    }
    window_center();
}


// Posicionando a barra de volume
volume_pos_x = room_width / 2 - largura_barra / 2 + 400; 
volume_pos_y = room_height / 2 

// Buffer para detectar clique
buffer = 10; 

if (mouse_check_button(mb_left)) {
    if (mouse_y >= volume_pos_y - altura_barra / 2 - buffer && mouse_y <= volume_pos_y + altura_barra / 2 + buffer &&
        mouse_x >= volume_pos_x - buffer && mouse_x <= volume_pos_x + largura_barra + buffer) {
        
        var progressao_volume = (mouse_x - volume_pos_x) / largura_barra;
        
        global.volume_desejado = clamp(progressao_volume, 0, 1); 
        
    }
}


