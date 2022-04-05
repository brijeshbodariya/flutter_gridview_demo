import 'package:flutter/material.dart';
import 'package:flutter_gridview_demo/model/item.dart';
import 'package:flutter_gridview_demo/screen/get_ratings.dart';
import 'package:flutter_gridview_demo/screen/grid_item_details.dart';

class ItemList extends StatelessWidget {
  final Item? item;

  const ItemList({Key? key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(item!),
          ),
        );
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 12.0,
              child: Image.asset(
                item!.trailerImg1!,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item!.name!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item!.category!,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 9.0,
                    ),
                  ),
                  const SizedBox(height: 0.0),
                  const GetRatings(),
                  const SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 4.0),
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'RELEASE DATE:',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item!.releaseDate!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'RUNTIME:',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item!.runtime!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderContent extends StatelessWidget {
  final Item item;

  const HeaderContent(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name!,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.category!,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 9.0,
                    ),
                  ),
                  const GetRatings(),
                  MovieDesc(item),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDesc extends StatelessWidget {
  final Item item;

  const MovieDesc(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              const Text(
                'RELEASE DATE:',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.releaseDate!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                const Text(
                  'RUNTIME:',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.runtime!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
