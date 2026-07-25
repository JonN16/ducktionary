Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oUrano_1)
if(t>=2*pi){t = 0}
if(t>=0){depth = 33}
if(t>=pi){depth = 6}


if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}