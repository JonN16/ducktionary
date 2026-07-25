Escolhida.Movimento_Sombra(t,listaSkinsSombras,listaAngulosSombras, oMercurio_1)

if(t>=2*pi){t = 0}
if(t>=0){depth = 20}
if(t>=pi){depth = 18}
if(t>=global.xDaSombra and t<=global.yDaSombra){
depth = 100
}