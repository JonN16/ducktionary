Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oJupiter_1)

if(t>=2*pi){t = 0}
if(t>=0){depth = 29}
if(t>=pi){depth = 10}





if(t>=pi/2 and t<=4.4){
	x+=3.5
	y+=2.5
}
else{
	x-=1
	y-=0.5
}
if(t>=4.4 and t<=5.65){
	y+=3
}
if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}