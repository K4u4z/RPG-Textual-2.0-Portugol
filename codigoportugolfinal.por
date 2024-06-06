programa
{
	inclua biblioteca Util --> u
   
    //Status padrão do personagem principal
    inteiro hp = 20,hpinicial = 20, ataque = 5,defesa = 5, velocidade = 5, xp = 0

    //Status padrão do primeiro inimigo

    inteiro inihp = 20, iniataque = 5,inidefesa = 5, inivelocidade = 5
    //  nome do personagem
    cadeia  nome

    inteiro gerar, gerarxp
    
	funcao inicio()
	{
		inteiro menuclasse = 0

		escreva("insira o nome do personagem\n")
		leia(nome)

		enquanto (menuclasse !=1 e  menuclasse !=2 e menuclasse !=3 e menuclasse != 4) {
            escreva("Selecione a classe do personagem \n1-Druida \n2-Guerreiro \n3-Barbaro \n4-Ladrão\n")
            leia(menuclasse)
            
            escolha (menuclasse) {
                caso 1:
				escreva("Você escolheu a classe Druida\n")
				hp += 2
                    pare
                caso 2:
				escreva("Você escolheu a classe Guerreiro\n")
                    ataque += 2
                    pare

                caso 3:
				escreva("Você escolheu a classe Barbaro\n")
                    defesa += 2
                    pare

                caso 4:
				escreva("Você escolheu a classe Ladrão\n")
                    velocidade += 2
                    pare

                caso contrario:
				escreva("Opção invalida digite novamente\n")

                    pare
            }
		}
                    escreva(" Bem vindo jogador ",nome,"\n")

        escreva("Em uma casa no meio da floresta, você é acordado com uma sensação de estranha\nEntão decide vasculhar a casa... acaba se assustando ao descobrir que o mundo ao seu redor mudou drasticamente\nVultos e sons perturbadores preenchem o ambiente...\nAo olhar pela janela, se depara com um cenário estranho e surreal, completamente diferente do que estava habituado.")
        escreva("\n")
        escreva("Decide vasculhar a casa e acha uma especie de adaga de pequeno porte para se defender , então decide sair da casa\n para encontrar uma maneira de sair desse pesadelo...\nDepois de sair de casa e ver que tudo está diferente você está em uma floresta e tem dois caminho para onde ir\n")
        escreva("\n")
        ato1()
        informacoes()
        escreva("Após o embate a noite está caindo e ficando frio ",nome," resolve dormir alí mesmo na caverna ,para se previnir de ataques no meio da noite",nome,"\nApós passar a noite na caverna",nome," continua sua jornada,ele encontra um sobrevivente e o aborda\nConversando com esse sobrevivente descobre  que a uma forma de se salvar e sair dessa realidade, mas o sobrevivente diz que tinha um preço que teria que pagar, tendo que derrota Elff o rei dragão. \n")
        escreva("\n")
        escreva("Não seria nada fácil chegar até esse vilão é derrotá-lo, ",nome," sem pensar fala que vai tentar então o sobrevivente da um mapa a ele\n\nApós olhar o mapa percebe que tem que chegar em uma ilha tinha dois caminhos possíveis até essa ela\n")
        ato2()
        informacoes()
        escreva("Na visão dele ",nome," tinha dois caminhos para seguir sua jornada ")
        ato3()
        informacoes()
        escreva("Ao escolher enfrentar o elff ",nome," vai em direção ao covil, em cima de uma montanha que chega nela subindo escadas\nessa montanha era tão alta, que nem um pegasus conseguiria voar até em cima\nsendo assim, só conseguiria chegar até o rei Dragão pelas escadas\n")
        ato4()
        escreva("após ",nome," derrotar o dragão um portal começou a se abrir uma luz branca saia desse portal, ele entrou nesse portal,\n  E acordou na sua cama assustado percebendo que isso tudo era um sonho.\n")

            }
        
	
	
	
	//Esse metodo é responsável por exibir o ato 1(a primeira parte da história).
	funcao ato1(){
		inteiro caminho1 = 0

        faca {
            escreva("Ao sair da sua casa e ver que está tudo diferente ",nome," fica com dúvida para onde ir, surgem duas possibilidades:\n (1) - Seguir o caminho de uma estrela que está mais que as outras\n (2) - Subir uma grande montanha\n")
            escreva("Escolha uma das opções acima\n")
            leia(caminho1) 
            
            escolha (caminho1) {
                caso 1:
                    escreva("Enquanto seguia a estrela, foi apreciando esse mundo completamente diferente até chegar em uma área com árvores gigantes\nEm seu caminho estava lá uma Aranha\n")
                    escreva("A aranha (nivel 1) ataca\n")
                    se (velocidade > inivelocidade) {
                        luta()
                    } senao {
                        lutainimigo()
                    }
                    escreva("Ao passar pelo inimigo, acaba ouvindo barulhos estranhos e acaba seguindo o som, se deparando com uma caverna\nPara descer precisará escorregar pelas vinhas da caverna\n")
                    escreva("\n")
                    escreva("Ao descer a caverna, descobre que o barulho que tinha escutado eram goblins bastante agressivos segurando adagas\n")
                    escreva("Goblins(nível 2) atacam você\n")
                    para (inteiro contador = 1; contador <= 2; contador++) {
                        randomnivel2()
                        se (velocidade > inivelocidade) {
                            luta()
                        } senao {
                            lutainimigo()
                        }
                    }


                    pare

                caso 2:
                    escreva("Ao caminhar em direção a montanha e apreciar a paisagem totalmente diferente,\n chegando no pé da montanha, acaba encontrando ruínas,\n ao entrar numa espécie de salão foi supreendido por esqueletos\n")
                    escreva("Esqueletos(Nível2) atacam você\n")
                    para (inteiro contador = 1; contador <= 2; contador++) {
                        randomnivel1()
                        se (velocidade > inivelocidade) {
                            luta()
                        } senao {
                            lutainimigo()
                        }


                    }


                    escreva(nome," mesmo cansado decide continuar a subir, e percebe que ao subir a montanha, acaba avistando um baú mais para conseguir pegar terá que escalar\n")
                    escreva("\n")
                    escreva("Ao pegar o baú Resolve não subir mais, prefere continuar seu percurso pela beira da montanha\nOnde acaba encontrando uma parte rochosa difícil de caminhar e do chão surge um Golem de pedra\n")
                    randomnivel2()
                    se(velocidade>inivelocidade){
                        luta()
                    }senao{
                        lutainimigo()
                    }
                    pare
                caso contrario:
                    escreva("entrada de dados invalida\n")
                    pare

            }

        } enquanto (caminho1 != 1 e caminho1 != 2)
	}
	//Esse metodo é responsável por exibir o ato 2(a segunda parte da história).
    	funcao ato2(){
    		
        inteiro caminho2 = 0

        faca {
            escreva("Ao olhar o mapa ",nome," vê as duas opções:\n (1) - ir pelo mar de barco\n (2)-ir pela ponte \n")
            escreva("Escolha uma das opções acima\n")
            leia(caminho2) 
            escolha (caminho2) {
                caso 1:
                    escreva(nome," escolhe ir pelo mar, indo em direção ao mar percebe que na beira do mar haveria um barco, e começa a navegar\nPorém conforme ele navega o clima ficá mais denso com raios e chuvas...\n")
                    escreva("\n")
                    escreva("mas ele continua em direção a ilha, porém tudo começa a tremer e um polvo gigante começa a emergir do fundo do mar\n")
                    escreva("Polvo Nível 3\n")
                    randomnivel3()
                    se(velocidade>inivelocidade){
                        luta()
                    }senao{
                        lutainimigo()
                    }
                    escreva("Após derrotar o polvo ",nome," fica bastante aliviado, estava chegando cada vez mais perto de sair daquela realidade então avista a ilha\nE dorme para recuperar as suas forças.....\n")


                    pare

                caso 2:
                    escreva("Ao escolher ir pela ponte ",nome," avista a ponte ,ele caminha nessa ponte, tanto que começa a chover\ne olha para a frente e já se depara com o primeiro monstro\nEle sabia que não seria dificil porém tinham muitos mais deles\n")
                    para(inteiro contador=1;contador<=4;contador++) {
                        randomnivel3()
                        se (velocidade > inivelocidade) {
                            luta()
                        } senao {
                            lutainimigo()
                        }
                    }

                    escreva("Após derrotar todos os monstros ",nome," olha para a frente e percebe que chegou na ilha \nSó que estava bastante cansado, e prentende descansar para poder seguir em frente com mais facilidade\n")

                    pare
                caso contrario:
                    escreva("entrada de dados invalida\n")
                    pare

            }

        } enquanto (caminho2 != 1 e caminho2 != 2)
    }
	//Esse metodo é responsável por exibir o ato 3(a terceira parte da história)
    	funcao ato3(){
        inteiro caminho3 =0
        
        escreva("Ao chegar na ilha ",nome," tem duas opções:\n (1) - Domar um pegasus para chegar ao topo da ilha\n (2) - Atravessar uma caverna submerssa\n")
        escreva("Escolha uma das opções acima\n")
        leia(caminho3)
        faca{
        escolha (caminho3) {
            caso 1:
                escreva("Ao escolher domar o pegasus, vai até um oásis onde estava, mas também o gigante ao olhar em volta...\nTerá que enfrentar o gigante para chegar no pegasus, olha para o gigante e vai para cima com todas as suas forças\n")
                escreva("Gigante (nível 4) ataca você\n")
                randomnivel4()
                se (velocidade > inivelocidade) {
                    luta()
                } senao {
                    lutainimigo()
                }

                escreva("Após uma violenta batalha ",nome," vence o combate, e descansa para poder derrotar elff o rei dragão ele teria que descansar\nSendo assim ele doma o pegasus e  sobe para ir em direção ao topo da montanha....\n")
                pare

            caso 2:
                escreva("Ao passar um dia e meio descendo para a caverna\n ",nome," chega na metade do caminho era por sorte dele \nEra uma caverna de cristal azul que refletia a cor do céu até o final da caverna\n")
                escreva("\n")
                escreva("Mas ele mal sabia os perigos que tinha nela, seguindo em direção da caverna\n ",nome," vê a horda de morcegos ele percebe que não tinha jeito...\nE partiu para enfrentar eles\n")
                escreva("Morcegos (nível 3) atacam você\n")

                para(inteiro contador=1;contador<=3;contador++){
                    randomnivel3()
                se (velocidade > inivelocidade) {
                    luta()
                } senao {
                    lutainimigo()
                }

                }
                escreva(nome," derrotou todos os morcegos, mas com isso gastou muita energia. \nEle escolheu não parar e continuou sua jornada.\nPercebendo uma luz no final da caverna seria a saída até que chega no final da caverna, indo direto para o topo da ilha....\n")
                pare
            caso contrario:
                escreva("entrada de dados invalida\n")
                pare
        }
        }enquanto(caminho3!=1 e caminho3!=2)
    	}
 	//Esse metodo é responsável por exibir o ato 4(a quarta parte da história).
 	funcao ato4(){
        inteiro caminho4=0
        faca{
        escreva("Qual escolha deseja fazer: \n (1) batalhar contra o rei dragão \n (2) fugir\n")
        escreva("Escolha uma das opção aciman\n")
        leia(caminho4)

        escolha (caminho4) {
            caso 1:
                escreva("Ele percebia que estava chegando perto, pois a chama do dragão era tão quente que mesmo de longe ele sentia o calor\nCom toda sua garra e vontade de sair do lugar onde se encontrava",nome," continuou para o rei dragão\nEle olhou, empunhou sua arma e foi em direção ao dragão Sabendo que seria sua única chance de sair da realidade.\n")
                escreva("Rei dragão (nível 5) ataca você\n")
                randomnivel5()
                lutafinal()

            caso 2:
                escreva(nome," ficou com receio de enfrentar o rei dragão e saiu daquela ilha o mais rápido possível\n")
                escreva("Mas ao dar as costas para ilha, avistou o rei dragão vindo em direção a ele soltando uma rajada de fogo tão forte que era impossível de conseguir reagir\n",nome," fecha os olhos , e  acorda na sua cama com o coração disparado percebendo que tudo era apenas um sonho\n")
                pare

            caso contrario:
                escreva("entrada de dados invalida\n")
                pare
        }
        } enquanto (caminho4 != 1 e caminho4 != 2)
    }
    		//Metodo utilizado para verificar se o personagem pode subir de nível dependendo da condição.
    		funcao subirnivel() {
        inteiro xplimite=50
        se (xp > xplimite) {
            hpinicial += 4
            ataque += 2
            defesa += 2
            velocidade += 2
        }
        xplimite +=50

    }
    		//Metodo para realizar o ataque do inimigo
    		funcao inteiro ataqueinimigo(){
			gerar = u.sorteia(0,1)
			retorne gerar
		}
		//Metodo para geração do XP para subir de nível
		funcao inteiro geradorxp() {
        gerar = u.sorteia(50,100)
        retorne gerar

    }
    		//Metodo para recuperar vida
    	   	funcao recuperarvida(){
        hp = hpinicial
    }
    		//Metodo resposável por exibir as informações do usuario caso desejado
    		funcao informacoes() {
        escreva("Veja suas informações\n")
        escreva("vida ",hp,"\n")
        escreva("ataque ",ataque,"\n")
        escreva("defesa ",defesa,"\n")
        escreva("velocidade ",velocidade,"\n")
        escreva("\n")
    }
    		//Metodo para reativar o status base do inimigo, com valores de inimigo nível 1
          funcao randomnivel1() {
        
        inihp = u.sorteia(15,20)
        iniataque = u.sorteia(5,6)
        inidefesa = u.sorteia(5,6)
        inivelocidade = u.sorteia(5,6)
    }
    		//Metodo para reativar o status base do inimigo, com valores de inimigo nível 2
    		funcao randomnivel2() {
       
        inihp = u.sorteia(15,25)
        iniataque = u.sorteia(5,7)
        inidefesa = u.sorteia(5,7)
        inivelocidade = u.sorteia(5,7)
    }
 		//Metodo para reativar o status base do inimigo, com valores de inimigo nível 3
    		funcao randomnivel3() {
        
        inihp = u.sorteia(20,30)
        iniataque = u.sorteia(7,10)
        inidefesa = u.sorteia(7,10)
        inivelocidade = u.sorteia(7,10)
    }   
		//Metodo para reativar o status base do inimigo, com valores de inimigo nível 4
   		funcao randomnivel4() {
        
        inihp = u.sorteia(25,35)
        iniataque = u.sorteia(10,15)
        inidefesa = u.sorteia(10,15)
        inivelocidade = u.sorteia(10,15)
    }
    		//Metodo para reativar o status base do inimigo, com valores de inimigo nível 5
    		funcao randomnivel5(){
        inihp = 40
        iniataque = 20
        inidefesa = 20
        inivelocidade = 35
    }
    		//Metodo para realizar o combate caso a velocidade do personagem seja maior que a do inimigo
    	     funcao luta() {

        inteiro escolher = 0



        faca {
            escreva("==================================================================\n")
            escreva("você entrou no combate selecione a opção para (1) atacar ou (2) correr\n")
            escreva("==================================================================\n")
            escreva("vida do usuario ",hp,"\n")
            escreva("vida do inimigo ",inihp,"\n")

            leia(escolher)

            escolha (escolher) {
                caso 1:
                    escreva("você atacou o inimigo\n")
                    inihp -= ataque / 2
                    pare

                caso 2:
                    escreva("você correu da batalha\n")
                    pare


                caso contrario:
                    escreva("opção invalida digite a opção novamente\n")
                    pare
            }
            se (escolher != 2) {
                se (inihp > 0) {
                    escolher = ataqueinimigo()
                    escolha (escolher) {
                        caso 0:
                            escreva("O inimigo aplicou um ataque\n")
                            hp -= iniataque / 2
                            pare
                        caso 1:
                            escreva("O inimigo errou o ataque\n")
                            pare
                    }
                }
            }

        } enquanto (hp > 0 e inihp > 0 e escolher != 2)


        se (escolher == 2) {
            escreva("\n")
        } senao se (hp <= 0) {
            escreva("você foi derrotado\n")
            
        } senao {
            escreva("você derrotou o inimigo\n")
            xp = geradorxp()
            escreva("Você ganhou ",xp," de xp\n")

            recuperarvida()
            subirnivel()
        }
    }
    		//Metodo para realizar o combate caso a velocidade do personagem seja menor que a do inimigo
    		funcao lutainimigo() {

        inteiro escolher = 0, escolherini = 0


        //personagem


        faca{
            escreva("==================================================================\n")
            escreva("você entrou no combate selecione a opção para (1) atacar ou (2) correr\n")
            escreva("==================================================================\n")
            escreva("vida do usuario ",hp,"\n")
            escreva("vida do inimigo ",inihp,"\n")

            leia(escolher) 
            se (escolherini != 2) {
                se (inihp > 0) {
                    escolherini = ataqueinimigo()
                    escolha (escolherini) {
                        caso 0:
                            escreva("O inimigo aplicou um ataque\n")
                            hp -= iniataque / 2
                            pare
                        caso 1:
                            escreva("O inimigo errou o ataque\n")
                            pare
                    }
                }
            }
            escolha (escolher) {
                caso 1:
                    escreva("você atacou o inimigo\n")
                    inihp -= ataque / 2
                    pare

                caso 2:
                    escreva("você fugiu da batalha\n")
                    pare

                caso contrario:
                    escreva("opção invalida digite a opção novamente\n")
                    pare
            }

        }enquanto(hp > 0 e inihp > 0 e escolher != 2)

        se (escolher == 2) {
            escreva("\n")
        } senao se (hp <= 0) {
            escreva("você foi derrotado\n")
            
        } senao {
            escreva("você derrotou o inimigo\n")
            xp = geradorxp()
            escreva("Você ganhou ",xp," de xp\n")

            recuperarvida()
            subirnivel()
        }


    
}
		funcao lutafinal() {

        inteiro escolher = 0, escolherini = 0


        //personagem


        faca {
            escreva("==================================================================\n")
            escreva("você entrou no combate selecione a opção para (1) atacar ou (2) correr\n")
            escreva("==================================================================\n")
            escreva("vida do usuario ",hp,"\n")
            escreva("vida do inimigo ",inihp,"\n")

            leia(escolher)
            se (escolherini != 2) {
                se (inihp > 0) {
                    escolherini = ataqueinimigo()
                    escolha (escolherini) {
                        caso 0:
                            escreva("O inimigo aplicou um ataque\n")
                            hp -= iniataque / 2
                            pare
                        caso 1:
                            escreva("O inimigo errou o ataque\n")
                            pare
                    }
                }
            }
            escolha (escolher) {
                caso 1:
                    escreva("você atacou o inimigo\n")
                    inihp -= ataque / 2
                    pare
                    caso contrario:
                    escreva("opção invalida digite a opção novamente\n")
                    pare
            }

        }enquanto(hp > 0 e inihp > 0)


        se (hp <= 0) {
            escreva("você foi derrotado\n")
            
        } senao {
            escreva("você derrotou o inimigo\n")
            xp = geradorxp()
            escreva("Você ganhou ",xp," de xp\n")

            recuperarvida()
            subirnivel()
        }


    }
		

}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 19851; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */