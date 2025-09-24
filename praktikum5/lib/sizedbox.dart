import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Contoh SizedBox',
      title: 'Demo Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh SizedBox'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //SizedBox
              kotakUji(Colors.amber),
              const SizedBox(
                width: 25,
                height: 25,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: kotakUji(Colors.green),
              ),
              const SizedBox(
                width: 25,
                height: 25,
              ),
              kotakUji(Colors.blue),

              //Spacer
              // kotakUji(Colors.amber),
              // const Spacer(flex: 1),
              // kotakUji(Colors.green),
              // SizedBox(width: 100, height: 100, child: kotakUji(Colors.green),),
              // const Spacer(flex: 2),
              // kotakUji(Colors.blue),
            ],
          ),
        )
      ),
    );
  }
}

Container kotakUji(Color warna){
  return Container(
    height: 75,
    width: 75,
    color: warna,
    );
}