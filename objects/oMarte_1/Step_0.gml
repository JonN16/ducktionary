Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oMarte_1)
if(t>=2*pi){t = 0}
if(t>=0){depth = 27}
if(t>=pi){depth = 12}


if(t>=pi/2 and t<=pi*3/2){
	y+=1.9
	x+=2.4
}

if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}
