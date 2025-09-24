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
      title: 'demo_flexible_expanded',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible and Expanded'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _kotakUji(Colors.amber, 150, 'Normal'),
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: _kotakUji(Colors.green, 100, 'Flexible'),
              ),
              Expanded(
                flex: 2,
                child: _kotakUji(Colors.blue, 250, 'Expanded'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container _kotakUji(Color warna, double tinggi, String teks){
  return Container(
    width: double.infinity,
    height: tinggi,
    color: warna,
    alignment: const Alignment(0.0, 0.0),
    child: Text(
      teks,
      style: const TextStyle(fontSize: 30, color: Colors.white),
    ),
  );
}
