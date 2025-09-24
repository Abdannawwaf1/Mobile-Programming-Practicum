import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      // appBar: AppBar(
      //   title: const Text('Ini Halaman Tujuan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
      //   backgroundColor: Colors.deepOrangeAccent,
      // ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Ini Halaman Tujuan',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Text(
              'Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform yang digunakan.',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            // Icon(Icons.home, size: 130, color: Colors.white,),
            Image.asset('assets/icon/beach.png', height: 130, width: 130,),
            const Text(
              'Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                // fixedSize: Size.fromWidth(170),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              onPressed: () {
                Navigator.pop(
                  context
                );
              },
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios, size: 12,),
                  const SizedBox(width: 5),
                  const Text(
                    "Kembali ke home",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 5),
          ]
        ),
      ),
    );
  }
}