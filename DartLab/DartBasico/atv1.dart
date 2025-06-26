/*Obs:Lembrem-se que as entradas são todas feitas por você através de atribuições em variáveis.
  1- As organizações tabajara resolveram dar um aumento de salário aos seus colaboradores
e você precisa desenvolver um programa que calcule os reajustes.
a. Faça um programa que recebe o salário de um colaborador e o reajuste segundo o
seguinte critério, baseado no salário atual;(Entrada será fixa) por enquanto
Critérios:
b. Salários até R$ 1080,00 (incluindo): aumento de 20%;
c. Salários entre R$ 1080,00 e R$1700,00: aumento de 15%;
d. Salários entre R$ 1700,00 e R$ 2000,00: aumento de 10%;
e. Salários de R$ 2000,00 em diante: aumento de 5%
Após o aumento ser realizado; informe na tela;
a. O salário antes do reajuste;
b. O percentual de aumento aplicado;
c. O valor do aumento;
d. O novo salário, após o aumento.*/

void main() {
  double salario = 1000.00;
  double percentual = 0;
  double nsalario = 0;
  double aumento = 0;
  print('Salário antes do reajuste: ${salario}');
  if (salario <= 1080.00) {
    percentual = 20;
    print('Percentual de aumento aplicado: ${percentual}');
  } else if (salario <= 1700.00) {
    percentual = 15;
    print('Percentual de aumento aplicado: ${percentual}');
  } else if (salario <= 2000.00) {
    percentual = 10;
    print('Percentual de aumento aplicado: ${percentual}');
  } else {
    percentual = 5;
    print('Percentual de aumento aplicado: ${percentual}');
  }
  percentual = percentual / 100;
  aumento = percentual * salario;
  nsalario = salario + aumento;
  print('Valor do aumento: ${aumento}');
  print('Novo salário, após o aumento: ${nsalario}');
}
