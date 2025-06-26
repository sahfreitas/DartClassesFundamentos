/*4. Criando uma Classe com Métodos Específicos
Crie uma classe ContaBancaria com os atributos:
titular (String)
_saldo (privado, double)
Crie um construtor para inicializar titular e _saldo.
Crie métodos para:
depositar(double valor): Adiciona um valor ao saldo.
sacar(double valor): Reduz o saldo, mas impede saque se não houver saldo suficiente.
getSaldo(): Retorna o saldo atual.
Teste criando uma conta, depositando, sacando e exibindo o saldo.
*/

class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(this.titular, this._saldo);

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de $valor realizado');
    } else {
      print('Valor inválido');
    }
  }

  void sacar(double valor) {
    if (valor <= _saldo && valor > 0) {
      _saldo -= valor;
      print('Saque de R\$ $valor realizado');
    } else {
      print('Saldo insuficiente ou valor de saque inválido');
    }
  }

  double get getSaldo => _saldo;
}

void main() {
  var conta = ContaBancaria('Beatrice', 10000.0);

  print('Saldo inicial: R\$ ${conta.getSaldo}');

  conta.depositar(5000.0);
  conta.sacar(90.0);

  print('Saldo final: R\$ ${conta.getSaldo}');
}
