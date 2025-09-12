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
        // appBar: AppBar(
        //   title: Text('Expanded'),
        // ),
        bottomNavigationBar: 
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            color: Colors.black54,
            child:
            Row(
              children: [
                _musicIcon(Colors.black, Icons.access_alarm_outlined, 20),
                Expanded(
                flex: 2,
                child: _musicIcon(Colors.white, Icons.shuffle, 20),
                ),
                Expanded(
                flex: 2,
                child: _musicIcon(Colors.white, Icons.skip_previous, 20),
                ),
                Flexible(
                  fit: FlexFit.tight, flex: 3, child: _musicIcon(Colors.white, Icons.play_circle, 60),
                ),
                Expanded(
                flex: 2,
                child: _musicIcon(Colors.white, Icons.skip_next, 20),
                ),
                Expanded(
                flex: 2,
                child: _musicIcon(Colors.white, Icons.repeat, 20),
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
              // Flexible(
              //   fit: FlexFit.tight, flex: 1, child: KotakBiruJempolKecil(),
              // ),
              // Flexible(
              //   fit: FlexFit.tight, flex: 3, child: KotakBiruJempolKecil(),
              // ),
              // Flexible(
              //   fit: FlexFit.loose, flex: 2, child: KotakBiruJempolKecil(),
              // ),
              
              // _kotakUji(Colors.amber, 150, 'Normal'),
              // _kotakUji(Colors.green, 100, 'Flexible'),
              // _kotakUji(Colors.blue, 250, 'Expanded'),

              // _kotakUji(Colors.amber, 150, 'Normal'),
              // Flexible(
              //   fit: FlexFit.loose,
              //   flex: 1,
              //   child: _kotakUji(Colors.green, 100, 'Flexible'),
              // ),
              // Expanded(
              //   flex: 2,
              //   child: _kotakUji(Colors.blue, 250, 'Expanded'),
              // ),
          //   ],
          ),
        ),
      ),
    );
  }
}

// class KotakBiruJempolKecil extends StatelessWidget {
//   const KotakBiruJempolKecil({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 75,
//       height: 75,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(color: Colors.black, width: 2),
//         borderRadius: BorderRadius.circular(12)
//       ),
//       child: Icon(
//         Icons.thumb_up,
//         color: Colors.white,
//         size: 40,
//         ),
//     );
//   }
// }

// Container _kotakUji(Color warna, double tinggi, String teks){
//   return Container(
//     width: double.infinity,
//     height: tinggi,
//     color: warna,
//     alignment: const Alignment(0.0, 0.0),
//     child: Text(
//       teks,
//       style: const TextStyle(fontSize: 30, color: Colors.white),
//     ),
//   );
// }

Container _musicIcon(Color warna, IconData icon, int size){
  return Container(
    child: Icon(
      icon,
      color: warna,
      size: size.toDouble(),
    ),
  );
}