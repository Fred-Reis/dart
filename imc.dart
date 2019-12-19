import "dart:io";

main() {
  calcImc();
}

// pega os valores
calcImc() {
  print('***** CALCULO IMC *****');
  print('');

  print('Digite sua altura: ');
  var altura = double.parse(stdin.readLineSync());
  print('');

  print('Digite seu peso: ');
  var peso = int.parse(stdin.readLineSync());

  var imc = operacao(peso, altura);
  print('');

  result(imc);
}

// faz o calculo
operacao(peso, altura) {
  return peso / (altura * altura);
}

// faz a validação da faixa imc
result(imc) {
  if (imc > 40) {
    print('seu IMC esta em: ${imc} vc esta com obesidade de grau 3');
  } else if (35 <= imc && imc <= 39.9) {
    print('seu IMC esta em: ${imc} vc esta com obesidade de grau 2');
  } else if (30 <= imc && imc <= 34.9) {
    print('seu IMC esta em: ${imc} vc esta com obesidade de grau 1');
  } else if (25 <= imc && imc <= 29.9) {
    print('seu IMC esta em: ${imc} vc esta com sobrepeso');
  } else if (18.5 <= imc && imc <= 24.9) {
    print('seu IMC esta em: ${imc} Parabens vc esta dentro do peso ideal');
  } else {
    print('Atencao vc esta abaixo do peso ideal');
  }
  print('');
}
