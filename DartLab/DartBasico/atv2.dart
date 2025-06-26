/*Obs:Lembrem-se que as entradas são todas feitas por você através de atribuições em variáveis.
  2- A partir do preço à vista de um determinado produto, calcule o preço total a pagar e o
valor da prestação mensal, referentes ao pagamento parcelado. Se o pagamento for
parcelado em 3 vezes deve ser dado um acréscimo de 10% no total a ser pago. Se o
parcelamento for em 5 vezes, o acréscimo será de 20%. Lembrando que são apenas as 2
opções para parcelamento.
*/

void main() {
  double pagamento = 1000.00;
  int parcela = 3;
  double percentual = 0;
  double nvalor = 0;
  double aumento = 0;
  print('Valor a vista: ${pagamento.toStringAsFixed(2)}');
  if (parcela == 3) {
    percentual = 10;
    print('Percentual de aumento aplicado: ${percentual}');
  } else if (parcela == 5) {
    percentual = 20;
    print('Percentual de aumento aplicado: ${percentual}');
  }

  percentual = percentual / 100;
  aumento = percentual * pagamento;
  nvalor = pagamento + aumento;
  print('Valor do aumento: ${aumento}');
  print('Novo valor, após as parcelas: ${nvalor.toStringAsFixed(2)}');
}
