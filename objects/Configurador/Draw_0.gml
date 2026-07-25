	if(global.comecar){
	if (!instance_exists(oNuvemGrande) or oNuvemGrande.y < 106) {
	draw_rectangle(1230, 60, 1080, 140, true);
	draw_sprite_ext(pao, 0, 1118, 89, 1.2, 1.2, 0, c_white, 1);
	draw_set_font(global.Fonte);
	draw_text_transformed(1170, 84, string(pontos), 3.5, 3.5, 0); 
	}
	}

if (instance_exists(oNuvemGrande) && oNuvemGrande.y > 382.5) {
    depth = -6;

    draw_set_font(global.Fonte);
    draw_set_color(c_black); 

    draw_text_transformed(300, 300, "SCORE:", 5, 5, 0);
	draw_set_color(c_green);
	draw_text_transformed(550, 300, string(printPontos),5, 5, 0);
	draw_sprite_ext(opao.sprite_index, 0, cordenadaPao,315, 1, 1, 0, c_white, 1);
	draw_set_color(c_red);
    draw_text_transformed(320, 100, "GAME OVER", 10, 10, 0);
	if(printPontos < pontos){printPontos++}
	soma = string_length(printPontos)-1
	cordenadaPao = 620 + soma*42.5
	
}


if (global.comecar and global.funcionaBotao and !apagaTexto) {
	depth = -6;
    // Variáveis para o texto da pergunta
    texto_pergunta = frases.perguntas_struct[frases.indice_atual].pergunta;
    tamanho_texto_pergunta = string_length(texto_pergunta);
    escala_texto_pergunta_x = (tamanho_texto_pergunta > 25) ? 2.8 : 3.5;
    escala_texto_pergunta_y = (tamanho_texto_pergunta > 25) ? 3 : 3.5;

    // Define a fonte e a cor antes de desenhar o texto da pergunta
    draw_set_font(global.Fonte); // Aqui você usa a fonte global
    draw_set_color(c_black);
    // Desenha o texto da pergunta
    draw_text_transformed(322, 70, texto_pergunta, escala_texto_pergunta_x, escala_texto_pergunta_y, 0);

    // Variáveis para desenhar nuvens

    cor_nuvem = c_white;

    if (sorteio = true) {
        indice_resposta_correta = irandom(num_nuvens - 1);
        sorteio = false;
    }

    // Array para armazenar as respostas
    respostas = frases.perguntas_struct[frases.indice_atual].opcoes
	
var lista_tamanho = array_length(global.dicionario);

// Verifica se a variável global 'perguntas_descobertas' existe
if (!variable_global_exists("perguntas_descobertas")) {
    global.perguntas_descobertas = []; // Cria um array vazio para perguntas descobertas
}

// Itera sobre cada elemento de 'global.dicionario'
for (var i = 0; i < lista_tamanho; i++) {
    // Verifica se a pergunta atual coincide com a do dicionário
    if (texto_pergunta == global.dicionario[i].pergunta) {
        // Exibe o valor atual de descoberta (para debug)
        // Define descoberta como true
        global.dicionario[i].descoberta = true;

        // Adiciona a pergunta descoberta à lista de perguntas descobertas
        array_push(global.perguntas_descobertas, global.dicionario[i].pergunta); 
        
        break; // Sai do loop após encontrar a pergunta correspondente
    }
}


    // Desenha as nuvens e verifica a colisão
    for (i = 0; i < num_nuvens; i++) {
        pos_nuvem_x = num2 + h;
        pos_nuvem_y = 280 + (i * 190);

		if (pos_nuvem_x <= 630 and !instance_exists(oNuvemGrande) or array_length(lista2) == array_length(frases.perguntas_struct)) {
			nuvenzona = instance_create_layer(728,-470,"Instances_1", oNuvemGrande )
			nuvenzona.image_xscale = 33.95238
			nuvenzona.image_yscale = 39.09523
			global.dinheiro += pontos
			Configurador.nuvemExiste = true
			Configurador.perdeu = true
			global.comecar = false
			instance_destroy(oPonto)
			global.jogadorPerdeu = true
			}




        // Coloca a resposta correta na nuvem correta
        if (i == indice_resposta_correta) {
            resposta_correta = frases.perguntas_struct[frases.indice_atual].resposta; 
            respostas[i] = resposta_correta; // A nuvem correta recebe a resposta certa
        } else {
            resposta_correta = ""; // Respostas vazias para as outras nuvens
        }
        
        // Verifica colisão com o pato
        if (Configurador.QuantidadePato == 1 and !instance_exists(oNuvemGrande)) {
            if (oPato2.x > (num2 + h) - 38 && oPato2.x < (num2 + h)) {
                if (oPato2.y < guarday + 70 && oPato2.y > guarday - 70) {
					array_push(lista2, frases.indice_atual)
                    instance_destroy(oPato2);
                    Configurador.QuantidadePato = 0;
                    pontos++;
					Configurador.spritepao = paoMexe
                    inicializar_jogo();
                    h += 123;
                    sorteio = true;
                }
            }
        }
    }

    // Desenha as respostas
    for (i = 0; i < num_nuvens; i++) {
        draw_set_color(c_black);
        draw_set_font(global.Fonte); // Aqui também usa a fonte global

        posicao = global.valores_aleatorios[i]
        pos_texto_nuvem_y = 215 + ((posicao - 1) * 190);

        tamanho_resposta = string_length(respostas[i]);
        escala_resposta_x = (tamanho_resposta >= 3) ? 2.5 : 3;
        escala_resposta_y = (tamanho_resposta >= 3) ? 2.5 : 3;

        // Desenha a resposta caractere por caractere
        for (k = 0; k < tamanho_resposta; k++) {
            caractere = string_char_at(respostas[i], k + 1);
            draw_text_transformed(num2 - 2 + h, pos_texto_nuvem_y + (k * 17.5), caractere, escala_resposta_x, escala_resposta_y, 0);
            if (i == indice_resposta_correta) {
                if (pos_texto_nuvem_y <= 374) { guarday = 280; }
                if (pos_texto_nuvem_y > 374 && pos_texto_nuvem_y <= 568) { guarday = 470; }
                if (pos_texto_nuvem_y > 568) { guarday = 660; }
            }
        }
    }
    h = h - variacao;
    Configurador.modificador = 30 + h * 0.03;
}





