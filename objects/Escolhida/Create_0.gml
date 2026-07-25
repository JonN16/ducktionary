global.MapaAtual = 0
global.Personagem = 0
global.Fonte = font_add_sprite_ext(Sprite25, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_+-*/=", true, 2);
global.SkinAtual = 0 
global.SkinPato1Atual = 0
global.SkinPato1Atirador = 0
global.SkinCanhaoAtual = 0
global.SkinCanhao = 0
global.comecou = false
global.confirma = false
global.funcionaBotao =true
global.dinheiro = 1000
global.xDaSombra = 1.2
global.yDaSombra = 2.2

lista = [
    [376, 280],
    [976, 360],
    [312, 192],
    [616, 432],
    [544, 608],
    [400, 560],
    [768, 608],
    [792, 472],
    [528, 448],
    [664, 376],
    [760, 360],
    [672, 184],
    [480, 200],
    [632, 344],
    [1240, 552],
    [1256, 304],
    [896, 496],
    [824, 672],
    [880, 256],
    [424, 152],
    [1208, 376],
    [344, 608],
    [1056, 208],
    [240, 568],
    [848, 176],
    [632, 344],
    [480, 424],
    [512, 288],
    [1240, 240],
    [800, 536],
    [528, 512],
    [512, 672],
    [344, 208],
    [416, 480],
    [416, 624],
    [1032, 464],
    [696, 664],
    [688, 56],
    [344, 64],
    [608, 160],
    [1176, 456],
    [952, 168],
    [696, 272],
    [752, 136],
    [160, 232],
    [536, 72],
    [1096, 296],
    [848, 408],
	[915, 337],
	[1080, 320],
	[1200, 300],
	[650, 737],
	[620, 636],
	[690, 748]
]
function criar_planeta(obj_planeta, x, y, escala, angulo) {
    var planeta = instance_create_layer(x, y, "Instances_1", obj_planeta); // Cria o planeta na camada "Instances"
    planeta.image_xscale = escala;
    planeta.image_yscale = escala;
    planeta.image_angle = angulo; 
}
function criar_estrela(x, y, escalax, escalay) {
    var estrela = instance_create_layer(x, y, "Instances_1", oEstrela); // Cria o planeta na camada "Instances"
    estrela.image_xscale = escalax;
    estrela.image_yscale = escalay;
}
function Movimento_Planeta(x,y,varia_cos,varia_sen,radiano,corx_init,cory_init,v_orbita,objeto,t){
objeto.x = 695+corx_init+varia_cos*cos(t)*cos(radiano)-varia_sen*sin(t)*sin(radiano)
objeto.y = 495+cory_init+varia_cos*cos(t)*sin(radiano)+varia_sen*sin(t)*cos(radiano)
objeto.t+=v_orbita
}

function Movimento_Sombra(t, listaSkinsSombras, listaAngulosSombras, objeto){

if(t>=0){
	objeto.sprite_index = listaSkinsSombras[0]
	objeto.image_angle = listaAngulosSombras[0]
}
if(t>=0.85){
	objeto.sprite_index = listaSkinsSombras[1]
	objeto.image_angle = listaAngulosSombras[1]

}
if(t>=1){
	objeto.sprite_index = listaSkinsSombras[2]
	objeto.image_angle = listaAngulosSombras[2]
}
if(t>=1.2){
	objeto.sprite_index = listaSkinsSombras[3]
	objeto.depth = 100
	objeto.image_angle = listaAngulosSombras[3]
}
if(t>=2.04){
	objeto.sprite_index = listaSkinsSombras[4]
	objeto.depth = 0
	objeto.image_angle = listaAngulosSombras[4]
}
if(t>=2.35){
	objeto.sprite_index = listaSkinsSombras[5]
	objeto.image_angle = listaAngulosSombras[5]
}
if(t>=2.8){
	objeto.sprite_index = listaSkinsSombras[6]
	objeto.image_angle = listaAngulosSombras[6]
}
if(t>=3.2){
	objeto.sprite_index = listaSkinsSombras[7]
	objeto.image_angle = listaAngulosSombras[7]
}
if(t>=3.5){
	objeto.sprite_index = listaSkinsSombras[8]
	objeto.image_angle = listaAngulosSombras[8]
}
if(t>=3.9){
	objeto.sprite_index = listaSkinsSombras[9]
	objeto.image_angle = listaAngulosSombras[9]
}
if(t>=4.4){
	objeto.sprite_index = listaSkinsSombras[10]
	objeto.image_angle = listaAngulosSombras[10]
}
if(t>=5.2){
	objeto.sprite_index = listaSkinsSombras[11]
	objeto.image_angle = listaAngulosSombras[11]
}
if(t>=5.65){
	objeto.sprite_index = listaSkinsSombras[12]
	objeto.image_angle = listaAngulosSombras[12]
}
if(t>=5.8){
	objeto.sprite_index = listaSkinsSombras[13]
	objeto.image_angle = listaAngulosSombras[13]
}


}


uma = false
t = 0
