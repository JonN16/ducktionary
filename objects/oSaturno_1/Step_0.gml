Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oSaturno_1)
if(t>=2*pi){t = 0}
if(t>=0){depth = 31}
if(t>=pi){depth = 8}

if(t>=pi/2 and t<=pi*3/2){
	image_xscale = -2
}
else{
	image_xscale = 2
}
if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}