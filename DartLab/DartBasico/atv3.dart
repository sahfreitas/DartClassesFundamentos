/*Obs:Lembrem-se que as entradas são todas feitas por você através de atribuições em variáveis.
  3- Faça um script que leia o nome e as três notas de uma disciplina de um aluno e ao final
escreva o nome do aluno, sua média e se ele foi aprovado, reprovado ou está de
recuperação, sabendo-se que a média para aprovação é igual ou superior a 7.
*/

void main() {
  String nome = 'Sara';
  double nota1 = 12.75;
  double nota2 = 11;
  double nota3 = 9;
  double media = (nota1 + nota2 + nota3) / 3;

  print('Nome: ${nome}');
  print('1ª Nota: ${nota1}');
  print('2ª Nota: ${nota2}');
  print('3ª Nota:: ${nota3}');
  print('Media: ${media}');
  if (media >= 7) {
    print('Aluno aprovado');
  } else {
    print('Aluno reprovado');
  }
}
