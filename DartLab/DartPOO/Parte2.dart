/*2. Encapsulamento com Variáveis Privadas
Modifique a classe Pessoa do exercício anterior para que o atributo idade seja privado (_idade).
Adicione um getter getIdade() para acessar o valor da idade e um setter setIdade(int novaIdade) para
 modificar a idade, garantindo que ela não seja negativa.
Teste criando um objeto e alterando a idade com o setter
*/
class Pessoa {
  String nome;
  int _idade;

  Pessoa(this.nome, this._idade);

  int get getIdade => _idade;
  void set setIdade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print('Idade não pode ser negativa');
    }
  }

  void exibirDados() {
    print('Nome: $nome, Idade: $_idade anos');
  }
}

void main() {
  Pessoa p1 = Pessoa('Joui', 23);
  p1.exibirDados();

  Pessoa p2 = Pessoa('Dante', 27);
  p2.exibirDados();

  p2.setIdade = 30;
  p2.exibirDados();

  p1.setIdade = -4;
  p1.exibirDados();
}
