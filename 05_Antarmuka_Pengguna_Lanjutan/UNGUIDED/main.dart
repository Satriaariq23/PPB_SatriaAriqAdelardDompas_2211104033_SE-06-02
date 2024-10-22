import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Tegal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.orange[50],
      ),
      home: WisataListPage(),
    );
  }
}

class WisataListPage extends StatelessWidget {
  final List<Map<String, String>> wisataList = [
    {
      'nama': 'Waduk Cacaban Tegal',
      'deskripsi':
          'Waduk Cacaban di Tegal, Jawa Tengah, adalah destinasi wisata yang menawarkan pemandangan alam yang indah dan suasana tenang. Awalnya dibangun untuk irigasi dan pengendalian banjir, waduk ini kini menjadi tempat rekreasi populer. Wisatawan bisa menikmati aktivitas seperti memancing, berperahu, serta bersantai di sekitar waduk yang dikelilingi perbukitan hijau. Waduk ini berjarak sekitar 9 km dari pusat Kota Tegal dan sering dikunjungi untuk menikmati pemandangan matahari terbenam serta udara yang sejuk.',
      'imageUrl':
          'https://tse2.mm.bing.net/th?id=OIP.e2yCs72-prNYSqho5MoBDgHaEK&pid=Api&P=0&h=220',
    },
    {
      'nama': 'Pantai Alam Indah Tegal',
      'deskripsi':
          'Pantai Alam Indah (PAI) adalah destinasi wisata di Kota Tegal yang terkenal dengan pemandangan sunset yang indah dan suasana pantai yang tenang. Pantai ini dilengkapi dengan fasilitas seperti taman bermain, area kuliner, dan wahana perahu wisata, menjadikannya tempat rekreasi yang cocok untuk keluarga. Selain itu, terdapat Monumen Bahari yang menampilkan koleksi maritim, menambah daya tarik edukatif bagi pengunjung.',
      'imageUrl':
          'https://tse4.mm.bing.net/th?id=OIP.1S8DQ4Oqr1fpKAJXQVTpbAHaEK&pid=Api&P=0&h=220',
    },
    {
      'nama': 'Bukit Baper Tegal',
      'deskripsi':
          'Bukit Baper adalah objek wisata alam di Kabupaten Tegal, yang terkenal dengan pemandangan sunrise dan sunset. Terletak di Desa Batumirah, bukit ini menawarkan panorama perbukitan hijau dan suasana sejuk, serta spot foto menarik seperti gardu pandang dan ayunan. Bukit ini juga sering dijadikan lokasi camping karena keindahannya dari ketinggian.',
      'imageUrl':
          'https://liburanyuk.co.id/wp-content/uploads/2020/09/@ichal875.-1024x680.jpg',
    },
  ];

  WisataListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Rekomendasi Wisata Tegal'),
              background: Image.network(
                'https://i1.wp.com/panduanterbaik.id/wp-content/uploads/2019/09/tegal.jpeg?resize=850%2C512&ssl=1',
                fit: BoxFit.cover,
              ),
              collapseMode: CollapseMode.parallax,
              stretchModes: const [StretchMode.fadeTitle],
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 16, 204, 242),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final wisata = wisataList[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: const Color.fromARGB(255, 79, 70, 255),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(wisata['imageUrl']!),
                        backgroundColor:
                            const Color.fromARGB(255, 138, 208, 249),
                      ),
                      title: Text(
                        wisata['nama']!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      subtitle: Text(
                        wisata['deskripsi']!,
                        style: const TextStyle(color: Colors.white70),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios,
                          color: Colors.white),
                      onTap: () {
                        // Implementasi untuk menampilkan detail wisata
                      },
                    ),
                  );
                },
                childCount: wisataList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
