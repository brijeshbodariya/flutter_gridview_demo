import 'package:flutter/material.dart';
import 'package:flutter_gridview_demo/model/item.dart';
import 'package:flutter_gridview_demo/screen/get_ratings.dart';

class GridItemDetails extends StatelessWidget {
  final Item item;

  const GridItemDetails(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(item.name!),
      ),
      backgroundColor: const Color(0xFF761322),
      body: ListView(
        children: <Widget>[
          HeaderBanner(item),
          const GetTags(),
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
            child: Text(
              item.desc!,
              style: const TextStyle(
                fontSize: 13.0,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              margin: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
              width: 80.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Center(
                child: Text(
                  'Watch Movies',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF761322),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
            child: const Text(
              'Trailers',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          GetTrailers(item),
        ],
        // ),
        //],
      ),
    );
  }
}

class GetTags extends StatelessWidget {
  const GetTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 10.0),
      height: 35.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Center(
                child: Text(
                  'Action',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Center(
                child: Text(
                  'Adventure',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Center(
                child: Text(
                  'Fantasy',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SetTagsItem extends StatelessWidget {
  final String tag;

  const SetTagsItem(this.tag, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: 100.0,
        height: 35.0,
        margin: const EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF761322),
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            tag,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class HeaderBanner extends StatelessWidget {
  final Item item;

  const HeaderBanner(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      child: SizedBox(
        height: 380.0,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            HeaderImage(item.bannerUrl!),
            HeaderContent(item),
          ],
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  final String bannerUrl;

  const HeaderImage(this.bannerUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      bannerUrl,
      width: 600.0,
      height: 380.0,
      fit: BoxFit.cover,
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
        //color: Colors.black.withOpacity(0.1),
        constraints: const BoxConstraints.expand(
          height: 110.0,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 1.0),
                      child: Text(
                        item.name!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 26.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const GetRatings(),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        item.directors!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      item.releaseDateDesc!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GetTrailers extends StatelessWidget {
  final Item item;

  const GetTrailers(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset(
            item.trailerImg1!,
            width: 160.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0),
            child: Image.asset(
              item.trailerImg2!,
              width: 160.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0),
            child: Image.asset(
              item.trailerImg3!,
              width: 160.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
