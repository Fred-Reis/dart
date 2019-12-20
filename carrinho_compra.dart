import 'dart:io';

main() {
  List<String> produtos = [];

  while (true) {
    print('\n==== CARRINHO DE COMPRAS ====\n');
    print('     *** OPÇÕES ***\n');
    print(
        '=> Digite 1 e confirme para adicionar um novo produto\n=> Digite 2 e confirme para imprimir sua lista\n=> Digite 3 para remover um item da lista\n=> Para encerrar digite sair e confirme\n');

    var option = stdin.readLineSync();

    if (option == 'sair') {
      // para limpar o terminal
      print('\x1B[2J\x1B[0;0H');
      print('\n==== Lista finalizada ====\n');
      print(produtos);
      break;
    } else if (option == '2') {
      print('\n==== Sua lista possui os seguintes produtos ====\n');
      for (var c = 0; c < produtos.length; c++) {
        print('Item ${c + 1} => ${produtos[c]}');
      }
    } else if (option == '1') {
      // para limpar o terminal
      print('\x1B[2J\x1B[0;0H');
      print('\n==== Digite sua opção ====\n');
      String produto = stdin.readLineSync();
      produtos.add(produto);
      // para limpar o terminal
      print('\x1B[2J\x1B[0;0H');
    } else if (option == '3') {
      print('\x1B[2J\x1B[0;0H');
      print('==== Comoo você quer fazer essa exclusão ====\n');
      print('=> Digite 1 se você quiser excluir por nome do produto');
      print('=> Digite 2 se você quiser excluir por posição na lista');
      var excluir = stdin.readLineSync();
      for (var c = 0; c < produtos.length; c++) {
        print('Item ${c + 1} => ${produtos[c]}');
      }
      if (excluir == '1') {
        print('=> Qual o nome do produto?\n');
        String removeProdu = stdin.readLineSync();
        produtos.remove(removeProdu);
      } else if (excluir == '2') {
        print('=> Qual a posição do produto?\n');
        int removeProdu = int.parse(stdin.readLineSync());
        produtos.removeAt(removeProdu - 1);
      }
    } else {
      // para limpar o terminal
      print('\x1B[2J\x1B[0;0H');
      print('\n[ERRO] opção inválida, repita a operação!\n');
    }
  }
}
