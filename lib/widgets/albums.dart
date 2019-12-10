import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  final String image;
  final String nameAlbum;
  final String albumSubtitle;
  Albums(this.image, this.nameAlbum, this.albumSubtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  '$image',
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$nameAlbum',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '$albumSubtitle',
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
    );
  }
}
