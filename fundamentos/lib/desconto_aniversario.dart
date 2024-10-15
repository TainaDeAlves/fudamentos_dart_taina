import 'dart:io';

void main() {
  // Dados do produto
  print('Digite o código do produto:');
  String codigo = stdin.readLineSync()!;

  print('Digite o preço unitário do produto:');
  double precoUnitario = double.parse(stdin.readLineSync()!);

  print('Digite a quantidade em estoque:');
  int quantidadeEmEstoque = int.parse(stdin.readLineSync()!);

  // Variáveis para controle de vendas
  int totalVendas = 0;
  double valorTotalVendas = 0.0;
  int numeroPedido = 1;

  while (true) {
    print('\nDeseja realizar uma venda? (s/n):');
    String? resposta = stdin.readLineSync();
    
    if (resposta?.toLowerCase() == 'n') {
      break; // Finaliza o processo de vendas
    }

    print('Digite a quantidade de itens desejados:');
    int quantidadeDesejada = int.parse(stdin.readLineSync()!);

    // Verifica se há estoque suficiente
    if (quantidadeDesejada <= quantidadeEmEstoque) {
      // Atualiza o estoque
      quantidadeEmEstoque -= quantidadeDesejada;

      // Calcula o valor da venda
      double valorVenda = precoUnitario * quantidadeDesejada;
      valorTotalVendas += valorVenda;
      totalVendas += quantidadeDesejada;

      // Exibe o resultado da venda
      print('Venda $numeroPedido = R\$ ${valorVenda.toStringAsFixed(2)}');
      numeroPedido++;
    } else {
      // Estoque insuficiente
      print('Estoque insuficiente. Quantidade disponível: $quantidadeEmEstoque');
    }
  }

  // Exibe o resumo das vendas
  print('\nResumo das vendas:');
  print('Quantidade total de itens vendidos: $totalVendas');
  print('Valor total a ser pago pelo usuário: R\$ ${valorTotalVendas.toStringAsFixed(2)}');
}

