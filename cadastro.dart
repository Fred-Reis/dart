import 'dart:io';

List<Map<String,dynamic>> cadastros = [];

void main() {

  print('\x1B[2J\x1B[0;0H');
  while(true){
    print('=== Escolha uma opcao\n =>cadastro\n =>imprimir\n =>sair');
    String comand = stdin.readLineSync();

    if(comand == 'sair'){
      print('=== CADASTRO FINALIZADO');
      break;
    } else if (comand == 'cadastro'){
      print('\x1B[2J\x1B[0;0H');
      cadastrar();
    } else if (comand == 'imprimir'){
      print(cadastros);
    }
  }

}

cadastrar() {
  Map<String, dynamic> cadastro ={};
  
  print('=== Digite um nome ===');
  cadastro['nome' ] = stdin.readLineSync();
  
  print('=== Digite uma idade ===');
  cadastro['idade' ] = stdin.readLineSync();

  print('=== Digite uma cidade ===');
  // String cidade = stdin.readLineSync();
  cadastro['cidade' ] = stdin.readLineSync();

  print('=== Digite um estado ===');
  // String estado = stdin.readLineSync();
  cadastro['estado' ] = stdin.readLineSync();
  print('\x1B[2J\x1B[0;0H');
  
  cadastros.add(cadastro);

  print('=== Cadastro ===\n ${cadastro}'  );

}