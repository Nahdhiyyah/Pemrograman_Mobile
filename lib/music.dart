import 'package:flutter/material.dart';

class music extends StatelessWidget {
  final List<String> lagu = [
    "Berisik",
    "Without You",
    "Up",
    "Hati-hati Di jalan",
    "Happy",
    "Attention"
  ];
  final List<String> artis = [
    "Dere",
    "Avicii",
    "Inna",
    "Tulus",
    "Skinnyfabs",
    "Charlie Puth"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lagu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text(lagu[index]),
              subtitle: Text(artis[index], style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
