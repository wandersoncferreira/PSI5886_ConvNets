# PSI5886_ConvNets
Repositório para desenvolvimento do Trabalho final da disciplina PSI5886 - Introdução à Neurocomputação

**Como instalar o Python**
Normalmente eu utilizo o Miniconda para fazer a instalação dos meus ambientes Python. Ele facilita criar alguns environments bem controlados para aplicações específicas, então posso ter um ambiente com Python versao 2.7 para uso pessoal e na mesma máquina ter um Python com versão 3.4.

Acredito que basta baixar e instalar que os menus são bem explicativos de como prosseguir.
[Miniconda](http://conda.pydata.org/miniconda.html)

**Como instalar o Keras**
A principal fonte de informações para isso se encontra na própria documentação do Keras.
Mas de maneira bem resumida, após instalar o Python e caso desejado criar um ambiente separado.

Basta rodar:
<kbd>pip install keras</kbd>

Porém o Keras precisa dos seus Backends: **TensorFlow** e/ou **Theano**

Para instalar o Tensorflow: [Link](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/g3doc/get_started/os_setup.md)

Para instalar o Theano: [Link](http://deeplearning.net/software/theano/install.html)


Tentei padronizar uma vez no trabalho a instalação dos backends, porém cada sistema operacional aparentemente tem suas peculiaridades, então acho melhor apenas referenciar o próprio site oficial.

**Como instalar o Ipython**
Eu normalmente utilizo a versão Jupyter 3.4. Para instalar basta executar:
<kbd>pip install ipython notebook</kbd>

ou utilizando o *conda*
<kbd>conda install ipython notebook</kbd>

* Docker + Tensorflow + Keras

Uma alternativa a instalação no proprio ambiente usando miniconda e virtualenv ( que deveria ser suficiente ) é a utilização com o Docker.

** Docker & Kitematic + Tensorflow

Eu uso uma distribuição de Linux baseada no Debian e a instalação foi exatamente essa:
[Link](https://docs.docker.com/engine/installation/linux/debian/)

Para o Windows a instalação é NNF (next-next-finish) e de brinde ainda vem o Kitematic.

Eu gosto de utilizar o Kitematic porque facilita o trabalho de encontrar os containers corretos, mas nada que seja impossivel.
O suporte do Kitematic no Windows é oficial e basta achar o programa no menu iniciar após a instalação.
No Linux existem algumas alternativas, mas uma delas é [Link](https://github.com/docker/kitematic). Porem para iniciar o Kitematic é necessar que:
- serviço do docker esteja ativo
- e utilizar o npm.

Para facilitar aquie está um "run.sh" que fiz:

run.sh
---------------------------
       #!/bin/bash
       trap finish INT

       function finish() {
              /etc/init.d/docker stop
       }
       if [ "$(id -u)" != "0" ]; then
              echo "Run as superuser."
              exit 1
       fi
       /etc/init.d/docker start
       npm run start
       finish
       
Para quem não quiser usar o kitematic, a instalação do tensorflow está no seguinte link:
[Link](https://www.tensorflow.org/versions/r0.11/get_started/os_setup.html#docker-installation)

Para quem estiver usando Kitematic, basta usar o campo de busca e digitar "tensorflow" e baixar o que tiver o maior número de downloads.


** Keras

Econtrei no docker.hub um container já com Keras instalado, mas não possui o Jupyter.
Então instalei da seguinte forma:

        docker run tensorflow/tensorflow bash -c "pip install --upgrade pip; pip install keras"
        docker commit $(docker ps -l | tail -n 1 | cut -f1 -d' ') tensorflow_keras
        docker create tensorflow_keras # o id gerado é o nome do seu container com keras        


Espero não ter esquecido nenhuma instrução. Qualquer coisa me avisem. [Fabio]

Qualquer dúvida é só falar!
