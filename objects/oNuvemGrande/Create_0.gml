																															condicao = true
function DesceNuvemGrande(){
depth = -70
if(room != Room1_1){
global.funcionaBotao = false
}
if(y <= 383.5){
	y += 12
}
else{
	depth = -5
	if(room == Room1_1){Configurador.textoExiste = false}
	if(room == Room1){
		global.confirma = true
		if(global.botaoPlay)
		{room_goto(Room1_1)
		global.comecou = true}
	}
	else{if(global.botaoPlay){room_goto(Room1_1)}}
	if(global.botaoLeave){room_goto(Room1)}
	if(global.botaoSkins){room_goto(Room1_2)}
	if(global.botaoConfig){room_goto(Room1_3)}
	if(global.botaoMapas){room_goto(Room1_4)}

}
}

function SobeNuvemGrande(){
if(room == Room1_1){
	Configurador.textoExiste = true
	global.comecar = false
	}
if(global.confirma){
	
	y -= 12
	global.funcionaBotao = false
	if(y < -480){
	global.botaoPlay = false
	global.confirma = false
	instance_destroy(oNuvemGrande)	
	global.funcionaBotao = true

	}
}
}