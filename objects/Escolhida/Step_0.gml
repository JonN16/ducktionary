// Destrói os planetas se o fundo for diferente de "sFundoEspaco"
if (oFundo.sprite_index != sFundoEspaco) {
    instance_destroy(oJupiter);
    instance_destroy(oMarte);
    instance_destroy(oMarte_1);
    instance_destroy(oMercurio);
    instance_destroy(oTerra);
    instance_destroy(oUrano);
    instance_destroy(oNetuno);
    instance_destroy(oSaturno);
    instance_destroy(oEstrela);
    instance_destroy(oVenus);
	instance_destroy(oSol);
	instance_destroy(oFoguete);
	instance_destroy(oVenus_1);
	instance_destroy(oTerra_1);
	instance_destroy(oMercurio_1);
    instance_destroy(oJupiter_1);
    instance_destroy(oSaturno_1);
    instance_destroy(oUrano_1);
    instance_destroy(oNetuno_1);
	uma = false
}

if (oFundo.sprite_index == sFundoEspaco && uma == false and !instance_exists(oTerra)) {
    var escala_planeta = 2;
	randomize()
    criar_planeta(oJupiter, 912, 448, escala_planeta, 0);
	criar_planeta(oJupiter_1, 912, 448, escala_planeta, 0);
    criar_planeta(oMarte, 576, 568, escala_planeta, 0);
    criar_planeta(oMarte_1, 576, 568, escala_planeta, 0);
    criar_planeta(oMercurio, 760, 472, escala_planeta, 0);
    criar_planeta(oMercurio_1, 760, 472, escala_planeta, 0);
    criar_planeta(oTerra, 801, 512, escala_planeta, 0);
	criar_planeta(oTerra_1, 808, 512, escala_planeta, 0);
    criar_planeta(oUrano, 1000, 504, escala_planeta, 72.61569); 
    criar_planeta(oUrano_1, 1000, 504, escala_planeta, 72.61569); 
    criar_planeta(oNetuno, 440, 640, escala_planeta, 0);
	criar_planeta(oNetuno_1, 440, 640, escala_planeta, 0);
    criar_planeta(oSaturno, 472, 536, escala_planeta, -26.69563); 
    criar_planeta(oSaturno_1, 472, 536, escala_planeta, -26.69563); 
    criar_planeta(oVenus, 600, 512, escala_planeta, 0);
    criar_planeta(oVenus_1, 600, 512, escala_planeta, 0);
	criar_planeta(oSol, 695, 495, 1, 0)
	criar_planeta(oFoguete, 0, 0, 1, 0)

	
	for (var i = 0; i < array_length(lista); i++) {
    x_pos = lista[i][0];
    y_pos = lista[i][1]; 
    escalax = random_range(0.05,0.17)
	escalay = random_range(0.05,0.17)
	criar_estrela(x_pos,y_pos,escalax,escalay)
}
    uma = true
}

if (oFundo.sprite_index == sFundoEspaco){
Movimento_Planeta(x,y,72,31.5,2.87979,10,4,0.005,oMercurio,oMercurio.t)
Movimento_Planeta(x,y,72,31.5,2.87979,10,4,0.005,oMercurio_1,oMercurio_1.t)
Movimento_Planeta(x,y,160.5,40.5,3.22886,1.7,4,0.001,oVenus,oVenus.t)
Movimento_Planeta(x,y,164,40,3.22886,2.4,5,0.001,oVenus_1,oVenus_1.t)
Movimento_Planeta(x,y,200,50,3.138102,1.7,4,0.0009,oTerra,oTerra.t)
Movimento_Planeta(x,y,201,50,3.138102,1.7,3.5,0.0009,oTerra_1,oTerra_1.t)
Movimento_Planeta(x,y,258,27,3.07178,1.7,4,0.0010,oMarte,oMarte.t)
Movimento_Planeta(x,y,258,27,3.07178,1.7,4,0.0010,oMarte_1,oMarte_1.t)
Movimento_Planeta(x,y,328,58,3.35103,1.7,4,0.0007,oJupiter,oJupiter.t)
Movimento_Planeta(x,y,328,58,3.35103,1.7,4,0.0007,oJupiter_1,oJupiter_1.t)
Movimento_Planeta(x,y,388,63,3.07178,1.7,4,0.0005,oSaturno,oSaturno.t)
Movimento_Planeta(x,y,388,63,3.07178,1.7,4,0.0005,oSaturno_1,oSaturno_1.t)
Movimento_Planeta(x,y,478,49.5,2.77507,1.7,4,0.0004,oUrano,oUrano.t)
Movimento_Planeta(x,y,478,49.5,2.77507,1.7,4,0.0004,oUrano_1,oUrano_1.t)
Movimento_Planeta(x,y,508,85,3.38594,1.7,4,0.0005,oNetuno,oNetuno.t)
Movimento_Planeta(x,y,508,85,3.38594,1.7,4,0.0005,oNetuno_1,oNetuno_1.t)
}