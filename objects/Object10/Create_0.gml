/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (room == Room1) {
    global.confirma = true
}
if (room == Room1_1) {
    global.confirma = false
	Configurador.apagaTexto=true
}

function mudaRoom(){
room_goto(Room1_1)
}
