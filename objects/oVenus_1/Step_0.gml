Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oVenus_1)
if(t>=2*pi){t = 0}
if(t>=0){depth = 23}
if(t>=pi){depth = 16}


if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}