/*1. Criando uma Classe Simples
Crie uma classe chamada Pessoa com os atributos:
nome (String)
idade (int)
Crie um construtor para inicializar esses atributos e um método chamado exibirDados() 
que imprime o nome e a idade da pessoa.
Teste criando um objeto da classe Pessoa e chamando o método exibirDados().
*/

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome, Idade: $idade anos');
  }
}

void main() {
  Pessoa p = Pessoa('Joui', 23);
  p.exibirDados();
}
