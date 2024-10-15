import 'dart:io';

void main() {
  print("Digite um número");
  final numero = stdin.readLineSync();

  if (numero != null) {
    final numeroconvertido = int.tryParse(numero);
    if (numeroconvertido != null){
      if (numeroconvertido % 2 == 0) {
        print("numero ${numeroconvertido} par");
      }else{
      print("numero ${numeroconvertido} impar");
    }
    }else{
    print("digite um numero valido");
  }
  }
}
