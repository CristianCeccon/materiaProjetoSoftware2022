import 'dart:collection';
import 'dart:io';

void show() {
  print("Função COM retorno e SEM parametro");
}

String verificarAprovacao3() {
  print("nota1: ");
  var nota1 = double.parse(stdin.readLineSync()!);

  print("nota2: ");
  var nota2 = double.parse(stdin.readLineSync()!);

  var media = (nota1 + nota2) / 2;

  if (media >= 6) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

//ATIVIDADE 1
double calcularSalario3() {
  print("Insira seu salario");
  var valorSalario = double.parse(stdin.readLineSync()!);
  var valorDesconto = double.parse(stdin.readLineSync()!);

  var salarioFinal = valorSalario - valorDesconto;

  if (valorSalario > valorDesconto) {
    print("Seu salario pos-desconto é: ");
    return salarioFinal;
  } else {
    print("Seu salaria não é suficiente para efetuar desconto");
    return salarioFinal;
  }
}

//ATIVIDADE 2
double promocaoPrejuLucro3() {
  String produto1 = "Ovo de Pascoa"; //var produto2 = ["Ovo de pascoa", 10];
  double preco1 = 10; //reais
  double lucro1 = 2; //reais
  double custo1 = (preco1 - lucro1);

  print("produto: ");
  print(produto1);
  print("preço de venda: ");
  print(preco1);

  print("qual promoção deseja aplicar ? Obs. em porcentagem");
  var entradaPromo = stdin.readLineSync()!;
  double promo = 0.0;
  promo = double.parse(entradaPromo);

  double promoPocen = promo / 100;

  var resultadoPromo = preco1 * (1 - promoPocen);

  if (resultadoPromo > custo1) {
    print("sua promoção é VALIDA pois ainda vai retornar lucro de:");
    lucro1 = resultadoPromo - custo1;
    print(lucro1);
    return lucro1;
  } else {
    print("sua promoção NÃO é valida pois NÃO vai retornar lucro");
    return lucro1;
  }
}
