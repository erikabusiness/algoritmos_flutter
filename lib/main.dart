import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, inversePrimary: Colors.amber),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.copyWith(
                bodyLarge: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                bodyMedium: const TextStyle(
                  // Estilo para bodyText2
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
                titleLarge: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: const MyHomePage(title: 'DartVaders'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  String _textoResultado = "";
  String resultadoFinal = "";
  bool mostrarResultado = false;
  Random random = Random();

  void desafio06() {
    Random random = Random();

    // Gerando um número aleatório entre 0 e 100 (você pode ajustar o intervalo conforme necessário)
    int numero = random.nextInt(101);

    // Calculando o antecessor e o sucessor do número aleatório
    int antecessor = numero - 1;
    int sucessor = numero + 1;

    // Mostrando na tela o número aleatório, seu antecessor e seu sucessor
    _textoResultado =
        'O número aleatório, o antecessor e o sucessor são, respectivamente:';
    resultadoFinal = '$numero, $antecessor e $sucessor';
  }

  void desafio17() {
    int numero = 67;
    bool primo = true;

    if (numero <= 1) {
      primo = false;
    }

    for (int i = 2; i < numero; i++) {
      if (numero % i == 0) {
        primo = false;
        break;
      }
    }

    if (primo) {
      _textoResultado = 'O número $numero:';
      resultadoFinal = 'É primo';
    } else {
      _textoResultado = 'O número $numero:';
      resultadoFinal = 'Não é primo';
    }
  }

  void desafio08() {
    List<int> numeros = [5, 2, 8];
    _textoResultado = 'A ordem decrescente da lista $numeros é : ';
    numeros.sort();
    resultadoFinal = numeros.reversed.toString();
  }

  void desafio14() {
    List<int> numeros = [20, 1, 23, 162, 24, 1, 90, 32, 11, 8];
    int menor = numeros.reduce(min);
    int maior = numeros.reduce(max);
    _textoResultado = "O menor e o maior valor da lista respectivamente são: ";
    resultadoFinal = "$menor e $maior.";
  }

  void desafio01() {
    int a = 30;
    int b = 15;

    if (a > b) {
      (
        _textoResultado = 'O maior valor entre $a e $b é: ',
        resultadoFinal = '$a'
      );
    } else {
      (
        _textoResultado = 'O maior valor entre $a e $b é: ',
        resultadoFinal = '$b'
      );
    }
  }

  void desafio2() {
    //Inicializando os valores de a,b,c.
    int numeroA = 5;
    int numeroB = 8;
    int numeroC = 2;

    int soma = numeroA + numeroB;
    _textoResultado = 'a soma de A($numeroA)+B($numeroB) é: $soma';

    if (soma > numeroC) {
      resultadoFinal = 'A soma é maior do que C($numeroC).';
    } else if (soma < numeroC) {
      resultadoFinal = 'A soma é menor do que C($numeroC).';
    } else {
      resultadoFinal = 'A soma é igual a C($numeroC).';
    }
  }

  void desafio03() {
    int numeroInicial = 7;
    int resultado = 1;

    for (int i = 1; i <= numeroInicial; i++) {
      resultado *= i;
    }

    _textoResultado = "o fatorial do numero $numeroInicial é: ";
    resultadoFinal = "$resultado";
  }

  void desafio04() {
    int num = -9;

    if (num > 0) {
      if (num % 2 == 0) {
        (
          _textoResultado = "O número $num é: ",
          resultadoFinal = "Positivo e par"
        );
      } else {
        (
          _textoResultado = "O número $num é: ",
          resultadoFinal = "Positivo e ímpar"
        );
      }
    } else {
      if (num < 0) {
        if (num % 2 == 0) {
          (
            _textoResultado = "O número $num é: ",
            resultadoFinal = "Negativo e par"
          );
        } else {
          (
            _textoResultado = "O número $num é: ",
            resultadoFinal = "Negativo e ímpar"
          );
        }
      }
    }
  }

  void desafio05() {
    List<int> valores = [11, 11];
    int soma = valores[0] + valores[1];
    int mult = valores[0] * valores[1];

    (valores[0] == valores[1])
        ? (_textoResultado = 'A soma dos valores é:', resultadoFinal = '$soma')
        : (
            _textoResultado = 'A Multiplicação dos valores é: ',
            resultadoFinal = '$mult'
          );
  }

  void desafio15() {
    // Gerando um número aleatório entre 1 e 10 como limite
    int limite = random.nextInt(10) + 1;

    // Preenchendo a lista com números de 1 até o limite
    List<int> lista = [];
    for (int i = 0; i <= limite; i++) {
      lista.add(i);
    }

    // Atualizando a tela para mostrar o novo número aleatório e a lista
    _textoResultado = 'Entrada: $limite';
    resultadoFinal = 'Saída: $lista';
  }

  void desafio7() {
    const double salarioMinimo = 1412.00;
    double salarioUsuario = 4000.00;
    double contagemSalarios = salarioUsuario / salarioMinimo;
    String salarioArredondado = contagemSalarios.toStringAsFixed(1);

    _textoResultado = 'Seu salário equivale a: ';
    resultadoFinal = contagemSalarios > 1
        ? '$salarioArredondado salários mínimos'
        : '$salarioArredondado salário mínimo';
  }

  void desafio9() {
    List<double> notasDoAluno = [7.5, 8.0, 6.5, 9.0, 7.0];

    verificaAprovacao(notasDoAluno);
  }

  void verificaAprovacao(List<double> notas) {
    double somaDasNotas = 0;

    for (double nota in notas) {
      somaDasNotas += nota;
    }

    double media = somaDasNotas / notas.length;

    if (media >= 7) {
      (
        _textoResultado = "Média do aluno: $media.",
        resultadoFinal = "Aluno APROVADO!"
      );
    } else {
      (
        _textoResultado = "Média do aluno: $media.",
        resultadoFinal = "Aluno REPROVADO!"
      );
    }
  }

  void desafio10() {
    String nome = "Emerson Mendes";
    int idade = 42; // Exemplo de idade

    if (idade >= 18) {
      (
        _textoResultado = 'O nome da pessoa é $nome e ela é',
        resultadoFinal = 'maior de idade'
      );
    } else {
      (
        _textoResultado = 'O nome da pessoa é $nome e ela é',
        resultadoFinal = 'menor de idade'
      );
    }
  }

  void desafio11() {
    int numero = 5;
    int resultado = 0;
    int contador = 1;
    resultadoFinal = ' ';

    while (contador <= 10) {
      //Mudança do resultado das operações."linha abaixo".//
      resultado = numero * contador;
      _textoResultado = 'Tabuada do $numero';
      resultadoFinal += '$resultado, ';
      contador = contador + 1;
    }
  }

  void desafio12() {
    List<int> listaInicial = [2, 4, 8];
    List<int> listaFinal = [];

    for (int i = 0; i < listaInicial.length; i++) {
      int numeroQuadrado = listaInicial[i] * listaInicial[i];
      listaFinal.add(numeroQuadrado);
    }

    resultadoFinal = listaFinal.toString();
    _textoResultado = 'O quadrado dos números $listaInicial é: ';
  }

  void desafio13() {
    //inicializa uma lista com 10 numeros inteiros
    List<int> numberList = [3, 54, 15, 7, 73, 10, 42, 2, 9, 13];
    //variaveis para contagem de numeros pares e impares
    int isEven = 0;
    int isOdd = 0;

    for (int i = 0; i < numberList.length; i++) {
      if (numberList[i] % 2 == 0) {
        isEven++;
      } else {
        isOdd++;
      }
    }

    _textoResultado =
        "A quantidade de números pares e ímpares da lista $numberList é: ";
    resultadoFinal = "$isEven são pares e $isOdd são ímpares";
  }

  void desafio16() {
    String removerCaracteresEspeciais(String palavraLimpa) {
      return palavraLimpa
          .replaceAll(RegExp(r'[áàâãä]'), 'a')
          .replaceAll(RegExp(r'[éèêë]'), 'e')
          .replaceAll(RegExp(r'[íìîï]'), 'i')
          .replaceAll(RegExp(r'[óòôõö]'), 'o')
          .replaceAll(RegExp(r'[úùûü]'), 'u')
          .replaceAll(RegExp(r'[ç]'), 'c')
          .replaceAll(RegExp(r'[0-9]'), '')
          .replaceAll(RegExp(r'[^a-zA-Z\s]'), '')
          .replaceAll(RegExp(r'\b\s+\b'), '');
    }

    String palavra = 'Aí, Lima falou: “Olá, família!”';

    String palavraMaiscula = palavra.toLowerCase();
    String palavraMaiscSemAcento = removerCaracteresEspeciais(palavraMaiscula);

    String palavraInvertida = palavraMaiscSemAcento.split('').reversed.join('');

    _textoResultado = '$palavra:';
    resultadoFinal = (palavraMaiscSemAcento == palavraInvertida)
        ? 'É um palíndromo'
        : 'Não é um palíndromo';
  }

  void desafio18() {
    String palavra = "eu";
    String frase = "Eu posso posso eu eu tudo o mais que eu quiser Eu";

    String palavraMinusc = palavra.toLowerCase();
    String fraseMinusc = frase.toLowerCase();

    List<String> palavrasDaFrase = fraseMinusc.split(' ');

    int contagem = palavrasDaFrase.where((p) => p == palavraMinusc).length;

    _textoResultado = "A palavra $palavra aparece na frase $frase: ";

    resultadoFinal = "Resultado: $contagem";
  }

  void desafio19() {
    List<String> palavras = [
      'foR',
      'scream',
      'CaRs',
      'poTatos',
      'racs',
      'creams',
      'scar',
      'four'
    ];

    String organizarPalavra(String palavra) {
      palavra = palavra.toLowerCase();
      List<String> letras = palavra.split('');
      letras.sort();
      return letras.join('');
    }

    List<List<String>> organizarLista(List<String> palavras) {
      Map<String, List<String>> mapa = {};

      for (String palavra in palavras) {
        String chave = organizarPalavra(palavra);
        if (!mapa.containsKey(chave)) {
          mapa[chave] = [];
        }
        mapa[chave]!.add(palavra);
      }

      return mapa.values.toList();
    }

    List<List<String>> listaOrganizada = organizarLista(palavras);

    _textoResultado = '';
    resultadoFinal = '$listaOrganizada';
  }

  void _desafioSelecionado(int valor) {
    setState(() {
      counter = valor;
      mostrarResultado = false;

      switch (counter) {
        case 1:
          desafio01();
          break;
        case 2:
          desafio2();
          break;
        case 3:
          desafio03();
          break;
        case 4:
          desafio04();
          break;
        case 5:
          desafio05();
          break;
        case 6:
          desafio06();
          break;
        case 7:
          desafio7();
          break;
        case 8:
          desafio08();
          break;
        case 9:
          desafio9();
          break;
        case 10:
          desafio10();
          break;
        case 11:
          desafio11();
          break;
        case 12:
          desafio12();
          break;
        case 13:
          desafio13();
          break;
        case 14:
          desafio14();
          break;
        case 15:
          desafio15();
          break;
        case 16:
          desafio16();
          break;
        case 17:
          desafio17();
          break;
        case 18:
          desafio18();
          break;
        case 19:
          desafio19();
          break;
        default:
          _textoResultado = "Nenhum desafio selecionado.";
          resultadoFinal = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton<int>(
                value: counter,
                onChanged: (int? valor) {
                  if (valor != null) {
                    _desafioSelecionado(valor);
                  }
                },
                items: const <DropdownMenuItem<int>>[
                  DropdownMenuItem<int>(
                    value: 0,
                    child: Text('Nenhum desafio selecionado'),
                  ),
                  DropdownMenuItem<int>(
                    value: 1,
                    child: Text('Desafio 01'),
                  ),
                  DropdownMenuItem<int>(
                    value: 2,
                    child: Text('Desafio 02'),
                  ),
                  DropdownMenuItem<int>(
                    value: 3,
                    child: Text('Desafio 03'),
                  ),
                  DropdownMenuItem<int>(
                    value: 4,
                    child: Text('Desafio 04'),
                  ),
                  DropdownMenuItem<int>(
                    value: 5,
                    child: Text('Desafio 05'),
                  ),
                  DropdownMenuItem<int>(
                    value: 6,
                    child: Text('Desafio 06'),
                  ),
                  DropdownMenuItem<int>(
                    value: 7,
                    child: Text('Desafio 07'),
                  ),
                  DropdownMenuItem<int>(
                    value: 8,
                    child: Text('Desafio 08'),
                  ),
                  DropdownMenuItem<int>(
                    value: 9,
                    child: Text('Desafio 09'),
                  ),
                  DropdownMenuItem<int>(
                    value: 10,
                    child: Text('Desafio 10'),
                  ),
                  DropdownMenuItem<int>(
                    value: 11,
                    child: Text('Desafio 11'),
                  ),
                  DropdownMenuItem<int>(
                    value: 12,
                    child: Text('Desafio 12'),
                  ),
                  DropdownMenuItem<int>(
                    value: 13,
                    child: Text('Desafio 13'),
                  ),
                  DropdownMenuItem<int>(
                    value: 14,
                    child: Text('Desafio 14'),
                  ),
                  DropdownMenuItem<int>(
                    value: 15,
                    child: Text('Desafio 15'),
                  ),
                  DropdownMenuItem<int>(
                    value: 16,
                    child: Text('Desafio 16'),
                  ),
                  DropdownMenuItem<int>(
                    value: 17,
                    child: Text('Desafio 17'),
                  ),
                  DropdownMenuItem<int>(
                    value: 18,
                    child: Text('Desafio 18'),
                  ),
                  DropdownMenuItem<int>(
                    value: 19,
                    child: Text('Desafio 19'),
                  ),
                ],
              ),
              const SizedBox(
                  height: 20), // Espaçamento entre o DropdownButton e o botão
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    mostrarResultado = true; //
                  });
                },
                child: const Text('Mostrar Resultado'),
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: mostrarResultado,
                child: Column(
                  children: [
                    Text(
                      _textoResultado,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      resultadoFinal,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
