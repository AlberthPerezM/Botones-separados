import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mostrandos bootnes')),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Muestra(
              child: ElevatedButton(
                child: Text("Apretame!"),
                onPressed: () {},
              ),
              text: 'Boton Clasioc',
            ),
            Muestra(
              child: ElevatedButton(
                child: Text("Apretame!"),
                onPressed: () {
                  print("Apretame");
                },
              ),
              text: 'Boton Clasioc',
            )
          ],
        ),
      ),
    );
  }
}

class Muestra extends StatelessWidget {
  final String text;
  final Widget child;

  const Muestra({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              this.child,
              SizedBox(height: 10),
              Text(this.text, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
