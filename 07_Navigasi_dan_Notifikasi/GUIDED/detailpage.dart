import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.data});

  final Widget data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[400],
      ),
      body: Center(
        child: data, // Menampilkan widget data secara langsung
      ),
    );
  }
}
