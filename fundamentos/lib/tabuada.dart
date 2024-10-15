import 'dart:io';

void main() {
  int i;
  print("Tabuada de 1 á 10 ?");
  final numero = stdin.readLineSync();

  if (numero != null && int.tryParse(numero) != null) {
    final numconvertido = int.tryParse(numero);
    if (numconvertido != null && numconvertido <= 10) {
      print("Tabuada do ${numconvertido}");
      for (i = 0; i < 11; i++) {
        print(' $i * $numconvertido = ${i * numconvertido}');
      }
      ;
    }else
  print('Número acima do solicitado');
  }
}
