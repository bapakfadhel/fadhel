import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'Shirt',
          ),

          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'Dress',
          ),

          Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'Pants',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({required this.imageLocation, required this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          print('Category $imageCaption clicked!');
        },
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 80.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
