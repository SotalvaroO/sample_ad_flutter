import 'package:flutter/widgets.dart';

import '../foundation/color_fundation.dart';
import '../tokens/typography.dart';

class OwnText extends StatelessWidget {
  final String? text;
  final Color? colorText;
  final double? fontSize;
  final TextAlign? textAlign;

  OwnText(
      {Key? key,
      required this.text,
      this.colorText,
      this.fontSize,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.text!,
        style: TextStyle(color: this.colorText, fontSize: this.fontSize),
        textAlign: TextAlign.center,
        maxLines: 4);
  }
}

class H1 extends StatelessWidget{
  final String? text;
  H1({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OwnText (text:this.text, colorText: H1_COLOR,key: Key(key.toString()+'h1'),);
  }
}

class H2 extends StatelessWidget{
  final String? text;
  H2({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OwnText (text:this.text, colorText: H2_COLOR,fontSize: H2_SIZE, key: key,);
  }
}

class NormalText extends StatelessWidget{
  final String? text;
  NormalText({Key? key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OwnText (text:this.text, colorText: H3_COLOR, key: key,);
  }
}
