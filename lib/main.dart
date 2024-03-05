import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define el tema de la aplicación
        primaryColor: const Color.fromARGB(255, 55, 2, 64), // Color principal de la aplicación
        hintColor: Color.fromARGB(255, 12, 1, 42), // Color de acento
        textTheme: TextTheme(
          headline6: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255), // Color del texto del AppBar
            fontSize: 26.0, // Tamaño del texto del AppBar
            fontWeight: FontWeight.bold, // Negrita
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Scrum Elements',
            style: Theme.of(context).textTheme.headline6,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: JsonListViewScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
