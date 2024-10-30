import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(), // Set Halaman Utama sebagai home
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ke Halaman Kedua'),
          onPressed: () {
            // Navigasi ke Halaman Kedua
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Kembali ke Halaman Utama'),
          onPressed: () {
            // Kembali ke Halaman Utama
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
