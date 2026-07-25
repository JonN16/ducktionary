function definir_perguntas(fundo) {

perguntas_struct = [];

if (oFundo.sprite_index == sFundo) {
    perguntas_struct[0] = { pergunta: string_upper("MY MOM LIKES TO EAT __."), resposta: string_upper("BREAD"), opcoes: ["BUTTER", "JACKET", "TABLE"], traducao: "MINHA MAE GOSTA DE COMER PAO. (PAO)", descoberta: false };
    perguntas_struct[1] = { pergunta: string_upper("HE LIKES TO READ __."), resposta: string_upper("BOOKS"), opcoes: ["CAMERA", "STRAW", "BAG"], traducao: "ELE GOSTA DE LER LIVROS. (LIVROS)", descoberta: false };
    perguntas_struct[2] = { pergunta: string_upper("SHE WRITES EVERYTHING ON HER __."), resposta: string_upper("NOTEBOOK"), opcoes: ["PENCIL", "CAR", "CUP"], traducao: "ELA ESCREVE TUDO EM SEU CADERNO. (CADERNO)", descoberta: false };
    perguntas_struct[3] = { pergunta: string_upper("SHE USES A __ TO TAKE PHOTOS."), resposta: string_upper("CAMERA"), opcoes: ["WINDOW", "FLOOR", "BOWL"], traducao: "ELA USA UMA CAMERA PARA TIRAR FOTOS. (CAMERA)", descoberta: false };
    perguntas_struct[4] = { pergunta: string_upper("HIS SMARTPHONE RAN OUT OF __."), resposta: string_upper("BATTERY"), opcoes: ["PAPER", "SPOON", "LAMP"], traducao: "O SMARTPHONE DELE FICOU SEM BATERIA. (BATERIA)", descoberta: false };
    perguntas_struct[5] = { pergunta: string_upper("HE USED A __ TO DRINK HIS SODA."), resposta: string_upper("STRAW"), opcoes: ["PLATE", "FORK", "BOOK"], traducao: "ELE USOU UM CANUDO PARA BEBER SEU REFRIGERANTE. (CANUDO)", descoberta: false };
    perguntas_struct[6] = { pergunta: string_upper("SHE DRANK __."), resposta: string_upper("COFFEE"), opcoes: ["SANDWICH", "HAT", "FLOWER"], traducao: "ELA BEBEU CAFE. (CAFE)", descoberta: false };
    perguntas_struct[7] = { pergunta: string_upper("THE KID IS AFRAID OF __."), resposta: string_upper("CLOWNS"), opcoes: ["BUTTER", "NAIL", "PEN"], traducao: "A CRIANCA TEM MEDO DE PALHACOS. (PALHACOS)", descoberta: false };
    perguntas_struct[8] = { pergunta: string_upper("THE DAD DRINKS COFFEE FROM A __."), resposta: string_upper("MUG"), opcoes: ["TOY", "WALL", "PAPER"], traducao: "O PAI BEBE CAFE EM UMA CANECA. (CANECA)", descoberta: false };
    perguntas_struct[9] = { pergunta: string_upper("SHE USED THE __ TO CARRY EVERYTHING."), resposta: string_upper("BAG"), opcoes: ["CHAIR", "TABLE", "WATCH"], traducao: "ELA USOU A BOLSA PARA CARREGAR TUDO. (BOLSA)", descoberta: false };
    perguntas_struct[10] = { pergunta: string_upper("SHE SLEEPS ON THE __."), resposta: string_upper("BED"), opcoes: ["BOOK", "CARPET", "PILLOW"], traducao: "ELA DORME NA CAMA. (CAMA)", descoberta: false };
    perguntas_struct[11] = { pergunta: string_upper("HE DRIVES A __."), resposta: string_upper("CAR"), opcoes: ["SPOON", "CHAIR", "CUP"], traducao: "ELE DIRIGE UM CARRO. (CARRO)", descoberta: false };
    perguntas_struct[12] = { pergunta: string_upper("THEY LIKE THE __ OF APPLES."), resposta: string_upper("TASTE"), opcoes: ["BOOK", "CHAIR", "CUP"], traducao: "ELES GOSTAM DO SABOR DAS MACAS. (SABOR)", descoberta: false };
    perguntas_struct[13] = { pergunta: string_upper("THE BABY DRINKS __."), resposta: string_upper("MILK"), opcoes: ["CANDY", "SHOES", "FORK"], traducao: "O BEBE BEBE LEITE. (LEITE)", descoberta: false };
    perguntas_struct[14] = { pergunta: string_upper("THE GIRL PLAYS WITH __."), resposta: string_upper("TOYS"), opcoes: ["BREAD", "PENCIL", "LAMP"], traducao: "A MENINA BRINCA COM BRINQUEDOS. (BRINQUEDOS)", descoberta: false };
    perguntas_struct[15] = { pergunta: string_upper("__ SWEETENS THE TEA."), resposta: string_upper("SUGAR"), opcoes: ["ROCK", "SPOON", "BOOK"], traducao: "O ACUCAR ADORA O CHA. (ACUCAR)", descoberta: false };
    perguntas_struct[16] = { pergunta: string_upper("THE __ TOOK OFF."), resposta: string_upper("PLANE"), opcoes: ["CUP", "BAG", "PILLOW"], traducao: "O AVIAO DECOLOU. (AVIAO)", descoberta: false };
    perguntas_struct[17] = { pergunta: string_upper("THEY WATCH __ ON THE COUCH."), resposta: string_upper("TV"), opcoes: ["LAMP", "CLOCK", "SPOON"], traducao: "ELES ASSISTEM A TV NO SOFA. (TV)", descoberta: false };
    perguntas_struct[18] = { pergunta: string_upper("HE SAT ON THE __."), resposta: string_upper("CHAIR"), opcoes: ["TOWEL", "CLOCK", "BALL"], traducao: "ELE SE SENTOU NA CADEIRA. (CADEIRA)", descoberta: false };
    perguntas_struct[19] = { pergunta: string_upper("KIDS LIKE TO WATCH SUPERHERO __."), resposta: string_upper("FIGHTS"), opcoes: ["PENS", "PLATES", "MUGS"], traducao: "AS CRIANCAS GOSTAM DE VER LUTAS DE SUPER-HEROIS. (LUTAS)", descoberta: false };
    perguntas_struct[20] = { pergunta: string_upper("THE WIND CAME THROUGH THE __."), resposta: string_upper("WINDOWS"), opcoes: ["SHOES", "BUTTER", "LAMP"], traducao: "O VENTO ENTROU PELAS JANELAS. (JANELAS)", descoberta: false };
    perguntas_struct[21] = { pergunta: string_upper("THE __ IS COLD."), resposta: string_upper("ICE"), opcoes: ["CUP", "PILLOW", "BOOK"], traducao: "O GELO ESTA FRIO. (GELO)", descoberta: false };
    perguntas_struct[22] = { pergunta: string_upper("THE CHILD __ OF DRAGONS."), resposta: string_upper("DREAMS"), opcoes: ["CAR", "BAG", "GLASS"], traducao: "A CRIANCA SONHA COM DRAGOES. (SONHA)", descoberta: false };
    perguntas_struct[23] = { pergunta: string_upper("SHE WROTE A __."), resposta: string_upper("LETTER"), opcoes: ["HAT", "BOWL", "WATCH"], traducao: "ELA ESCREVEU UMA CARTA. (CARTA)", descoberta: false };
    perguntas_struct[24] = { pergunta: string_upper("THEY USE __ TO WRITE."), resposta: string_upper("PENS"), opcoes: ["CUP", "CHAIR", "SOCKS"], traducao: "ELES USAM CANETAS PARA ESCREVER. (CANETAS)", descoberta: false };
	palavra = true
}

if (oFundo.sprite_index == sFundoBatman) {
	perguntas_struct[0] = { pergunta: string_upper("SUPERMAN’S CAPE IS __"), resposta: string_upper("RED"), opcoes: ["GREEN", "BLUE", "YELLOW"], traducao: "A CAPA DO SUPERMAN É __ (VERMELHO)", descoberta: false };
	perguntas_struct[1] = { pergunta: string_upper("SPIDER-MAN'S ENEMY WITH GREEN SKIN IS __"), resposta: string_upper("GOBLIN"), opcoes: ["JOKER", "BATMAN", "IRONMAN"], traducao: "O INIMIGO DO HOMEM-ARANHA COM PELE VERDE É __ (GOBLIN)", descoberta: false };
	perguntas_struct[2] = { pergunta: string_upper("WONDER WOMAN USES A __ TO FLY"), resposta: string_upper("JET"), opcoes: ["CAR", "BOOTS", "SHOES"], traducao: "A MULHER-MARAVILHA USA UM __ PARA VOAR (JATO)", descoberta: false };
	perguntas_struct[3] = { pergunta: string_upper("BATMAN'S SYMBOL IS A __"), resposta: string_upper("BAT"), opcoes: ["DOG", "BIRD", "CAT"], traducao: "O SÍMBOLO DO BATMAN É UM __ (MORCEGO)", descoberta: false };
	perguntas_struct[4] = { pergunta: string_upper("THE FLASH RUNS VERY __"), resposta: string_upper("FAST"), opcoes: ["SLOW", "STRONG", "WEAK"], traducao: "O FLASH CORRE MUITO __ (RÁPIDO)", descoberta: false };
	perguntas_struct[5] = { pergunta: string_upper("THE HULK IS __"), resposta: string_upper("GREEN"), opcoes: ["BLUE", "YELLOW", "RED"], traducao: "O HULK É __ (VERDE)", descoberta: false };
	perguntas_struct[6] = { pergunta: string_upper("IRON MAN’S SUIT IS MADE OF __"), resposta: string_upper("METAL"), opcoes: ["PLASTIC", "WOOD", "PAPER"], traducao: "A ARMADURA DO HOMEM DE FERRO É FEITA DE __ (METAL)", descoberta: false };
	perguntas_struct[7] = { pergunta: string_upper("BATMAN IS __"), resposta: string_upper("RICH"), opcoes: ["POOR", "FEARFUL", "DUMB"], traducao: "O BATMAN É __ (RICO)", descoberta: false };
	perguntas_struct[8] = { pergunta: string_upper("CAPTAIN AMERICA CARRIES A __"), resposta: string_upper("SHIELD"), opcoes: ["SWORD", "BOW", "SPEAR"], traducao: "O CAPITÃO AMÉRICA CARREGA UM __ (ESCUDO)", descoberta: false };
	perguntas_struct[9] = { pergunta: string_upper("__ IS KNOWN AS THE 'MAN OF STEEL'"), resposta: string_upper("SUPERMAN"), opcoes: ["THOR", "IRONMAN", "BATMAN"], traducao: "__ É CONHECIDO COMO O 'HOMEM DE AÇO' (SUPERMAN)", descoberta: false };
	perguntas_struct[10] = { pergunta: string_upper("THOR CARRIES A __"), resposta: string_upper("HAMMER"), opcoes: ["SWORD", "BOW", "SHIELD"], traducao: "O THOR CARREGA UM __ (MARTELLO)", descoberta: false };
	perguntas_struct[11] = { pergunta: string_upper("BATMAN DRIVES A __"), resposta: string_upper("CAR"), opcoes: ["TRUCK", "PLANE", "BLIMP"], traducao: "O BATMAN DIRIGE UM __ (CARRO)", descoberta: false };
	perguntas_struct[12] = { pergunta: string_upper("CAPTAIN __ HAS A SHIELD"), resposta: string_upper("AMERICA"), opcoes: ["CHINESE", "HULK", "WAKANDA"], traducao: "O CAPITÃO __ TEM UM ESCUDO (AMÉRICA)", descoberta: false };
	perguntas_struct[13] = { pergunta: string_upper("BLACK __ IS THE KING OF WAKANDA"), resposta: string_upper("PANTHER"), opcoes: ["IRONMAN", "CAPTAIN", "THOR"], traducao: "O __ NEGRO É O REI DE WAKANDA (PANTERA)", descoberta: false };
	perguntas_struct[14] = { pergunta: string_upper("AQUAMAN'S POWER IS __"), resposta: string_upper("WATER"), opcoes: ["FIRE", "EARTH", "WIND"], traducao: "O PODER DO AQUAMAN É __ (ÁGUA)", descoberta: false };
	perguntas_struct[15] = { pergunta: string_upper("THE __ IS KNOWN FOR HIS SPEED POWERS"), resposta: string_upper("FLASH"), opcoes: ["AQUAMAN", "THOR", "BATMAN"], traducao: "O __ É CONHECIDO POR SEUS PODERES DE VELOCIDADE (FLASH)", descoberta: false };
	perguntas_struct[16] = { pergunta: string_upper("GREEN __ HAS NO ANIMAL SYMBOL"), resposta: string_upper("LANTERN"), opcoes: ["CAT", "FISH", "LAMP"], traducao: "O __ VERDE NÃO TEM SÍMBOLO ANIMAL (LANTERNA)", descoberta: false };
	perguntas_struct[17] = { pergunta: string_upper("BATMAN'S CITY IS __"), resposta: string_upper("GOTHAM"), opcoes: ["NEW YORK", "STAR", "JACAREI"], traducao: "A CIDADE DO BATMAN É __ (GOTHAM)", descoberta: false };
	perguntas_struct[18] = { pergunta: string_upper("DEADPOOL WEARS A __ COSTUME"), resposta: string_upper("SUIT"), opcoes: ["CAPE", "RED", "BLUE"], traducao: "O DEADPOOL USA UM __ (TRAJE)", descoberta: false };
	perguntas_struct[19] = { pergunta: string_upper("DAREDEVIL HAS INCREDIBLE __"), resposta: string_upper("SENSES"), opcoes: ["STRENGTH", "ROBOT", "SPEED"], traducao: "O DEMOLIDOR TEM __ INCRÍVEIS (SENTIDOS)", descoberta: false };
	perguntas_struct[20] = { pergunta: string_upper("GREEN LANTERN'S SUIT IS __"), resposta: string_upper("GREEN"), opcoes: ["BLUE", "RED", "PINK"], traducao: "O TRAJE DO LANterna VERDE É __ (VERDE)", descoberta: false };
	perguntas_struct[21] = { pergunta: string_upper("THE NEIGHBORHOOD FRIEND IS __"), resposta: string_upper("SPIDERMAN"), opcoes: ["SUPERMAN", "IRONMAN", "BATMAN"], traducao: "O AMIGO DO VIZINHO É __ (HOMEM-ARANHA)", descoberta: false };
	perguntas_struct[22] = { pergunta: string_upper("THE FLASH WEARS A __"), resposta: string_upper("MASK"), opcoes: ["HAT", "CROWN", "GLASSES"], traducao: "O FLASH USA __ (MÁSCARA)", descoberta: false };
	perguntas_struct[23] = { pergunta: string_upper("WOLVERINE HAS __"), resposta: string_upper("CLAWS"), opcoes: ["SPIKES", "SWORDS", "SPEARS"], traducao: "O WOLVERINE TEM __ (GARRAS)", descoberta: false };
	perguntas_struct[24] = { pergunta: string_upper("THE HULK IS __"), resposta: string_upper("STRONG"), opcoes: ["WEAK", "SKINNY", "SMALL"], traducao: "O HULK É __ (FORTE)", descoberta: false };
	palavra = true
}
	
if (oFundo.sprite_index == sFundoColorido) {
	perguntas_struct[0] = { pergunta: string_upper("THE TREE TOP IS __"), resposta: string_upper("GREEN"), opcoes: ["BLUE", "GRAY", "PINK"], traducao: "O TOPO DA ÁRVORE É __ (VERDE)", descoberta: false };
	perguntas_struct[1] = { pergunta: string_upper("THE SKY IS __"), resposta: string_upper("BLUE"), opcoes: ["PURPLE", "RED", "GREEN"], traducao: "O CÉU É __ (AZUL)", descoberta: false };
	perguntas_struct[2] = { pergunta: string_upper("THE SUN IS __"), resposta: string_upper("YELLOW"), opcoes: ["GRAY", "GREEN", "BLUE"], traducao: "O SOL É __ (AMARELO)", descoberta: false };
	perguntas_struct[3] = { pergunta: string_upper("WHITE CHOCOLATE IS __"), resposta: string_upper("WHITE"), opcoes: ["GREEN", "BROWN", "BLACK"], traducao: "O CHOCOLATE BRANCO É __ (BRANCO)", descoberta: false };
	perguntas_struct[4] = { pergunta: string_upper("A CACTUS IS __"), resposta: string_upper("GREEN"), opcoes: ["RED", "BLUE", "YELLOW"], traducao: "UM CACTO É __ (VERDE)", descoberta: false };
	perguntas_struct[5] = { pergunta: string_upper("THE APPLE IS __"), resposta: string_upper("RED"), opcoes: ["BLUE", "YELLOW", "ORANGE"], traducao: "A MAÇÃ É __ (VERMELHA)", descoberta: false };
	perguntas_struct[6] = { pergunta: string_upper("THE ORANGE IS __"), resposta: string_upper("ORANGE"), opcoes: ["PINK", "RED", "PURPLE"], traducao: "A LARANJA É __ (LARANJA)", descoberta: false };
	perguntas_struct[7] = { pergunta: string_upper("A BANANA IS __"), resposta: string_upper("YELLOW"), opcoes: ["PINK", "RED", "ORANGE"], traducao: "UMA BANANA É __ (AMARELA)", descoberta: false };
	perguntas_struct[8] = { pergunta: string_upper("THE OCEAN IS __"), resposta: string_upper("BLUE"), opcoes: ["YELLOW", "RED", "GREEN"], traducao: "O OCEANO É __ (AZUL)", descoberta: false };
	perguntas_struct[9] = { pergunta: string_upper("A PINEAPPLE IS __"), resposta: string_upper("YELLOW"), opcoes: ["PINK", "PURPLE", "BLACK"], traducao: "UM ABACAXI É __ (AMARELO)", descoberta: false };
	perguntas_struct[10] = { pergunta: string_upper("A STOP SIGN IS __"), resposta: string_upper("RED"), opcoes: ["GREEN", "YELLOW", "BLACK"], traducao: "UMA PLACA DE PARE É __ (VERMELHA)", descoberta: false };
	perguntas_struct[11] = { pergunta: string_upper("SAND IS __"), resposta: string_upper("YELLOW"), opcoes: ["GREEN", "PURPLE", "GRAY"], traducao: "A AREIA É __ (AMARELA)", descoberta: false };
	perguntas_struct[12] = { pergunta: string_upper("FIRE IS __"), resposta: string_upper("ORANGE"), opcoes: ["PINK", "PURPLE", "GRAY"], traducao: "O FOGO É __ (LARANJA)", descoberta: false };
	perguntas_struct[13] = { pergunta: string_upper("WOOD IS __"), resposta: string_upper("BROWN"), opcoes: ["BLUE", "ORANGE", "GRAY"], traducao: "A MADEIRA É __ (MARROM)", descoberta: false };
	perguntas_struct[14] = { pergunta: string_upper("BATMAN'S COLOR IS __"), resposta: string_upper("BLACK"), opcoes: ["RED", "PINK", "ORANGE"], traducao: "A COR DO BATMAN É __ (PRETO)", descoberta: false };
	perguntas_struct[15] = { pergunta: string_upper("KETCHUP IS __"), resposta: string_upper("RED"), opcoes: ["BLACK", "YELLOW", "WHITE"], traducao: "O KETCHUP É __ (VERMELHO)", descoberta: false };
	perguntas_struct[16] = { pergunta: string_upper("MILK IS __"), resposta: string_upper("WHITE"), opcoes: ["BLACK", "ORANGE", "PINK"], traducao: "O LEITE É __ (BRANCO)", descoberta: false };
	perguntas_struct[17] = { pergunta: string_upper("SNOW IS __"), resposta: string_upper("WHITE"), opcoes: ["BLACK", "RED", "BLUE"], traducao: "A NEVE É __ (BRANCA)", descoberta: false };
	perguntas_struct[18] = { pergunta: string_upper("COFFEE IS __"), resposta: string_upper("BLACK"), opcoes: ["WHITE", "ORANGE", "BLUE"], traducao: "O CAFÉ É __ (PRETO)", descoberta: false };
	perguntas_struct[19] = { pergunta: string_upper("A PICKLE IS __"), resposta: string_upper("GREEN"), opcoes: ["PINK", "PURPLE", "ORANGE"], traducao: "UM PEPINO EM CONSERVA É __ (VERDE)", descoberta: false };
	perguntas_struct[20] = { pergunta: string_upper("A TOMATO IS __"), resposta: string_upper("RED"), opcoes: ["ORANGE", "BLUE", "GRAY"], traducao: "UM TOMATE É __ (VERMELHO)", descoberta: false };
	perguntas_struct[21] = { pergunta: string_upper("CHEESE IS __"), resposta: string_upper("YELLOW"), opcoes: ["BLUE", "GRAY", "BLACK"], traducao: "O QUEIJO É __ (AMARELO)", descoberta: false };
	perguntas_struct[22] = { pergunta: string_upper("HONEY IS __"), resposta: string_upper("GOLDEN"), opcoes: ["BLUE", "GRAY", "PINK"], traducao: "O MEL É __ (DOURADO)", descoberta: false };
	perguntas_struct[23] = { pergunta: string_upper("LAVA IS __"), resposta: string_upper("RED"), opcoes: ["GREEN", "BLACK", "WHITE"], traducao: "A LAVA É __ (VERMELHA)", descoberta: false };
	perguntas_struct[24] = { pergunta: string_upper("PUMPKINS ARE __"), resposta: string_upper("ORANGE"), opcoes: ["BLACK", "RED", "GREEN"], traducao: "ABÓBORAS SÃO __ (LARANJA)", descoberta: false };
	palavra = true
}
	
if (oFundo.sprite_index == sFundoEspaco) {
    perguntas_struct[0] = { pergunta: string_upper("THE _ IS A STAR."), resposta: string_upper("SUN"), opcoes: ["EARTH", "VENUS", "MARS"], traducao: "O _ E UMA ESTRELA. (SOL)", descoberta: false };
    perguntas_struct[1] = { pergunta: string_upper("THE ___ IS A PLANET."), resposta: string_upper("EARTH"), opcoes: ["SAND", "MOON", "SATURN"], traducao: "A ___ E UM PLANETA. (TERRA)", descoberta: false };
    perguntas_struct[2] = { pergunta: string_upper("___ ORBIT AROUND THE SUN."), resposta: string_upper("PLANETS"), opcoes: ["STARS", "METEORS", "ASTEROIDS"], traducao: "___ ORBITAM AO REDOR DO SOL. (PLANETAS)", descoberta: false };
    perguntas_struct[3] = { pergunta: string_upper("THE _ EMITS LIGHT."), resposta: string_upper("SUN"), opcoes: ["EARTH", "MOON", "STAR"], traducao: "O _ EMITE LUZ. (SOL)", descoberta: false };
    perguntas_struct[4] = { pergunta: string_upper("__ HAS RINGS AROUND IT."), resposta: string_upper("SATURN"), opcoes: ["MARS", "VENUS", "JUPITER"], traducao: "__ TEM ANEIS AO SEU REDOR. (SATURNO)", descoberta: false };
    perguntas_struct[5] = { pergunta: string_upper("___ IS THE PLANET WE LIVE IN."), resposta: string_upper("EARTH"), opcoes: ["MARS", "JUPITER", "SATURN"], traducao: "___ E O PLANETA EM QUE VIVEMOS. (TERRA)", descoberta: false };
    perguntas_struct[6] = { pergunta: string_upper("THE __ REFLECTS LIGHT."), resposta: string_upper("MOON"), opcoes: ["SUN", "EARTH", "STAR"], traducao: "A __ REFLETE LUZ. (LUA)", descoberta: false };
    perguntas_struct[7] = { pergunta: string_upper("THE ____ IS THE GALAXY WE LIVE IN."), resposta: string_upper("MILKYWAY"), opcoes: ["MOON", "SUN", "ANDROMEDA"], traducao: "A ____ E A GALAXIA EM QUE VIVEMOS. (VIA LACTEA)", descoberta: false };
    perguntas_struct[8] = { pergunta: string_upper("___ ARE USED TO CAPTURE EARTH'S IMAGES."), resposta: string_upper("SATELLITES"), opcoes: ["MOONS", "PLANETS", "STARS"], traducao: "___ SAO USADOS PARA CAPTURAR IMAGENS DA TERRA. (SATELITES)", descoberta: false };
    perguntas_struct[9] = { pergunta: string_upper("THERE ARE 8 ___ IN OUR SOLAR SYSTEM."), resposta: string_upper("PLANETS"), opcoes: ["STARS", "MOONS", "ASTEROIDS"], traducao: "EXISTEM 8 ___ NO NOSSO SISTEMA SOLAR. (PLANETAS)", descoberta: false };
	palavra = true
}
	return perguntas_struct;
}
	
