import 'dart:collection';
import 'dart:io';

void show() {
  print("Funções sem retorno e sem parametro");
  verificarAprovacao();
}

// Solicitar notas, verificar media e mostrar se esta aprovado ou reprovado
void verificarAprovacao() {
  print("nota1: ");
  var entrada = stdin.readLineSync();

  var nota1 = 0.0;
  if (entrada != null) {
    nota1 = double.parse(entrada);
  }
  print("nota2: ");
  var nota2 = double.parse(stdin
      .readLineSync()!); // com a inserção do " ! " o dev esta assumindo a respontabilidade pela variavel ser null ou não

  var media = (nota1 + nota2) / 2;

  if (media >= 6) {
    print("Parabens, sua media foi: ");
    print(media);
    print("Aprovado!");
  } else {
    print("Triste, sua media foi: ");
    print(media);
    print("Reprovado!");
  }
}

//ATIVIDADE 1
void calcularSalario() {
  print("qual o seu salario? ");
  var entradaSalario = stdin.readLineSync()!;
  var valorSalario = 0.0;
  valorSalario = double.parse(entradaSalario);

  print("qual o desconto? ");
  var entradaDesconto = stdin.readLineSync()!;
  var valorDesconto = 0.0;
  valorDesconto = double.parse(entradaDesconto);

  var restanteSalario = 0.0;

  if (valorSalario > valorDesconto) {
    restanteSalario = valorSalario - valorDesconto;
    print("Apos o desconto seu salario ficou: ");
    print(restanteSalario);
  } else {
    print("Não foi possivel descontar o salario, não possui renda suficiente");
  }
}

//ATIVIDADE 2
//void promocaoChocolate() {

//String produto1 = "Ovo de pascoa floresta negra";
//String produto2 = "Barra de chocolate doçura";
//String produto3 = "Coelho de chocolate";
//String produto4 = "Trufa de chocolate branco";

//var produtos = [
//produto1,
//produto2,
//produto3,
//produto4
//];

//print("qual produto ira receber promoção ?");
//print(produtos);

//var entradaPromo = stdin.readLineSync()!;
//var escolherPromo = 0;
//escolherPromo = int.parse(entradaPromo);

//if(escolherPromo == 1){
//}

//}

void promocaoPrejuLucro() {
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
  } else {
    print("sua promoção NÃO é valida pois NÃO vai retornar lucro");
  }
}
