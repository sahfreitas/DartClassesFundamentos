/*Obs:Lembrem-se que as entradas são todas feitas por você através de atribuições em variáveis.
  4-Escrever um programa em dart que lê 3 valores reais a, b e c e calcula:
a) a área do triângulo que tem a por base e b por altura.
b) a área do círculo de raio c.
c) a área do trapézio que tem a e b por bases e c por altura.
d) a área do quadrado de lado b.
e) a área do retângulo de lados a e b.
*/

void main() {
  double a = 3;
  double b = 5;
  double c = 9;
  double triangulo = a * b / 2;
  double circulo = 3.14 * (c * c);
  double trapezio = (a + b) * c / 2;
  double quadrado = b * b;
  double retangulo = a * b;

  print('a = ${a}');
  print('b = ${b}');
  print('c = ${c}');

  print('A área do triângulo que tem a por base e b por altura: ${triangulo}');
  print('A área do círculo de raio c: ${circulo}');
  print(
    'A área do trapézio que tem a e b por bases e c por altura: ${trapezio}',
  );
  print('A área do quadrado de lado b: ${quadrado}');
  print('A área do retângulo de lados a e b: ${retangulo}');
}
