import 'package:flutter/material.dart';

class galery extends StatelessWidget {
  final List<String> foto = [
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg"
  ];
  final List<String> judul = [
    "Judul 1",
    "Judul 2",
    "Judul 3"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Image.asset(foto[index]),
              subtitle: Text(judul[index], style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
