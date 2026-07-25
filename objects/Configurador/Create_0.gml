xDaBorracha = 0
printPontos = 0
cordenadaPao = 807
nuvensExistem = false
apagaTexto = false
somParado = true
game_set_speed(60, gamespeed_fps)

linha = false 

limite = 420

limitador =  0.2
limitador2= 0.2
quantidadePonto = 30
corrige = 0
corrigeA = 0
//Objetos que serão utilizados para a variação de gravidade
num = 0;
nuvemExiste = false
perdeu = false
//Verifica se o canhão está carregado
carregado = 0

//Aqui teremos as variáveis reponsaveis pela angulacao e pela mudança no tamanho de x de oPonto
variacaoX = 0
modificador = 30
limitador = 1.2
variador = 0.00015
//Verifica se o Pato está ao lado do canhão, pronto para entrar no canhão
VerificaMunicao = true

//Cria o Pato munição ao lado do canhão 
var inst2 = instance_create_layer(415,290,"Instances_1", oPato2 )

inst2.image_xscale = 2.25
inst2.image_yscale = 2.454545

//Garante que existe  somente 1 ou nenhum pato na tela
QuantidadePato = 1

//Verifica se o Pato está andando, antes de chegar no canhão
PatoAndando = true
//    No caso, é afirmado que ele está andando para, no código do objeto, ele ser enviado para
//frente do canhão e, como ele já está na cordenada onde ele deveria parar, instantaneamente
//a variável PatoAndando = false 

//Cria o pato Atirador atrás do canhão
var inst = instance_create_layer(288,256,"Instances_1", oPato1 )
inst.image_xscale = 4
inst.image_yscale = 4

pontos = 0
global.comecar = false; 
guarday = 0
sorteio = true
num2  = 1333
variacao =0.45
lista2= []
randomize();
h = 1
acertado = 0;
repetido = false
a = 0
num_nuvens = 3;
escala_nuvem_x = 2.809524;
escala_nuvem_y = 4.047619;
rotacao_nuvem = -90;
pos_nuvem_y = 280
pos_nuvem_x = num2
function CriaNuvem(xDaNuvem,yDaNuvem,escalaNuvemX,escalaNuvemY,rotacaoNuvem){
	var nuvemNova = instance_create_layer(xDaNuvem, yDaNuvem,"Instances_1",nuvem)
		nuvemNova .image_xscale = escalaNuvemX
		nuvemNova .image_yscale = escalaNuvemY
		nuvemNova .image_angle = rotacaoNuvem
}

function inicializar_jogo() {
    global.comecar = true;

    // Inicializa o array com os valores desejados
    var lista = [1, 2, 3];

    // Cria um array para armazenar os valores aleatórios
    global.valores_aleatorios = [];

    // Pega três valores aleatórios da lista
    for (var i = 0; i < 3; i++) {
        var indice_aleatorio = irandom(array_length(lista) - 1); 
        var valor_aleatorio = lista[indice_aleatorio];

        // Adiciona o valor aleatório ao array de valores
        array_push(global.valores_aleatorios, valor_aleatorio);

        // Cria um novo array sem o valor escolhido
        var nova_lista = [];
        for (var j = 0; j < array_length(lista); j++) {
            if (j != indice_aleatorio) {
                array_push(nova_lista, lista[j]); // Adiciona os outros valores
            }
        }
        lista = nova_lista; // Atualiza a lista original
    }

    if (array_length(lista2) == 0) {
        frases.indice_atual = irandom_range(0, array_length(frases.perguntas_struct) - 1);
        array_push(lista2, frases.indice_atual);
    } else {
        frases.indice_atual = irandom_range(0, array_length(frases.perguntas_struct) - 1);
        var a = 0; // Inicializando 'a' aqui para garantir que comece do zero
        while (a < array_length(lista2)) {
            if (instance_exists(oNuvemGrande)) {
                break;
            }
            if (lista2[a] == frases.indice_atual) {
                frases.indice_atual = irandom_range(0, array_length(frases.perguntas_struct) - 1);
                a = 0; // Reinicializa 'a' se a pergunta já estiver na lista
            }
            a++;
        }
    }

   
    frases.pergunta_atual = frases.perguntas_struct[frases.indice_atual].pergunta;
    frases.resposta_atual = frases.perguntas_struct[frases.indice_atual].resposta;

}
