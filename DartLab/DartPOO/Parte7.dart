/*7. Criando uma Classe Funcionario com Aumento de Salário
Crie uma classe Funcionario com os atributos:
nome (String)
_salario (privado, double)
Crie um getter para o salário.
Adicione um método aumentarSalario(double percentual) que aumenta o salário em uma porcentagem.
Crie um objeto, aumente o salário e exiba o novo valor.
*/

class Funcionario {
  String nome;
  double _salario;

  Funcionario(this.nome, this._salario);

  double get getSalario => _salario;

  void aumentarSalario(double percentual) {
    _salario += _salario * (percentual / 100);
  }
}

void main() {
  var funcionario = Funcionario('Athena', 2100.00);

  print('Salário: ${funcionario.getSalario}');

  funcionario.aumentarSalario(6);

  print('Salário após o aumento: ${funcionario.getSalario}');
}
