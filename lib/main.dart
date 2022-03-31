import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cobaListView(),
    );
  }
}

class cobaListView extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
  ];

  final List<String> sub = [
    'Gambar 1',
    'Gambar 2',
    'Gambar 3',
    'Gambar 4',
    'Gambar 5',
    'Gambar 6',
    'Gambar 7',
    'Gambar 8',
    'Gambar 9',
    'Gambar 10',
    'Gambar 11'
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
              title: Image.asset(
                gambar[index],
                width: 350,
                height: 200,
              ),
              subtitle: Text(sub[index]),
            ),
          );
        },
      ),
    );
  }
}
