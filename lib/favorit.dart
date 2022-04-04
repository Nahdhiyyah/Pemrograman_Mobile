import 'package:flutter/material.dart';

class favorit extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg"
  ];

  final List<String> judul = [
    "Hati-hati Di Jalan",
    "Happy",
    "Attention"
  ];

  final List<String> artis = [
    "Tulus",
    "Skinnyfabs",
    "Charlie Puth"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(gambar[index], width: 50, height: 50, fit: BoxFit.cover),
              title: Text(judul[index], style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 17)),
              subtitle: Text(artis[index]),
            ),
          );
        },
      ),
    );
  }
}
