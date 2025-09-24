import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row and Column")
        ),
        body: Center(
          child: Row(
            children: [
              SizedBox(width: 80),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      KotakMerahLove(),
                      SizedBox(height: 4),
                      Text(
                        'Icon 1',
                        style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      KotakMerahLove(),
                      SizedBox(height: 4),
                      Text(
                        'Icon 3',
                        style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 10),
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      KotakMerahLove(),
                      SizedBox(height: 4),
                      Text(
                        'Icon 2',
                        style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      KotakMerahLove(),
                      SizedBox(height: 4),
                      Text(
                        'Icon 4',
                        style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
class KotakMerahLove extends StatelessWidget {
  const KotakMerahLove({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 40
      ),
    );
  }
}