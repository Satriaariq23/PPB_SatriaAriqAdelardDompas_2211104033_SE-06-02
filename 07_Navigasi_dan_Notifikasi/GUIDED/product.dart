class Product {
  final int id;
  final String nama;
  final double harga;
  final String gambarUrl;
  final String deskripsi;

  // constructor
  Product(
      {required this.id,
      required this.nama,
      required this.harga,
      required this.gambarUrl,
      required this.deskripsi});

  // method untuk mengkonversi kedalam objek dengan nama produk
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        nama: json['nama'],
        harga: json['harga'],
        gambarUrl: json['gambarUrl'],
        deskripsi: json['deskripsi']);
  }

  // method untuk mengkonversi kedalam objek json
  Map<String, dynamic> toJson() => {
        'id': id,
        'nama': nama,
        'harga': harga,
        'gambarUrl': gambarUrl,
        'deskripsi': deskripsi,
      };
}
