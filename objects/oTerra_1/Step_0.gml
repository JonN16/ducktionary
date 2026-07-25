Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oTerra_1)

if(t>=2*pi){t = 0}
if(t>=0){depth = 25}
if(t>=pi){depth = 14}



if(t>=2 and t<=pi+0.5){
	y+=0.5
}
if(t>=4.4 and 5.2){
	y-=0.10
}
if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}