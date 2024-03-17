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

  void desafio01() {
    int a = 30;
    int b = 15;

    if (a > b) {
      (_textoResultado = 'O maior valor é: ', resultadoFinal = '$a');
    } else {
      (_textoResultado = 'O maior valor é: ', resultadoFinal = '$b');
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

  void _desafioSelecionado(int valor) {
    setState(() {
      counter = valor;
      mostrarResultado = false;
      switch (counter) {
        case 1:
          desafio01();
          break;
        case 5:
          desafio05();
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
                    value: 5,
                    child: Text('Desafio 05'),
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
              Visibility(
                visible: mostrarResultado,
                child: Column(
                  children: [
                    Text(
                      _textoResultado,
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      resultadoFinal,
                      style: const TextStyle(
                        fontSize: 36,
                        color: Colors.red,
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
