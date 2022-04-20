import 'dart:collection';
import 'dart:io';

void show() {
  print("Funções com retorno e com parametro");
  var resultado = verificarAprovacao4(6, 8);
  print(resultado);
}

String verificarAprovacao4(double nota1, double nota2) {
  var media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'Aprovado' : "Reprovado";
}

//ATIVIDADE 1
double calcularSalario4(double valorSalario, double valorDesconto) {
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
double promocaoPrejuLucro2(double promo) {
  String produto1 = "Ovo de Pascoa"; //var produto2 = ["Ovo de pascoa", 10];
  double preco1 = 10; //reais
  double lucro1 = 2; //reais
  double custo1 = (preco1 - lucro1);

  print("produto: ");
  print(produto1);
  print("preço de venda: ");
  print(preco1);

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
