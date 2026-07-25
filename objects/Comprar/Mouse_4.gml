if (!global.skins_struct[global.SkinEscolhida].desbloqueada and !global.skins_struct[global.SkinEscolhida].sorteio) {
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
} else {
    show_message("Esta skin já está desbloqueada!");
}
