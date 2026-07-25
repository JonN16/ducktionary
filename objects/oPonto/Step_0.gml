x += (Configurador.pos_nuvem_x-Configurador.limite)/Configurador.quantidadePonto + Configurador.corrige
X += (Configurador.pos_nuvem_x-Configurador.limite)/Configurador.quantidadePonto + Configurador.corrige
//Exclui a entidade caso saia da tela 
if(oFundo.sprite_index == sFundoEspaco){
sprite_index = sestrelinha
}
else{sprite_index = sPonto}
if(x>1360 or y >770 or x > Configurador.pos_nuvem_x){
    instance_destroy()
}
gravity = Configurador.num;
image_angle = 0+(90 - 0)*(1-power(2.71828,-(Configurador.variacaoX*(1.2*X/Configurador.modificador +1*Configurador.num)))) 
tempo++