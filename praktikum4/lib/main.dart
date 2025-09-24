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
      title: 'Music Player',
      theme: ThemeData.dark(),
      home: Scaffold(
        bottomNavigationBar: 
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            color: Colors.black54,
            child:
            Row(
              children: [
                musicIcon(Colors.black, Icons.access_alarm_outlined, 20),
                Expanded(
                flex: 2,
                child: musicIcon(Colors.white, Icons.shuffle, 20),
                ),
                Expanded(
                flex: 2,
                child: musicIcon(Colors.white, Icons.skip_previous, 20),
                ),
                Flexible(
                  fit: FlexFit.tight, flex: 3, child: musicIcon(Colors.white, Icons.play_circle, 60),
                ),
                Expanded(
                flex: 2,
                child: musicIcon(Colors.white, Icons.skip_next, 20),
                ),
                Expanded(
                flex: 2,
                child: musicIcon(Colors.white, Icons.repeat, 20),
                ),
              ],
            ),
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pemutar Musik", 
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container musicIcon(Color warna, IconData icon, int size){
  return Container(
    child: Icon(
      icon,
      color: warna,
      size: size.toDouble(),
    ),
  );
}