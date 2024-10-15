import 'dart:io';

void main() {
  double nota1 = 0.00;
  print("Digite a primeira nota:");
  nota1 = double.parse(stdin.readLineSync()!);

  double nota2 = 0.00;
  print("Digite a segunda nota:");
  nota2 = double.parse(stdin.readLineSync()!);

  double nota3 = 0.00;
  print("Digite a terceira nota:");
  nota3 = double.parse(stdin.readLineSync()!);

  double nota4 = 0.00;
  print("Digite a quarta nota:");
  nota4 = double.parse(stdin.readLineSync()!);

  final media = (nota4 + nota3 + nota2 + nota1) / 4;
  print("Media ${media}");
  if (media > 0 && media < 4.99) {
    print("${media}=Aluno reprovado");
  } else if (media > 5 && media < 6.99) {
    print("${media}=aluno em recuperação");
  } else if (media > 7) {
    print("${media}=aluno aprovado");
  }
  ;
}
