import "dart:io";

main() {
  var nome = ['Fred', 'Aline', 'Valentina'];

  while (true) {
    print('==== Digite um nome ====');
    String text = stdin.readLineSync();

    if (text == 'sair') {
      print('\n=== Finalizado ===');
      break;
    } else {
      nome.add(text);
      print('\n $nome \n');
    }
  }
  print('\n $nome \n');

  print('***** Sem Fred *****\n');
  //remove do array por valor
  nome.remove('Fred');
  print('\n$nome\n');

  //remove do array por posicao
  nome.removeAt(0);
  print('***** Sem Posicao 0 *****\n');
  print('$nome\n');
}
