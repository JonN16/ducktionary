// Inicializa a estrutura de skins como uma variável global
global.skins_struct = [];

// Define as skins com suas propriedades
global.skins_struct[0] = { skin: sPato2, corre: sPato2Corre_1, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false };
global.skins_struct[1] = { skin: sPatoman, corre: sPatomanAndando, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false };
global.skins_struct[2] = { skin: BatPato, corre: BatPatoAndando, desbloqueada: true, raridade: "raro", preco: 100, sorteio: false }; 
global.skins_struct[3] = { skin: sPato2Ninja, corre: sPato2Ninja_Corre, desbloqueada: false, raridade: "raro", preco: 0, sorteio: true }; 
global.skins_struct[4] = { skin: sPato2Fantasma, corre: sPato2Fantasma_Corre, desbloqueada: true, raridade: "raro", preco: 300, sorteio: false }; 
global.skins_struct[5] = { skin: sCyclope, corre: sCyclope_Corre, desbloqueada: true, raridade: "raro", preco: 400, sorteio: false }; 
global.skins_struct[6] = { skin: sPato2_Choque, corre: sPato2_Choque, desbloqueada: false, raridade: "lendário", preco: 0, sorteio: true };
global.skins_struct[7] = { skin: sPato2_Astronauta, corre: sPato2_Astronauta_Corre, desbloqueada: false, raridade: "lendário", preco: 0, sorteio: true };
global.skins_struct[8] = { skin: sPato2_boxeador, corre: sPato2_boxeador_Corre, desbloqueada: false, raridade: "lendário", preco: 0, sorteio: true };
global.skins_struct[9] = { skin: sPato2_fazendeiro, corre: sPato2_fazendeiro_Corre, desbloqueada: false, raridade: "comum", preco: 80, sorteio: false }; 
global.skins_struct[10] = { skin: sPato2_chefe, corre: sPato2_chefe_Corre, desbloqueada: false, raridade: "raro", preco: 550, sorteio: false }; 
global.skins_struct[11] = { skin: sPato2_pirata, corre: sPato2_pirata_Corre, desbloqueada: false, raridade: "comum", preco: 0, sorteio: true }; 
global.skins_struct[12] = { skin: sPato2_terno, corre: sPato2_terno_Corre, desbloqueada: false, raridade: "raro", preco: 300, sorteio: false };

// Define a skin escolhida globalmente
escolhida = global.SkinAtual;
 

global.Pato1skins_struct = [];

// Define as skins com suas propriedades
global.Pato1skins_struct[0] = { skin: sPato1, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false}
global.Pato1skins_struct[1] = { skin: sPato1_Coringa, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false}
global.Pato1skins_struct[2] = { skin: sPato1_Colorido, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false}
global.Pato1skins_struct[3] = { skin: sPato1_Dourado, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false}

// Define a skin escolhida globalmente
escolhidaPato1 = global.SkinPato1Atual;


global.Canhaoskins_struct = [];

// Define as skins com suas propriedades
global.Canhaoskins_struct[0] = { skin: sCanhao, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false };
global.Canhaoskins_struct[1] = { skin: sCanhaoCoringa, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false };
global.Canhaoskins_struct[2] = { skin: sCanhaoColorido, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false };
global.Canhaoskins_struct[3] = { skin: sCanhaoDourado, desbloqueada: true, desbloqueada: true, raridade: "comum", preco: 0, sorteio: false };

// Define a skin escolhida globalmente
escolhidaCanhao = global.SkinCanhaoAtual;