import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  TextStyle styleBottom = TextStyle(fontSize: 13,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      selectedItemColor: Color(0xFF8E424F),
      unselectedItemColor: Colors.grey[700],
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.devices_other),
            title: Text('Discover', style: styleBottom)),
        BottomNavigationBarItem(
            icon: Icon(Icons.exposure), title: Text('Broswer')),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
              style: styleBottom,
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            title: Text(
              'Search',
              style: styleBottom,
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(
              'Search',
              style: styleBottom,
            ))
      ],
    );
  }
}
