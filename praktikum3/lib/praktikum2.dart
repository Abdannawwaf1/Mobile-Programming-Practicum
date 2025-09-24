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
      title: 'Alignment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alignment'),
        ),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                'Suhu: ',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '25\u00b0C',
                style: TextStyle(fontSize: 60),
              ),
              Icon(
                Icons.sunny,
                color: Colors.amber,
                size: 45,
              )
            ],
          ),
        ),
      )
    );
  }
}
