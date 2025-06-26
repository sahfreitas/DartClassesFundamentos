/*8. Criando um Cadastro de Pessoas
Crie uma classe Cadastro que armazena objetos da classe Pessoa em uma lista.
Adicione métodos para:
adicionarPessoa(Pessoa p): Adiciona uma nova pessoa à lista.
listarPessoas(): Exibe todas as pessoas cadastradas.
No programa principal, crie um menu interativo que permite ao usuário adicionar e listar pessoas.
*/

import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome, Idade: $idade anos');
  }
}

class Cadastro {
  List<Pessoa> pessoas = [];

  void cadastrarPessoa(Pessoa p) {
    pessoas.add(p);
    print('Pessoa adicionada!');
  }

  void listarPessoas() {
    if (pessoas.isEmpty) {
      print('Nenhuma pessoa cadastrada.');
    } else {
      for (var pessoa in pessoas) {
        pessoa.exibirDados();
      }
    }
  }
}

void main() {
  Cadastro cadastro = Cadastro();

  while (true) {
    print('\n1 - Cadastrar Pessoas');
    print('2 - Listar Pessoas');
    print('3 - Sair');
    stdout.write('Escolha: ');
    String? opcao = stdin.readLineSync();

    if (opcao == '1') {
      stdout.write('Nome: ');
      String? nome = stdin.readLineSync();
      stdout.write('Idade: ');
      int? idade = int.tryParse(stdin.readLineSync() ?? '');
      if (nome != null && idade != null) {
        cadastro.cadastrarPessoa(Pessoa(nome, idade));
      } else {
        print('Entrada inválida.');
      }
    } else if (opcao == '2') {
      cadastro.listarPessoas();
    } else if (opcao == '3') {
      break;
    } else {
      print('Opção inválida.');
    }
  }
}
