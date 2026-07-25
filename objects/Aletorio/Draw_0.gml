if (global.pato_aparecer) {
    depth = -1;
    var pos_x = room_width / 2;
    var pos_y = room_height / 2;

    global.pato_timer += 0.5;

    if (global.pato_timer < 30) {
        global.pato_tamanho = lerp(1, 10, global.pato_timer / 30);
        global.pato_opacidade = 1;
    } else if (global.pato_timer < 60) {
        global.pato_opacidade = lerp(1, 0, (global.pato_timer - 30) / 30);
    } else {
        global.pato_aparecer = false;
    }

    var cor_pato;
    if (global.pato_timer < 25) {
        cor_pato = c_black;
    } else {
        cor_pato = c_white;
    }

    draw_sprite_ext(global.skinaAparece, image_index, pos_x, pos_y, global.pato_tamanho, global.pato_tamanho, 0, cor_pato, global.pato_opacidade);
}

depth = -1;

var colunas = 3;
var fileiras = 4;
var espacamento_x = 80;
var espacamento_y = 84;
var posicao_inicial_x = 1040;
var posicao_inicial_y = 352;
var escala = 1.75;

var skins_aleatorias = ds_list_create();

for (var i = 0; i < array_length(global.skins_struct); i++) {
    if (global.skins_struct[i].sorteio && !global.skins_struct[i].desbloqueada) {
        ds_list_add(skins_aleatorias, i);
    }
}

var total_skins = min(ds_list_size(skins_aleatorias), colunas * fileiras);

for (var i = 0; i < fileiras; i++) {
    for (var j = 0; j < colunas; j++) {
        var skin_pos = i * colunas + j;

        if (skin_pos < total_skins) {
            var skin_index = ds_list_find_value(skins_aleatorias, skin_pos);
            var pos_x = posicao_inicial_x + j * espacamento_x;
            var pos_y = posicao_inicial_y + i * espacamento_y;

            draw_set_color(c_black);
            draw_set_alpha(0.5);
            draw_sprite_ext(global.skins_struct[skin_index].skin, image_index, pos_x, pos_y, escala, escala, 0, c_black, 1);
            draw_set_alpha(1);
        }
    }
}

ds_list_destroy(skins_aleatorias);

draw_sprite_ext(sVidro, image_index, 1010, 328, 0.855, 0.855, 0, c_white, 1);
