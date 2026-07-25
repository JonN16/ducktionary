depth = -1
randomize();

// Inicializa a lista de skins desbloqueadas se não existir
if (!variable_global_exists("skins_desbloqueadas")) {
    global.skins_desbloqueadas = []; // Cria um array vazio para skins desbloqueadas
}
// Função para rodar a roleta
function rodar_roleta() {
    var skins_disponiveis = []; // Array para skins disponíveis
    
    // Coleta skins que estão em sorteio e bloqueadas
    for (var i = 0; i < array_length(global.skins_struct); i++) {
        if (global.skins_struct[i].sorteio && !global.skins_struct[i].desbloqueada) {
            array_push(skins_disponiveis, i); // Adiciona o índice ao array
        }
    }

    // Verifica se há skins disponíveis para o sorteio
    if (array_length(skins_disponiveis) > 0) {
        // Sorteia um índice aleatório entre as skins disponíveis
        var indice_sorteado = skins_disponiveis[irandom(array_length(skins_disponiveis) - 1)];
        
        // Libera a skin sorteada
        global.skins_struct[indice_sorteado].desbloqueada = true; // Marca a skin como desbloqueada
        array_push(global.skins_desbloqueadas, indice_sorteado); // Adiciona o índice à lista de skins desbloqueadas
        global.skinaAparece = global.skins_struct[indice_sorteado].skin; // Atualiza a skin atual

        // Define que o pato deve aparecer
        global.pato_aparecer = true;
        global.pato_timer = 0; // Reseta o timer
    }
}

// Variáveis globais relacionadas ao pato
global.pato_aparecer = false; // Controla se o pato deve aparecer
global.pato_tamanho = 15; // Escala do pato quando aparecer
global.pato_opacidade = 1; // Opacidade do pato
global.pato_timer = 0; // Timer para controle do desaparecimento

// Define a skin escolhida globalmente
global.escolhida = global.SkinAtual; 

// Verifica as skins desbloqueadas ao entrar na tela de roleta
for (var i = 0; i < array_length(global.skins_desbloqueadas); i++) {
    var skin_idx = global.skins_desbloqueadas[i];
    global.skins_struct[skin_idx].desbloqueada = true; // Marca a skin como desbloqueada
}
