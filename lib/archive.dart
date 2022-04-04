import 'package:flutter/material.dart';

class arsip extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg"
  ];
  final List<String> nama = [
    "Judul 1",
    "Judul 2",
    "Judul 3"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Galery", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.red[200],
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Image.asset(gambar[index], width: 350, height: 200, fit: BoxFit.cover),
              subtitle: Text(nama[index], style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}