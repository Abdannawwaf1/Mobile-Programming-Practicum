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
      title: 'Weather App',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Alignment'),
        // ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Malang',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '25\u00b0C',
                style: TextStyle(fontSize: 80),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CuacaHari(
                    cuaca: 'Minggu',
                    icon: Icons.sunny,
                    suhu: '28\u00b0C',
                  ),
                  CuacaHari(
                    cuaca: 'Senin',
                    icon: Icons.cloudy_snowing,
                    suhu: '24\u00b0C',
                  ),
                  CuacaHari(
                    cuaca: 'Selasa',
                    icon: Icons.cloud,
                    suhu: '26\u00b0C',
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  const KotakBiruJempol({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 40,
        ),
    );
  }
}

class KotakBiruJempolKecil extends StatelessWidget {
  const KotakBiruJempolKecil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 40,
        ),
    );
  }
}

class CuacaHari extends StatelessWidget {
  final String cuaca;
  final IconData icon;
  final String suhu;

  const CuacaHari({
    super.key,
    required this.cuaca,
    required this.icon,
    required this.suhu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          cuaca,
          style: TextStyle(
            fontSize: 20
          ),
        ),
        SizedBox(height: 10),
        Icon(
          icon,
          color: Colors.black,
          size: 45
        ),
        SizedBox(height: 10),
        Text(
          suhu,
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ],
    );
  }
}
