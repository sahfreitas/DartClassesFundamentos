/*5. Criando uma Classe Aluno e Manipulando Dados
Crie uma classe chamada Aluno com os atributos:
nome (String)
_nota1 e _nota2 (privadas, double)
Crie um construtor que recebe nome e as duas notas.
Adicione um método calcularMedia() que retorna a média das notas.
Crie um método verificarAprovacao() que retorna "Aprovado" se a média for maior ou igual a 7 e 
"Reprovado" caso contrário.
Crie um objeto de Aluno, calcule sua média e exiba se foi aprovado ou reprovado.
*/
class Aluno {
  String nome;
  double _nota1;
  double _nota2;

  Aluno(this.nome, this._nota1, this._nota2);

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  void verificarAprovacao() {
    double media = calcularMedia();
    print('A média do/da aluno(a) $nome é: $media');
    if (media < 7) {
      print('Reprovado!');
    } else {
      print('Aprovado!');
    }
  }
}

void main() {
  var a1 = Aluno('Carina', 8.5, 10);

  print('A média do aluno: ${a1.calcularMedia()}');
  a1.verificarAprovacao();
}
