import 'dart:io';

void main(){
  List<Map<String, String>> registros = [];

  while (true) {
    print('Digite o nome e o telefone (separados por "|") ou "sair" para encerrar:');
    String? entrada = stdin.readLineSync();

    // Verifica se o usuário deseja sair
    if (entrada?.toLowerCase() == 'sair') {
      break;
    }

    // Divide a entrada em nome e telefone
    List<String> partes = entrada!.split('|').map((parte) => parte.trim()).toList();

    // Verifica se foram fornecidos exatamente 2 partes
    if (partes.length == 2) {
      String nome = partes[0];
      String telefone = partes[1];

      // Verifica se o telefone possui 15 caracteres
      if (telefone.length == 15) {
        // Adiciona o registro à lista
        registros.add({'nome': nome, 'telefone': telefone});
      } else {
        print('Telefone inválido. Deve ter 15 caracteres.');
      }
    } else {
      print('Entrada inválida. Utilize o formato: Nome | Telefone');
    }
  }

  // Exibir os registros cadastrados
  print('\nRegistros cadastrados:');
  for (var registro in registros) {
    print('Nome: ${registro['nome']} Telefone: ${registro['telefone']}');
  }
}

