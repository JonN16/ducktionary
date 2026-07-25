if(global.skins_struct[global.SkinEscolhida].desbloqueada and !global.pato_aparecer and global.funcionaBotao){
	global.funcionaBotao = false
	if(global.Personagem == 0){
	global.botaoSkinApertado = true
	oPorta.sprite_index = sPortaMeio
	sprite_index = sSelect2}

	if(global.Personagem == 1){
		global.SkinPato1Atual = global.SkinPato1Escolhida
		oPato1.sprite_index = global.Pato1skins_struct[global.SkinPato1Atual].skin
	}
	
	if(global.Personagem == 2){
		global.SkinCanhaoAtual = global.SkinCanhaoEscolhida
		oCanhao.sprite_index = global.Canhaoskins_struct[global.SkinCanhaoAtual].skin
	}
}

if (!global.skins_struct[global.SkinEscolhida].sorteio and !global.skins_struct[global.SkinEscolhida].desbloqueada) {
        if (global.dinheiro >= global.skins_struct[global.SkinEscolhida].preco) {
            global.dinheiro -= global.skins_struct[global.SkinEscolhida].preco; 
            global.skins_struct[global.SkinEscolhida].desbloqueada = true; 

            if (!variable_global_exists("skins_desbloqueadas")) {
                global.skins_desbloqueadas = [];
            }
            array_push(global.skins_desbloqueadas, global.SkinEscolhida);
            
            show_message("Skin comprada com sucesso!");
        } else {
            show_message("Você não tem moedas suficientes!");
        }
    } 