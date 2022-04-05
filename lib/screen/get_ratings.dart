import 'package:flutter/material.dart';

class GetRatings extends StatelessWidget {
  const GetRatings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Icon(
            Icons.star,
            size: 15.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 15.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 15.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: 15.0,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star_half,
            size: 15.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
