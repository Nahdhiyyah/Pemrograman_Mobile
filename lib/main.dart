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
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar',
    'Gambar'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Galery", style: TextStyle(color: Colors.black12, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Image.asset(gambar[1]),
              subtitle: Text('ini subtitle dari ' + gambar[index]),
              leading: Image.asset(''), // ambil karakter pertama text
            ),
          );
        },
        //itemCount: gambar.length,
      ),
    );
  }
}
