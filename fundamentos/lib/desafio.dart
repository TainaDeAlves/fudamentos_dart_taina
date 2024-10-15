// void main() {
//   print('--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
//   final pacientes = [
//     'Rodrigo Rahman|35|desenvolvedor|SP',
//     'Manoel Silva|12|estudante|MG',
//     'Joaquim Rahman|18|estudante|SP',
//     'Fernando Verne|35|estudante|MG',
//     'Gustavo Silva|40|desenvolvedor|MG',
//     'Sandra Silva|40|Desenvolvedor|MG',
//     'Regina Verne|35|dentista|MG',
//     'João Rahman|55|jornalista|SP',
//   ];


//   //1º Imprima os dados dos pacientes na tela 
//   print('\n// 1º - Pacientes');
  

//   //2º Imprima os pacientes acima de 20 anos
//   print('\n// 2º - Pacientes acima de 20 ano');
  
//   // 3º Imprima a quantidade de pacientes por profissão
//   print('\n// 3º - Quantidade de pacientes por profissão');  
//   print( '- Quantidade de Desenvolvedore(s):  ${0}');
//   print( '- Quantidade de Estudante(s):  ${0}'); 
//   print( '- Quantidade de Dentista(s):  ${0}');
//   print( '- Quantidade de Jornalista(s):  ${0}'); 

//   // 4º Imprima os pacientes por profissão.
//   // Deve ser impresso apenas Nome, idade e profissão.
//   print('\N// 4º - Pacientes que moram em SP');

//   // 5º Exclua todos os estudantes e em seguida imprima os pacientes

//   // 6º Inclua os pacentes abaixo nas primeira posições
//   // Manoel Silva|12|estagiário|MG'
//   // Joaquim Rahman|18|estagiário|SP
//   // Fernando Verne|35|estagiário|MG'
  
// }

void main() {
  print('--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  // 1º Imprima os dados dos pacientes na tela 
  print('\n// 1º - Pacientes');
  for (var paciente in pacientes) {
    print(paciente);
  }

  // 2º Imprima os pacientes acima de 20 anos
  print('\n// 2º - Pacientes acima de 20 anos');
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var idade = int.parse(dados[1]);
    if (idade > 20) {
      print(paciente);
    }
  }

  // 3º Imprima a quantidade de pacientes por profissão
  print('\n// 3º - Quantidade de pacientes por profissão');  
  Map<String, int> quantidadePorProfissao = {};
  
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var profissao = dados[2].toLowerCase();
    quantidadePorProfissao[profissao] = (quantidadePorProfissao[profissao] ?? 0) + 1;
  }

  print('- Quantidade de Desenvolvedor(es): ${quantidadePorProfissao['desenvolvedor'] ?? 0}');
  print('- Quantidade de Estudante(s): ${quantidadePorProfissao['estudante'] ?? 0}'); 
  print('- Quantidade de Dentista(s): ${quantidadePorProfissao['dentista'] ?? 0}');
  print('- Quantidade de Jornalista(s): ${quantidadePorProfissao['jornalista'] ?? 0}'); 

  // 4º Imprima os pacientes que moram em SP
  print('\n// 4º - Pacientes que moram em SP');
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var estado = dados[3];
    if (estado == 'SP') {
      print('${dados[0]}, ${dados[1]}, ${dados[2]}');
    }
  }

  // 5º Exclua todos os estudantes e em seguida imprima os pacientes
  pacientes.removeWhere((paciente) => paciente.split('|')[2].toLowerCase() == 'estudante');
  print('\n// 5º - Pacientes após remover estudantes');
  for (var paciente in pacientes) {
    print(paciente);
  }

  // 6º Inclua os pacientes abaixo nas primeiras posições
  var novosPacientes = [
    'Manoel Silva|12|estagiário|MG',
    'Joaquim Rahman|18|estagiário|SP',
    'Fernando Verne|35|estagiário|MG'
  ];
  
  pacientes.insertAll(0, novosPacientes);
  print('\n// 6º - Pacientes após inclusão');
  for (var paciente in pacientes) {
    print(paciente);
  }
}

