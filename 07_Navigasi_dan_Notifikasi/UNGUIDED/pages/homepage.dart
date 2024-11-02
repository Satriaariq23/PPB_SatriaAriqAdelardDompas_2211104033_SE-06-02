import 'package:flutter/material.dart';
import 'package:praktikum_7/models/product.dart';
import 'package:praktikum_7/pages/detailpage.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Teh Poci',
      description: 'Teh Poci Khas Tegal',
      price: 18000,
      imageUrl:
          'https://tse2.mm.bing.net/th?id=OIP.ezXU3q_5aMhLtf0ZfvEZHwHaF0&pid=Api&P=0&h=220',
    ),
    Product(
      id: '2',
      name: 'Tahu Aci',
      description: 'Tahu Aci Khas Tegal',
      price: 5000,
      imageUrl:
          'https://2.bp.blogspot.com/-WVPDpA0kqyU/VxhurzYRslI/AAAAAAAAAmU/zlMyE2L3PRYt1RZioD91lHBc8A7bj6NBACLcB/s1600/Resep-Tahu-Aci.jpg',
    ),
    // Tambahkan lebih banyak produk jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Daftar Produk Yang Tersedia')),
          backgroundColor: const Color.fromARGB(255, 75, 255, 108),
        ),
        body: Container(
          color: const Color.fromARGB(255, 132, 148, 255),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(product: product),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            product.imageUrl,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                product.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Rp${product.price}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
