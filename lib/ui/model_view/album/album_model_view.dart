import 'package:flutter/material.dart';

import 'package:flutte_clean_code/ui/common/tokens/typography.dart';
import 'package:flutte_clean_code/ui/common/atoms/our_image.dart';
import 'package:flutte_clean_code/ui/common/tokens/colors.dart';
import '../../common/atoms/our_text.dart';

class AlbumModelView extends StatelessWidget {
  late final String url;
  late final String title;
  late final String description;

  AlbumModelView(
      {required this.url, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    final element = Container(
      height: 150,
      decoration: BoxDecoration(color: SCALE_02),
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OurImage(url: this.url, widthImage: 150, heightImage: 150),
          Column(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                child: Text(
                  this.title,
                  key: Key('title-album-api'),
                  style: TextStyle(fontSize: H2_SIZE),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(this.description),
              ),
            ],
          )
        ],
      ),
    );

    return element;
  }
}
