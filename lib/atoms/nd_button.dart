import 'package:flutter/material.dart';
import 'package:navigation_design/atoms/nd_text.dart';
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

  const OurButton ({ 
      Key? key, 
      this.onTap,
      this.icon, 
      required this.title, 
      required this.boxShadow, 
      required this.gradient,
      this.borderRadius, 
      this.height, 
      this.width
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: onTap,
              child: Container(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius ?? BorderRadius.circular(15),
                          gradient: gradient ? buttonGradient : null,
                          boxShadow: [
                                      boxShadow
                                      ? const BoxShadow( color: buttonBoxShadow1, blurRadius: 10, offset: Offset(0, 5) )
                                      : BoxShadow( color: buttonBoxShadow2, spreadRadius: 1, blurRadius: 10,)
                                    ]
                        ),
                        height: height ?? buttonHeight,
                        width: width ?? double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                              H2(text: title),
                              Visibility(
                                visible: icon != null,
                                child: Row(
                                  children: [
                                    SizedBox(width: buttonWidth,),
                                    Icon(icon)
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
  
  const ButtonNormal({Key? key, this.onTap, required this.title, this.icon, this.boxShadow, this.borderRadius, this.height, this.width}) : super(key: key);
  
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
  
  const ButtonGradient({Key? key, this.onTap, required this.title, this.icon, this.boxShadow, this.borderRadius, this.height, this.width}) : super(key: key);
  
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
      key: Key('${key}ButtonGradient'),
    );
  }
}
