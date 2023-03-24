import 'package:flutter/material.dart';
import 'package:navigation_design/fundation/color_fundation.dart';
import 'package:navigation_design/tokens/colors.dart';
import 'package:navigation_design/tokens/typography.dart';

class OurText extends StatelessWidget{
  
  final String text;
  final Color? colorText;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final String? fontFamily;

  const OurText ({ 
      Key? key, 
      required this.text, 
      this.colorText, 
      this.fontSize, 
      this.textAlign, 
      this.fontWeight,
      this.fontFamily
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text( text,
        style: TextStyle(
          color: colorText,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        ),
        textAlign: TextAlign.center,
        maxLines: 4,
    );
  }
}
//Title
class H1 extends StatelessWidget{
  final String text;
  final Color? color;
  const H1({Key? key, required this.text, this.color}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (
      text: text, 
      colorText: color ?? h1Color, 
      fontSize: h1Size, 
      fontWeight: FontWeight.w600, 
      textAlign: TextAlign.center, 
      key: Key('${key}h1'),
    );
  }
}
//sub - title
class H2 extends StatelessWidget{
  final String text;
  final Color? color;
  const H2({Key? key, required this.text, this.color}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (
      text: text, 
      colorText: color ?? h2Color, 
      fontSize: h2Size, 
      fontWeight: FontWeight.w500, 
      key: Key('${key}h2'),
    );
  }
}

//
class SpamText extends StatelessWidget{
  final String text;
  final int? maxLines;
  const SpamText({Key? key, required this.text, this.maxLines}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      key: Key('${key}spamText'),
      maxLines: maxLines,
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: spamTextColor,
          height: spamTextSize, 
        )
      )
    );
  }
}

//Links
class LinkText extends StatelessWidget{
  final String text;
  const LinkText({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (
      text: text, 
      colorText: linkTextColor, 
      fontSize: linkTextSize, 
      fontWeight: FontWeight.w500, 
      key: Key('${key}linkText'),
    );
  }
}

//
class NormalText extends StatelessWidget{
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  const NormalText({Key? key, required this.text, this.color, this.textAlign}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (
      text: text, 
      colorText: color ?? primaryColor,
      textAlign: textAlign,
      fontSize: normalTextSize,
      fontWeight: FontWeight.normal,
      key: Key('${key}normalText'),
    );
  }
}