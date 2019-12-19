import "dart:io";

main() {
  var nome = [];

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
}
