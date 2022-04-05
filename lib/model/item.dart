import 'package:meta/meta.dart';

class Item {
  final int? id;
  final String? name;
  final String? category;
  final String? releaseDate;
  final String? releaseDateDesc;
  final String? directors;
  final String? runtime;
  final String? desc;
  final double? rating;
  final String? imageUrl;
  final String? bannerUrl;
  final String? trailerImg1;
  final String? trailerImg2;
  final String? trailerImg3;

  Item({
    @required this.id,
    @required this.name,
    @required this.category,
    @required this.directors,
    @required this.releaseDate,
    @required this.releaseDateDesc,
    @required this.runtime,
    @required this.desc,
    @required this.rating,
    @required this.imageUrl,
    @required this.bannerUrl,
    @required this.trailerImg1,
    @required this.trailerImg2,
    @required this.trailerImg3,
  });
}
