Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oNetuno_1)
if(t>=2*pi){t = 0}
if(t>=0){depth = 35}
if(t>=pi){depth = 4}


if(t>=pi/2 and t<=pi*3/2){
	y+=1.5
	x+=3
	image_xscale = -2
}
else{
	x-=1.5
	y-=1.5
	image_xscale = 2
}
if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}