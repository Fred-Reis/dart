import 'dart:io';

main() {
  // for (var c = 0; c <= 5; c++) {
  //   print('o valor de c no for é: $c ');
  // }

  // var x = 0;

  // while (true) {
  //   print('x do while $x');
  //   if (x == 10) {
  //     break;
  //   }
  //   x++;
  // }

  while (true) {
    print('==== Digite um texto ====');
    String text = stdin.readLineSync();

    if (text == 'sair') {
      print('==== FINALIZADO ====');
      break;
    } else {
      print('==== Você digitou: $text ====');
      print('');
    }
  }
}
