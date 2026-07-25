function draw_perguntas_respostas(perguntas_struct) {
    var x1 = 180; // Posição X para a primeira coluna
    var x2 = 800; // Posição X para a segunda coluna
    var y_inicial = 130; // Posição Y inicial para a primeira linha
    var espacamento_y = 100; // Espaçamento entre cada linha
    var max_linhas = 6; // Número máximo de linhas (ajustado para 8)

    draw_set_color(c_black); // Define a cor do texto para a pergunta
    
    // Percorrer cada pergunta na estrutura
    for (var i = 0; i < array_length(perguntas_struct); i++) {
        var pergunta_atual = perguntas_struct[i].pergunta; 
        var resposta_atual = perguntas_struct[i].resposta; 
        var traducao_pergunta = perguntas_struct[i].traducao;
        
        // Verifica se a pergunta já foi descoberta
        if (!perguntas_struct[i].descoberta) {
            pergunta_atual = string_repeat("_", string_length(pergunta_atual)); // Substitui a pergunta por sublinhados
            resposta_atual = string_repeat("_", string_length(resposta_atual));
			traducao_pergunta = string_repeat("_", string_length(traducao_pergunta));
        }
        
        // Calcular a posição X e Y da pergunta atual
        var coluna = i mod 2; // 0 para primeira coluna, 1 para segunda
        var linha = i div 2;  // Define a linha atual

        if (linha >= max_linhas) break; // Limita a 8 linhas de exibição
        
        x = coluna == 0 ? x1 : x2;
        y = y_inicial + (linha * espacamento_y);
        
        // Desenhar a pergunta
        draw_text(x, y,"Pergunta: "+ pergunta_atual);
        
        // Definir a cor do texto para a resposta
        draw_set_color(c_red);
        // Desenhar a resposta abaixo da pergunta
        draw_text(x, y + 30, "Resposta: " + resposta_atual);
        
        // Definir a cor do texto para a tradução
        draw_set_color(c_black); 
        // Desenhar a tradução da pergunta abaixo da resposta
        draw_text(x, y + 60, "Traducao: " + traducao_pergunta);
        
        // Voltar a cor do texto para o padrão (preto) para a próxima pergunta
        draw_set_color(c_black);
    }
}
