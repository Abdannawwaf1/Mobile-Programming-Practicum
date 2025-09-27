import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  static String teks1 = ("Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda, "
      "Contohnya, ada layar produk, dan ketika pengguna mengklik produk, akan muncul layar dengan detail produk tersebut.");
  static String teks2 = ("Pertama, kita perlu membuat dua halaman atau \"routes\" yang ingin kita tampilkan. "
      "Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama ke halaman kedua. " 
      "Ini seperti kita membuaka halaman baru. Terakhir, kita bisa kembali dari halaman kedua ke halaman pertama menggunakan "
      "Navigator.pop(). Seperti menutup halaman kedua dan kembali ke halaman pertama.");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Ini Halaman Home',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            Text(
              teks1,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            Image.asset('assets/icon/house.png', height: 130, width: 130,),
            Text(
              teks2,
              style: TextStyle(fontSize: 11.5, color: Colors.white),
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
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
                    Icon(Icons.arrow_forward_ios, size: 12),
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}