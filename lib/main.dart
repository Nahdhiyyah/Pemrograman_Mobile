import 'package:flutter/material.dart';
//import 'lagu.dart' as lagu;

void main() {
  runApp(MyApp());
}

final List<String> lagu = [
  "Lagu 1",
  "Lagu 2",
  "Lagu 3"
];

// class lagu {
//   lagu() {
//     final List<String> lagu = [
//       "Lagu 1",
//       "Lagu 2",
//       "Lagu 3"
//     ];
//   }
// }

// class galeri {
//   final List<String> video = [
//     "Video 1",
//     "Video 2",
//     "Video 3"
//   ];
// }

// class archive {
//   final List<String> arsip = [
//     "Lagu 1",
//     "Lagu 2",
//     "Lagu 3"
//   ];
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Nadia's List",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        )),
                    background: Image(
                      image: AssetImage('assets/images/15.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  backgroundColor: Colors.black54,
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        new Tab(icon: new Icon(Icons.audiotrack), text: "Lagu"),
                        new Tab(icon: new Icon(Icons.collections), text: "Galeri"),
                        new Tab(icon: new Icon(Icons.archive), text: "Arsip"),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(children: <Widget>[])),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
