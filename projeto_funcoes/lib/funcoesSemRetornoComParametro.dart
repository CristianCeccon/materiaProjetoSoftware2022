import 'dart:collection';
import 'dart:io';

void show() {
  print("Funções sem retorno e com parametro");
  verificarAprovacao2(6, 5);
  calcularSalario2(1000, 500);
}

void verificarAprovacao2(double nota1, double nota2) {
  // relembrando que com a utilização do double vc ja define o tipo da variavel se esquivando de erros cometidos pelo usuario final
  var media = (nota1 + nota2) / 2;
  print(media >= 6 ? "aprovado" : "reprovado");
}

//ATIVIDADE 1
void calcularSalario2(double valorSalario, double valorDesconto) {
  if (valorSalario > valorDesconto) {
    var salarioFinal = valorSalario - valorDesconto;
    print("Seu salario pos-desconto é: ");
    print(salarioFinal);
  } else {
    print("Seu salaria não é suficiente para efetuar desconto");
  }
}

//ATIVIDADE 2
void promocaoPrejuLucro2(double promo) {
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
  } else {
    print("sua promoção NÃO é valida pois NÃO vai retornar lucro");
  }
}
