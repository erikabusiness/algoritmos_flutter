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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(
          // Define o tema de texto
          Theme.of(context).textTheme.copyWith(
                // Copia estilos padrão
                bodyLarge: const TextStyle(
                  // Estilo para bodyText1
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                bodyMedium: const TextStyle(
                  // Estilo para bodyText2
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
                titleLarge: const TextStyle(
                  // Estilo para headline6 (títulos)
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contagem de cliques no botão:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  //atribui as definições de estilo ao contador, os quais não foram modificados ultiliza as configurações do tema
                  fontFamily: GoogleFonts.bebasNeue()
                      .fontFamily, //fonte do numero do contador
                  fontSize: 80.0, //tamanho da fonte do numero do contador
                  color: const Color.fromARGB(
                      255, 133, 47, 148), //cor da fonte do número do contador
                  fontWeight: FontWeight.bold // fonte em negrito
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
