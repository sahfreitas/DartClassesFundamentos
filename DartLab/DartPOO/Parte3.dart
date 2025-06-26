/*3. Criando uma Classe Carro com Métodos
Crie uma classe chamada Carro com os atributos:
marca (String)
modelo (String)
_preco (privado, int)
Crie um construtor para inicializar a classe.
Adicione um getter getPreco() e um setter setPreco(int novoPreco), garantindo que o preço nunca seja negativo.
Adicione um método exibirDetalhes() que imprime todas as informações do carro.
Crie dois objetos de Carro, altere seus preços e exiba os detalhes.
*/

class Carro {
  String marca;
  String modelo;
  int _preco;

  Carro(this.marca, this.modelo, this._preco);

  int get getPreco => _preco;
  void set setPreco(int novoPreco) {
    if (novoPreco >= 0) {
      _preco = novoPreco;
    } else {
      print('Preço não pode ser negativo');
    }
  }

  void exibirDetalhes() {
    print('Marca: $marca, Modelo: $modelo, Preço: $_preco');
  }
}

void main() {
  Carro c1 = Carro('Chevrolet', 'Impala 1967', 200000);
  c1.exibirDetalhes();

  Carro c2 = Carro('Dodge', 'Dodge A100', 100000);
  c2.exibirDetalhes();

  c1.setPreco = 300000;
  c1.exibirDetalhes();

  c2.setPreco = 150000;
  c2.exibirDetalhes();
}
