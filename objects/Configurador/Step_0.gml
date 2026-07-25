
if (keyboard_check_pressed(vk_space) and !carregado and VerificaMunicao and !PatoAndando and !instance_exists(oNuvemGrande)){
	global.confirma = false
	global.confirmaCria = true
	nuvemExiste ++
	if(!linha){
		var inst3 = instance_create_layer(615, 0, "Instances_1", oLinha_Final)
		linha = true
	}
	if(!instance_exists(oBalaoQ)){
		var balao =  instance_create_layer(224, 16, "Instances_1", oBalaoQ)
		balao.image_xscale = 4.36
		balao.image_yscale = 5
	}
	if(!global.comecar and  !instance_exists(oNuvemGrande)){
		inicializar_jogo()	
	}
    //    Quando o pato já estiver ao lado do canhão, ele será destruído para ser 
    //criado, a seguir, dentro do canhão 
    if(QuantidadePato = 1){
        instance_destroy(oPato2);
    }

    //    Cria o pato dentro do canhão 
    var inst2 = instance_create_layer(455,288,"Instances_1", oPato2 )
	oPato2.sprite_index = global.skins_struct[Skins.escolhida].skin
    inst2.image_angle = -90
    inst2.image_xscale = 2.25
    inst2.image_yscale = 2.454545

    //Afirma que está carregado para que não seja possível entrar nesse if novamente 
    carregado = true
	 audio_stop_sound(vPato2_Parado);
    //Afirma que agora existe 1 pato na tela 
    QuantidadePato = 1
	    with (Object13) {
        instance_destroy();
    }
		
}
if(!nuvensExistem and global.comecar){
for (b = 0; b < 12; b++) {
    for (i = 0; i < 3; i++) {
        pos_nuvem_y = 280 + (i * 190);
        pos_nuvem_x = num2 + (b * 120) + h;
		CriaNuvem(pos_nuvem_x,pos_nuvem_y,escala_nuvem_x,escala_nuvem_y,rotacao_nuvem)
		if (b == 11){Configurador.nuvensExistem = true}
    }
}
}
//    Se o pato não estiver ao lado do canhão(VerificaMunição == false) e o Pato já foi 
//deletado da tela(QuantidadePato == 0)
if (!VerificaMunicao and QuantidadePato == 0){

    //Cria um Pato no início da montantanha, para que ele possa caminhar até o canhão
    var inst2 = instance_create_layer(-24,412,"Instances_1", oPato2 )
    inst2.image_xscale = 2.25
    inst2.image_yscale = 2.454545

    //Afirma que existe um Pato na cena 
    QuantidadePato = 1

    //Afirma que agora existe 1 pato na tela, então esse if será travado
    QuantidadePato = 1
    //Afirma que agora o pato está andando, iniciando a animação presente no código de oPato2
    PatoAndando = true

}

//Cria, a cada frame, uma nova entidade de oPonto
if(global.comecar and !perdeu){
var obj = instance_create_layer(450,288,"Instances_1", oPonto )}

//    Se a seta de baixo é pressionada, a gravidade aumenta no máximo até 1.2, direcionando as entidades 
//baixo
if (keyboard_check(vk_down)) {
    num = min(limitador, num + 0.01);
	if(num<limitador){variacaoX-=variador}
}

//    Se a seta de baixo é pressionada, a gravidade diminui no mínimop até 0, direcionando as entidades 
//frente
if (keyboard_check(vk_up)) {
    num = max(0, num - 0.01)
	if(num>0){variacaoX+=variador}
}

if (instance_exists(oNuvemGrande) && oNuvemGrande.y > 382.5) {

	if(!global.confirma and  !instance_exists(Object10)){
	var nova_instancia = instance_create_layer(832, 520, "Instances_1", Object13);
	Object13.depth = -6;
// Aumenta a escala da instância criada (dobrando o tamanho, por exemplo)
	nova_instancia.image_xscale = 3.5;  // Aumenta o tamanho na largura
	nova_instancia.image_yscale = 4;  // Aumenta o tamanho na altura
	
	var nova_instancia2 = instance_create_layer(328, 520, "Instances_1", Object10);
	Object10.depth = -6;
//// Aumenta a escala da instância criada (dobrando o tamanho, por exemplo)
	nova_instancia2.image_xscale = 3.5; 
	nova_instancia2.image_yscale = 4;  // Aumenta o tamanho na altura
	
	while(xDaBorracha>=-640){
	var borracha =  instance_create_layer(980 + xDaBorracha, 140, "Instances_1", oBorracha)
	borracha.depth = -20
	borracha.image_xscale = 10; 
	borracha.image_yscale = 10;
	xDaBorracha-=80
	}
	if(!instance_exists(oNuvemAnimada)){
	var nuvemAnimada =  instance_create_layer(1400,133, "Instances_1", oNuvemAnimada)
	nuvemAnimada.depth = -21
	nuvemAnimada.image_xscale = 4.36; 
	nuvemAnimada.image_yscale = 5;
	textoExiste = false
	}
	}

}
if(!carregado and somParado){
audio_play_sound(vPato2_Parado, 1, false);
audio_sound_gain(vPato2_Parado, global.volume_desejado * 30, 0)
audio_sound_pitch(vPato2_Parado, 1.5); 
somParado = false
}

