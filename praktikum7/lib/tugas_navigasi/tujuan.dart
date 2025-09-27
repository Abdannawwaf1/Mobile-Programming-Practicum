import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  static String teks1 = ("Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). Metode push() "
  "akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. Route ini dapat dibuat secara "
  "kustom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform yang digunakan.");
  static String teks2 = ("Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). "
  "Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Ini Halaman Tujuan',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            Text(
              teks1,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            Image.asset('assets/icon/beach.png', height: 130, width: 130,),
            Text(
              teks2,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
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
            ),
          ]
        ),
      ),
    );
  }
}