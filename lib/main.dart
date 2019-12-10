import 'package:flutter/material.dart';
import 'package:flutter_challenge_music/widgets/albums.dart';
import 'package:flutter_challenge_music/widgets/bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Music Ui',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Best Match',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTCN4naHp3gJ46b40hXqIfadkM7mSgChMM4U0lQxgcK3jiMsRM5',
                      ),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 120.0,
                        bottom: 50.0,
                        child: new Text('Reckless Love ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            )),
                      ),
                      new Positioned(
                        right: 10.0,
                        top: 15.0,
                        child: Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 15),
                  child: Text(
                    'Albums',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Albums(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTUSsVoK5sj9PHC_10lF8HYeyBu9DPL16ErM8giv_2jKrlWkeCI',
                    'Hokey Tonk Woman',
                    'Matoma'),
                Albums(
                    'https://i.scdn.co/image/9e45238f567597ca1ce5e74ec21e5865c65cbc76',
                    'Little red Corvete',
                    'Beach Boys'),
                Albums(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTUSsVoK5sj9PHC_10lF8HYeyBu9DPL16ErM8giv_2jKrlWkeCI',
                    'Beat it',
                    'Michael Jackson'),
                Albums(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTUSsVoK5sj9PHC_10lF8HYeyBu9DPL16ErM8giv_2jKrlWkeCI',
                    'Beat it',
                    'Michael Jackson'),
              ],
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
                    hintText: 'Search...',
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.zero),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
