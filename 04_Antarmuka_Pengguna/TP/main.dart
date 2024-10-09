import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Tegal',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WisataPage(),
    );
  }
}

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rekomendasi Wisata Tegal"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 4, 240, 0),
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Wisata Waduk Cacaban Tegal ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  20.0), // Sudut border radius pada gambar
              child: Image.network(
                'https://tse2.mm.bing.net/th?id=OIP.e2yCs72-prNYSqho5MoBDgHaEK&pid=Api&P=0&h=220',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Waduk Cacaban di Tegal, Jawa Tengah, adalah destinasi wisata yang menawarkan pemandangan alam yang indah dan suasana tenang. Awalnya dibangun untuk irigasi dan pengendalian banjir, waduk ini kini menjadi tempat rekreasi populer. Wisatawan bisa menikmati aktivitas seperti memancing, berperahu, serta bersantai di sekitar waduk yang dikelilingi perbukitan hijau. Waduk ini berjarak sekitar 9 km dari pusat Kota Tegal dan sering dikunjungi untuk menikmati pemandangan matahari terbenam serta udara yang sejuk.",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol ditekan
                print("Tombol Kunjungi Tempat ditekan");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 238, 0, 230), // Warna latar belakang tombol
                foregroundColor: Colors.black, // Warna teks pada tombol
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12), // Ukuran padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              // Teks tombol
              // Bentuk sudut tombol
              child: const Text("Kunjungi Tempat"),
            ),
          ],
        ),
      ),
    );
  }
}
