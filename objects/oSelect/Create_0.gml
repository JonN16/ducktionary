global.botaoSkinApertado = false

function BotaoSelectFunciona(SkinAtual, SkinEscolhida,skins_struct) {
    if (SkinAtual != SkinEscolhida) {
        sprite_index = sSelect;
    } else {
        sprite_index = sSelect2;
    }

    if (!skins_struct[SkinEscolhida].desbloqueada) {
        sprite_index = sSelect2;
    }
	else{sprite_index = sSelect}
    if (skins_struct[SkinEscolhida].preco > 0 and !skins_struct[SkinEscolhida].desbloqueada) {

        if (!skins_struct[SkinEscolhida].sorteio) {
            sprite_index = sComprar;
        }
    }
}