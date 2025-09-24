import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   title: const Text('Ini Halaman Home', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
      //   backgroundColor: Colors.blue,
      // ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Ini Halaman Home',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Text(
              'Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda, Contohnya, ada layar produk, dan ketika pengguna mengklik produk, akan muncul layar dengan detail produk tersebut.',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            // Icon(Icons.home, size: 130, color: Colors.white,),
            Image.asset('assets/icon/house.png', height: 130, width: 130,),
            const Text(
              'Pertama, kita perlu membuat dua halaman atau "routes" yang ingin kita tampilkan. Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama ke halaman kedua. Ini seperti kita membuaka halaman baru. Terakhir, kita bisa kembali dari halaman kedua ke halaman pertama menggunakan Navigator.pop(). Seperti menutup halaman kedua dan kembali ke halaman pertama.',
              style: TextStyle(fontSize: 11.5, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                // fixedSize: Size.fromWidth(170),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/tujuan'
                );
              },
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Ke Halaman Tujuan",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, size: 12,),
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