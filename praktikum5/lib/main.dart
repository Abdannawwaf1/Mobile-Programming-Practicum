import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Card',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sedang memutar'),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.all(12),
            // child: Padding(
            //   padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.album,
                    size: 90,
                    color: Colors.blueAccent.shade100,
                  ),
                  const ListTile(
                    title: Text(
                      "Di sini ada judul lagu",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    subtitle: Text(
                      "Di sini ada nama artis",
                    ),
                    trailing: Icon(
                      Icons.favorite_outline, 
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            // ),
          ),
        ),
      ),
    );
  }
}