global.dicionario = []; 
global.dicionario_novo = [];
global.perguntas_descobertas = []

// Função para copiar um objeto
function copiar_array(original) {
    var novo_array = array_create(array_length(original)); // Cria um novo array do mesmo tamanho
    for (var i = 0; i < array_length(original); i++) {
        novo_array[i] = original[i]; // Copia cada elemento
    }
    return novo_array; // Retorna o novo array copiado
}

function copiar_objeto(structo) {
    // Cria um novo objeto vazio
    var novo_objeto = {};

    // Copia diretamente as propriedades do struct original
    novo_objeto.pergunta = structo.pergunta; // Cópia da pergunta
    novo_objeto.resposta = structo.resposta; // Cópia da resposta
    
    // Cópia do array de opções usando a função copiar_array
    if (structo.opcoes != undefined) {
        novo_objeto.opcoes = copiar_array(structo.opcoes); // Cópia do array de opções
    } else {
        novo_objeto.opcoes = []; // Ou define como um array vazio se não estiver definido
    }

    novo_objeto.traducao = structo.traducao; // Cópia da tradução
    novo_objeto.descoberta = structo.descoberta; // Cópia do estado de descoberta

    return novo_objeto; // Retorna o novo objeto copiado
}


function adicionar_pergunta_no_dicionario(indice) {
    // Obtém a resposta da pergunta no índice especificado
    var resposta_texto = perguntas_struct[indice].resposta;

    // Verifica se a resposta já existe no dicionário
    var resposta_existe = false;

    // Itera sobre a lista de perguntas
    var lista_tamanho = array_length(global.dicionario); // Obtém o tamanho do array
    for (var i = 0; i < lista_tamanho; i++) {
        var pergunta = global.dicionario[i]; // Obtém o valor na posição i
        
        // Verifica se a pergunta tem uma propriedade resposta
        if (pergunta != undefined && pergunta.resposta == resposta_texto) {
            resposta_existe = true; // A resposta já existe
            break; // Sai do loop
        }
    }

    // Se a resposta não existe, adiciona uma cópia ao dicionário e ao dicionario_novo
    if (!resposta_existe) {
        var copia_pergunta = copiar_objeto(perguntas_struct[indice]); // Copia o objeto
        array_push(global.dicionario, copia_pergunta); 
        array_push(global.dicionario_novo, copia_pergunta); // Adiciona ao dicionario_novo também
    }
}




