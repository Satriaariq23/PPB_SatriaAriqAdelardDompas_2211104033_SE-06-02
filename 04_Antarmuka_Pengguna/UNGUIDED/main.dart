import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Tegal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rekomendasi Wisata Tegal'),
          backgroundColor: const Color.fromARGB(255, 1, 255, 247),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            _buildPlaceCard(
              context, // Tambahkan context di sini
              'Waduk Cacaban Tegal',
              'Waduk Cacaban di Tegal, Jawa Tengah, adalah destinasi wisata yang menawarkan pemandangan alam yang indah dan suasana tenang. Awalnya dibangun untuk irigasi dan pengendalian banjir, waduk ini kini menjadi tempat rekreasi populer. Wisatawan bisa menikmati aktivitas seperti memancing, berperahu, serta bersantai di sekitar waduk yang dikelilingi perbukitan hijau. Waduk ini berjarak sekitar 9 km dari pusat Kota Tegal dan sering dikunjungi untuk menikmati pemandangan matahari terbenam serta udara yang sejuk.',
              'https://tse2.mm.bing.net/th?id=OIP.e2yCs72-prNYSqho5MoBDgHaEK&pid=Api&P=0&h=220',
            ),
            _buildPlaceCard(
              context,
              'Pantai Alam Indah Tegal',
              'Pantai Alam Indah (PAI) adalah destinasi wisata di Kota Tegal yang terkenal dengan pemandangan sunset yang indah dan suasana pantai yang tenang. Pantai ini dilengkapi dengan fasilitas seperti taman bermain, area kuliner, dan wahana perahu wisata, menjadikannya tempat rekreasi yang cocok untuk keluarga. Selain itu, terdapat Monumen Bahari yang menampilkan koleksi maritim, menambah daya tarik edukatif bagi pengunjung.',
              'https://tse4.mm.bing.net/th?id=OIP.1S8DQ4Oqr1fpKAJXQVTpbAHaEK&pid=Api&P=0&h=220',
            ),
            _buildPlaceCard(
              context,
              'Bukit Baper Tegal',
              'Bukit Baper adalah objek wisata alam di Kabupaten Tegal, yang terkenal dengan pemandangan sunrise dan sunset. Terletak di Desa Batumirah, bukit ini menawarkan panorama perbukitan hijau dan suasana sejuk, serta spot foto menarik seperti gardu pandang dan ayunan. Bukit ini juga sering dijadikan lokasi camping karena keindahannya dari ketinggian.',
              'https://idntrip.com/wp-content/uploads/harga-tiket-masuk-bukit-baper.jpg',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun card dari tempat wisata
  Widget _buildPlaceCard(
      BuildContext context, String title, String description, String imageUrl) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 246, 29, 29),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol diklik, misalnya menampilkan detail tempat wisata
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Mengunjungi $title'),
                          ),
                        );
                      },
                      child: const Text('Kunjungi Tempat'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
