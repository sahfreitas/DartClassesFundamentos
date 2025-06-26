/*6. Criando uma Classe Produto com Construtores Nomeados
Crie uma classe Produto com os atributos:
nome (String)
_preco (privado, double)
Crie dois construtores:
Construtor principal que recebe os valores de nome e _preco.
Construtor nomeado Produto.desconto() que recebe um nome, um preço original e um valor de desconto a ser aplicado.
Crie objetos usando ambos os construtores e exiba os preços.
*/
class Produto {
  String nome;
  double _preco;

  Produto(this.nome, this._preco);

  Produto.desconto(String nome, double precoOriginal, double desconto)
    : this.nome = nome,
      this._preco = precoOriginal - (precoOriginal * (desconto / 100));
  void mostrarPreco() {
    print('O produto $nome custa $_preco');
  }
}

void main() {
  var p1 = Produto('Chocolate Amargo', 30.0);
  var p2 = Produto.desconto('Moletom', 1000.00, 5);

  p1.mostrarPreco();
  p2.mostrarPreco();
}
