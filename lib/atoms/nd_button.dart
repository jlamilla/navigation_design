import 'package:flutter/material.dart';
import 'package:navigation_design/atoms/nd_text.dart';
import 'package:navigation_design/tokens/colors.dart';
import '../fundation/color_fundation.dart';
import '../tokens/sizes_elements.dart';

class OurButton extends StatelessWidget{
  
  final Function()? onTap;
  final String title;
  final IconData? icon;
  final bool boxShadow;
  final bool gradient;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final Color? colorText;
  final Color? shadow1;
  final Color? shadow2;
  final Color? color;
  final Color? iconColor;
  final Gradient? gradientColor;

  const OurButton ({ 
      Key? key, 
      this.onTap,
      this.icon, 
      required this.title, 
      required this.boxShadow, 
      required this.gradient,
      this.borderRadius, 
      this.height, 
      this.width,
      this.colorText, 
      this.shadow1, 
      this.shadow2, 
      this.color, 
      this.iconColor, 
      this.gradientColor
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: onTap,
              child: Container(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius ?? BorderRadius.circular(15),
                          color: gradient ? null : color ?? buttonOneColor,
                          gradient: gradient ? gradientColor ?? buttonGradient : null,
                          boxShadow: [
                                      boxShadow
                                      ? BoxShadow( color: shadow1 ?? buttonBoxShadow1, blurRadius: 10, offset: const Offset(0, 5) )
                                      : BoxShadow( color: shadow2 ?? buttonBoxShadow2, spreadRadius: 1, blurRadius: 10,)
                                    ]
                        ),
                        height: height ?? buttonHeight,
                        width: width ?? double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                              H2(text: title, color: colorText ?? buttonTextColor,),
                              Visibility(
                                visible: icon != null,
                                child: Row(
                                  children: [
                                    SizedBox(width: buttonWidth,),
                                    Icon(icon, color: iconColor ?? white,)
                                  ],
                                )
                                ),
                          ],
                        ),
                      ),
            );
  }
}

class ButtonNormal extends StatelessWidget {

  final Function()? onTap;
  final String title;
  final IconData? icon;
  final bool? boxShadow;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final Color? colorText;
  final Color? shadow1;
  final Color? shadow2;
  final Color? color;
  final Color? iconColor;
  
  const ButtonNormal({Key? key, this.onTap, required this.title, this.icon, this.boxShadow, this.borderRadius, this.height, this.width, this.colorText, this.shadow1, this.shadow2, this.color, this.iconColor}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return OurButton (
      title: title, 
      gradient: false , 
      boxShadow: boxShadow ?? false , 
      onTap: onTap, 
      icon: icon,
      borderRadius: borderRadius,
      width: width,
      height: height,
      colorText: colorText,
      shadow1: shadow1,
      shadow2: shadow2,
      color: color,
      iconColor: iconColor,
      key: Key('${key}ButtonNormal'),
    );
  }
}

class ButtonGradient extends StatelessWidget {

  final Function()? onTap;
  final String title;
  final IconData? icon;
  final bool? boxShadow;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final Color? colorText;
  final Color? shadow1;
  final Color? shadow2;
  final Color? iconColor;
  final Gradient? gradientColor;
  
  const ButtonGradient({Key? key, this.onTap, required this.title, this.icon, this.boxShadow, this.borderRadius, this.height, this.width, this.colorText, this.shadow1, this.shadow2, this.iconColor, this.gradientColor}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return OurButton (
      title: title, 
      gradient: true , 
      boxShadow: boxShadow ?? false , 
      onTap: onTap, 
      icon: icon,
      borderRadius: borderRadius,
      width: width,
      height: height,
      colorText: colorText,
      shadow1: shadow1,
      shadow2: shadow2,
      iconColor: iconColor,
      gradientColor: gradientColor,
      key: Key('${key}ButtonGradient'),
    );
  }
}
