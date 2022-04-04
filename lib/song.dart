import 'package:flutter/material.dart';

class musik extends StatelessWidget {
  final List<String> lagu = [
    "lagu 1",
    "lagu 2",
    "lagu 3"
  ];
  final List<String> artis = [
    "artis 1",
    "artis 2",
    "artis 3"
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
