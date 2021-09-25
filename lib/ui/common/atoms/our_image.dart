import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  late final String url;
  late final double widthImage;
  late final double heightImage;
  OurImage(
      {required this.url, required this.heightImage, required this.widthImage});
  @override
  Widget build(BuildContext context) {
    Widget element = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    return element;
  }
}
