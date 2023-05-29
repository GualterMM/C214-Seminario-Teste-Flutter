![workflow](https://github.com/GualterMM/C214-Seminario-Teste-Flutter/actions/workflows/android-tests.yml/badge.svg)
# Projeto para o Seminário de C214
Um projeto feito em Flutter para demonstrar o uso de testes automatizados. A aplicação consiste em duas páginas; uma contendo um contador simples, e a outra que realiza um pedido HTTP aguardando por uma resposta em JSON. O projeto inclui testes unitários com e sem mock assim como testes de Widget.

## 🔧 Pré-requisitos
* [Flutter](https://docs.flutter.dev/get-started/install).
* Uma máquina virtual Android. A IDE [Android Studio](https://developer.android.com/studio) permite a fácil criação de máquinas virtuais Android, assim como proporciona a visualização intuitiva de execução do projeto e dos testes.
  - O projeto também pode ser executado em um smartphone Android. Cabe ao usuário que optar por essa opção configurar o dispositivo para rodar o projeto.
* Uma ferramenta de terminal.

## 🚀 Instalando o projeto

Crie um novo diretório na sua máquina. Abra seu terminal no diretório criado e execute o seguinte comando:

```
git clone https://github.com/GualterMM/C214-Seminario-Teste-Flutter.git
```

Logo depois, instale as dependências utilizando o seguinte comando:
```
flutter pub get
```

A aplicação e seus respectivos testes podem ser executados através do Android Studio ou pelo terminal.

## 📱 Utilizando o Android Studio

### Execução do Projeto

1. Abra o projeto na IDE pelo caminho `File -> Open`; selecione o diretório no qual o repositório foi clonado.
2. Execute (ou crie) a sua máquina virtual Android na aba `Device Manager` à direita do editor.
3. Por fim, clique no botão `Run` (▶️) na parte superior do editor para executar o projeto. Isso também pode ser feito pelo atalho `Shift+F10`.

### Execução dos Testes
* Para executar todos os testes, clique com o botão direto na pasta `test` e selecione a opção `Run 'tests in test'`. O atalho para esse comando é `Ctrl+Shift+F10`.
* Para executar apenas um dos testes, repita o procedimento acima, porém selecionando o arquivo individual ao invés da pasta.

## 💻 Utilizando o Terminal

### Execução do Projeto

1. Execute a sua máquina virtual Android.
2. No diretório do projeto, execute o seguinte comando:

```
flutter run
```

### Execução dos Testes

No diretório do projeto, utilize o seguinte comando:

```
flutter test
```
