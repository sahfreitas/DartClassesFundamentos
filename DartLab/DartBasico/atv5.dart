/*Obs:Lembrem-se que as entradas são todas feitas por você através de atribuições em variáveis.
  5- No país de Cotemigos a moeda nacional é a merreca (M$). Sabe-se que sistema
monetário de Cotemigos só utiliza moedas, não utiliza cédulas, e que os valores dos
diferentes tipos de moeda são os seguintes:
Valor (M$) Descrição
1,00 | Moeda de uma merreca
5,00 | Moeda de cinco merrecas
10,00 | Moeda de dez merrecas
50,00 | Moeda de cinqüenta merrecas
100,00 | Moeda de cem merrecas

Devido ao acúmulo de moedas por parte dos Cotemigos, o Governo resolveu abrir uma
concorrência internacional para o desenvolvimento de um software, escrito em linguagem C.
Dado um valor em merreca, o programa deve calcular qual o número mínimo de moedas
necessárias para perfazer o valor especificado.
Exemplo: Se o valor for M$ 187,00, a saída de programa deve ser:
1 moeda(s) de M$ 100,00
1 moeda(s) de M$ 50,00
3 moeda(s) de M$ 10,00
1 moeda(s) de M$ 5,00
2 moeda(s) de M$ 1,00
*/

void main() {
  int valor = 187;
  List<int> moedas = [100, 50, 10, 5, 1];

  print('Valor: M\$ ${valor},00');

  for (int i = 0; i < moedas.length; i++) {
    int numero = valor ~/ moedas[i];
    if (numero > 0) {
      print('${numero} moeda(s) de M\$ ${moedas[i]},00');
    }
    valor %= moedas[i];
  }
}
