# Inteli - Instituto de Tecnologia e Liderança 

<p align="center">
<a href= "https://www.inteli.edu.br/"><img src="https://www.inteli.edu.br/wp-content/uploads/2021/08/20172028/marca_1-2.png" alt="Inteli - Instituto de Tecnologia e Liderança" border="0"></a>
</p>

# Cell's Journey

## Oncode

## Integrantes: 
- <a href="https://www.linkedin.com/in/eduardo-fran%C3%A7a-porto-345bba164/">Eduardo França Porto</a>
- <a href="https://www.google.com/">Gabriel Sarue Lerner</a>
- <a href="https://www.google.com/">Gustavo Pereira</a>
- <a href="https://www.linkedin.com/in/sbluizfernando/">Luiz F S Borges</a>
- <a href="https://www.linkedin.com/in/matheus-macedo-santos-2a8106194/">Matheus Macedo Santos</a>
- <a href="https://www.linkedin.com/in/rafael-katalan">Rafael Nissim Katalan</a>
- <a href="https://www.google.com/">Raphael Lisboa</a>
- <a href="https://www.google.com/">Victor de Carvalho</a>

## Descrição

📜 Cell's Journey é um jogo de aventura para computador.
<br><br>
Além disso, o objetivo é conscientizar o público de 14 a 17 anos sobre os hábitos que aumentam a probabilidade do desenvolvimento de câncer ao longo da vida e como o mesmo se forma no corpo. 
Para isso é utilizado uma mecânica de aventura em plataforma 2D e dialogos interativos com embasamento científico.

<p align="center">
<img src="https://i.imgur.com/LABxJ1a.png" alt="NOME DO JOGO" border="0">
  Game by <a href="http://www.nyphotographic.com/">Nick Youngson</a> <a rel="license" href="https://creativecommons.org/licenses/by-sa/3.0/">CC BY-SA 3.0</a> <a href="http://pix4free.org/">Pix4free</a>
</p>


## 🛠 Estrutura de pastas

- Raiz<br>
|<br>
|--> documentos<br>
  &emsp;|--> antigos<br>
  &emsp;|--> GDD ONCODE VERSÃO FINAL.pdf<br>
|--> executáveis<br>
  &emsp;|--> Windows<br>
  &emsp;|--> HTML<br>
|--> imagens<br>
|--> src<br>
  &emsp;|--> Deploy final 1<br>
| readme.md<br>

<b>Função de cada pasta do GitHub</b>

<b>documentos</b>: Aqui estarão todos os documentos do projeto, principalmente o <b>GDD (Game Design Document)/Documentação do Sistema</b>. Há uma pasta <b>antigos</b> onde estarão todas as versões antigas da documentação.

<b>executáveis</b>: Aqui estarão todos os executáveis do jogo, prontos para rodar. Existem 2 pastas, uma para binários <b>Windows</b> e uma para a <b>Web/HTML</b>

<b>imagens</b>: As imagens do jogo/sistema e logos prontos para serem utilizados e visualizados.

<b>src</b>: Nesta está localizado todo o código fonte do jogo/sistema, pronto para para ser baixado e modificado.

## 🛠 Instalação

<b>Windows:</b>

Não há instalação, apenas executável. Baixe o arquivo disponível em https://drive.google.com/file/d/10quWsEXV2gZpcMRDW4zGegzkueJ0UUOh/view, extraia-o e execute "Cell's_Journey.exe" como qualquer outro programa.

```
Observe que é necessário que o arquivo "Cell's_Journey.pck" esteja
no mesmo diretório que "Cell's_Journey.exe" para que o jogo inicie
corretamente.
```

<b>HTML:</b>

Não há instalação! Baixe o arquivo "Cell's_Journey_HTML.zip" disponível em https://drive.google.com/drive/folders/1_Z4I31Wn7X2ULDTrfMe5mXXjet4GSAPu, extraia-o e o execute como uma página da web (através de algum navegador).

```sh
Dependendo de suas configurações de firewall, talvez seja necessário
instaurar um web service como xampp ou wampp para que o jogo rode lo-
calmente.
```

## 📈 Exemplo de uso

O principal exemplo de uso do jogo é no ambiente de sala de aula do ensino médio, juntamente com os outros jogos desenvolvidos por toda a Turma-5 do Inteli. Assim, é possível ensinar desde os conceitos macro, micro e psicosociais envolvidos no tratamento e prevenção do câncer.

## 💻 Configuração para desenvolvimento

Para abrir este projeto você necessita das seguintes ferramentas:

-<a href="https://godotengine.org/download"> Godot</a>

Instruções para a configuração do ambiente de desenvolvimento:
```

1) Baixe a source do projeto disponível em https://drive.google.com/file/d/10quWsEXV2gZpcMRDW4zGegzkueJ0UUOh/view.
2) Abra a engine de desenvolvimento (godot).
3) No gerenciador de projetos inicial, clique no botão "importar" e, em seguida, no botão "navegar".
4) Navegue até a pasta source baixada.
5) Selecione o arquivo "project.godot" e em seguida clique no botão "abrir".
6) Pronto. O seu ambiente de desenvolvimento está configurado.

```

## 🗃 Histórico de lançamentos

A cada atualização os detalhes devem ser lançados aqui.

* 1.8 - 14/04/2022
    * Deploy 5° Sprint
    * Melhorias finais no cénario
    * Video de contextualização implementado
    * Correção da bossfight
    * Novas animações adicionadas
    * Textos informativos sobre outros tipos de câncer
    * Mais dialogos do Roger foram implementados 
* 1.6 - 01/04/2022
    * Deploy 4° Sprint 
    * Cénario novo implementado 
    * Melhoria nos dialogos do Roger
    * Novas artes do menu
    * Arma de água mata os NPC's
    * Tela de game over caso caia das plataformas 
    * Boss fight implementada 
    * 
* 1.4 - 18/03/2022
    * Deploy 3° Sprint
    * Menu inicial adicionado
    * Mapa do corpo humano com as fases
    * Função de pausar o jogo
    * Boneco do jogador agora tem vida e toma dano caso colida com NPC
    * Melhoria no cénario
    * Som adicionado
    * Tênis que proporciona que o jogador corra adicionado
    * Arma de agua adicionada
    * Dialogo com o roger implementado 
* 1.2 - 04/03/2022
    * Deploy 2° Sprint
    * Cénario com plataformas melhores 
    * NPC's agora morrem e somem da fase 

* 1.1 - 22/02/2022
    * Movimentação básica do jogador
    * Cénario simples
    * Primeiro inimigo adicionado com colisão

* 1.0 - 18/02/2022
    * Deploy 1° Sprint
    * Validação das ideias com o parceiro de mercado.

## 📋 Licença/License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/Spidus/Teste_Final_1">MODELO GIT INTELI</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://www.yggbrasil.com.br/vr">INTELI, VICTOR BRUNO ALEXANDER ROSETTI DE QUIROZ</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>

## 🎓 Referências

Referências utilizadas no jogo.

1. <https://github.com/iuricode/readme-template>
2. <https://github.com/gabrieldejesus/readme-model>
3. <https://creativecommons.org/share-your-work/>
4. <https://freesound.org/>
5. Músicas estão referenciadas na seção 7 (bibliogafria) do GDD. 
