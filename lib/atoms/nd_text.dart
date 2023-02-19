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

class H1 extends StatelessWidget{
  final String text;
  const H1({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text: text, colorText: h1Color, fontSize: h1Size, fontWeight: FontWeight.normal, key: Key('${key}h1'),);
  }
}

class H1Bold extends StatelessWidget{
  final String text;
  const H1Bold({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text: text, colorText: h1Color, fontSize: h1Size, fontWeight: FontWeight.bold, key: Key('${key}h1'),);
  }
}

class H2 extends StatelessWidget{
  final String text;
  const H2({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text: text, colorText: h2Color, fontSize: h2Size, key: Key('${key}h2'),);
  }
}

class NormalText extends StatelessWidget{
  final String text;
  const NormalText({Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text: text, colorText: primaryColor,fontSize: contentTextSize, key: Key('${key}normalText'),);
  }
}