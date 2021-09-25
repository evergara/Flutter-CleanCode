import 'package:flutter/material.dart';
import 'package:flutte_clean_code/ui/common/tokens/typography.dart';
import '../tokens/colors.dart';

class OurText extends StatelessWidget {
  late final String text;
  late final Color colorText;
  late final double? fontSize;
  late final TextAlign? textAlign;
  OurText(
      {Key? key,
      required this.text,
      required this.colorText,
      this.fontSize,
      this.textAlign})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(this.text,
        style: TextStyle(color: this.colorText, fontSize: this.fontSize),
        textAlign: TextAlign.center,
        maxLines: 4);
  }
}

class H1 extends StatelessWidget {
  late final String text;
  H1({required Key key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: this.text,
      colorText: BRAND_SECONDARY,
      key: Key(key.toString() + 'h1'),
    );
  }
}

class H2 extends StatelessWidget {
  late final String text;
  H2({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OurText(text: this.text, colorText: SCALE_06, fontSize: H2_SIZE);
  }
}

class NormalText extends StatelessWidget {
  late final String text;
  NormalText({required Key key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: this.text,
      colorText: SCALE_03,
    );
  }
}
