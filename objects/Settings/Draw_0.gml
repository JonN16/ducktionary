// DRAW
var pos_x = room_width / 2 - largura_barra / 2;
var pos_y = room_height / 2;

draw_set_color(c_white);
draw_rectangle(pos_x, pos_y - altura_barra / 2, pos_x + largura_barra, pos_y + altura_barra / 2, false);

// Desenha a barra de progresso vermelha, limitada pela largura da barra
if (variable_instance_exists(id, "progresso")) {
    var largura_barra_colorida = clamp(largura_barra * progresso, 0, largura_barra);
    draw_set_color(c_red);
    draw_rectangle(pos_x, pos_y - altura_barra / 2, pos_x + largura_barra_colorida, pos_y + altura_barra / 2, true);
}

bola_pos_x =  pos_x + largura_barra_colorida - 45
draw_sprite_part_ext(oPato2.sprite_index, 0, 0, -15, 32, 44, bola_pos_x, bola_pos_y, 3, 3, c_white, 1);

var largura_texto = "Width: " + string(round(global.largura_desejada));
var altura_texto = "Height: " + string(round(global.altura_desejada));

var texto_pos_x = pos_x + largura_barra / 2;
var texto_pos_y = pos_y + altura_barra / 2 + 10;

var scale_x = 3;
var scale_y = 3;

draw_set_color(c_white);
draw_set_font(global.Fonte);

draw_set_color(c_red);
draw_text_transformed(texto_pos_x - 30, texto_pos_y - 85, "TELA", scale_x, scale_y, 0);
draw_set_color(c_white);
draw_text_transformed(texto_pos_x, texto_pos_y, largura_texto, scale_x, scale_y, 0);
draw_text_transformed(texto_pos_x, texto_pos_y + 20 * scale_y, altura_texto, scale_x, scale_y, 0);


// Desenha a barra de volume
draw_set_color(c_white); // Cor da barra
draw_rectangle(volume_pos_x, volume_pos_y - altura_barra / 2, volume_pos_x + largura_barra, volume_pos_y + altura_barra / 2, false); // Desenha a barra

// Desenha o nível do volume como um retângulo preenchido
draw_set_color(c_red); // Cor do nível de volume
draw_rectangle(volume_pos_x, volume_pos_y - altura_barra / 2, volume_pos_x + largura_barra * global.volume_desejado, volume_pos_y + altura_barra / 2, true); // Desenha o nível do volume

// Desenha o oPato2 representando o nível de volume
var pato_pos_x = volume_pos_x + largura_barra * global.volume_desejado - 40; // Ajusta a posição horizontal do pato
var pato_pos_y = room_height / 2 - 110; /// Posição vertical do pato
draw_sprite_part_ext(oPato2.sprite_index, 0, 0, -15, 32, 44, pato_pos_x, pato_pos_y, 3, 3, c_white, 1); // Desenha o oPato2

// Exibe o valor do volume em texto
var volume_texto = "Volume: " + string(round(global.volume_desejado * 100)) + "%";
draw_set_color(c_white);
draw_set_font(global.Fonte); // Define a fonte

// Posiciona o texto no centro da barra
var texto_pos_x = volume_pos_x + largura_barra / 2;
var texto_pos_y = volume_pos_y + altura_barra / 2 + 10; // Ajusta a posição vertical

// Define a escala do texto
var scale_x = 3; // Escala horizontal
var scale_y = 3; // Escala vertical

// Aplica a transformação para aumentar a escala e desenha o texto
draw_set_color(c_red);
draw_text_transformed(texto_pos_x - 30, texto_pos_y - 85, "VOLUME", scale_x, scale_y, 0); // Desenha "VOLUME" com transformação
draw_set_color(c_white);
draw_text_transformed(texto_pos_x, texto_pos_y, volume_texto, scale_x, scale_y, 0); // Desenha o volume com transformação
