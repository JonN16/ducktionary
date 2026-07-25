if(room = Room1_4){
if (trocar and SetaD.botao) {	
    global.MapaAtual += 1;
	if(global.mapas[global.MapaAtual].desbloqueada){// Avança para o próximo mapa
    oFundo.sprite_index = global.mapas[global.MapaAtual].mapa;}
    global.escala_destino = 0.2; // Define a escala de destino para o mapa escolhido
    global.escala_atual = 0.09; // Reseta a escala para a nova transição
    global.transicao = true; // Inicia a transição
    trocar = false;
    SetaD.botao = false;
}

if (trocar and SetaE.botao) { 
    global.MapaAtual -= 1;
	if(global.mapas[global.MapaAtual].desbloqueada){// Retrocede para o mapa anterior
    oFundo.sprite_index = global.mapas[global.MapaAtual].mapa;}
    global.escala_destino = 0.2; // Define a escala de destino para o mapa escolhido
    global.escala_atual = 0.09; // Reseta a escala para a nova transição
    global.transicao = true; // Inicia a transição
    trocar = false;
    SetaE.botao = false;
}
}