import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../fundation/color_fundation.dart';
import '../tokens/sizes_elements.dart';

class OurButtonIcon extends StatelessWidget{
  
  final Function()? onPressed;
  final IconData? icon;
  final double? height;
  final double? width;

  const OurButtonIcon ({ 
      Key? key, 
      this.onPressed,
      this.icon,
      this.height, 
      this.width,
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
            alignment:Alignment.center,
            height: height ?? buttonSize,
            width: width ?? buttonSize,
            decoration: BoxDecoration(
              color: buttonIconBackground,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: buttonIconBoxShadow,
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ]
            ),
            child: IconButton(
              icon: Icon(icon, size: buttonIconSize, color: buttonIconColor,), 
              onPressed: onPressed,
            ),
          );
  }
}

class ButtonAddition extends StatelessWidget{
  final Function()? onPressed;
  final double? height;
  final double? width;
  const ButtonAddition({Key? key, this.onPressed, this.height, this.width}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurButtonIcon (icon: CupertinoIcons.plus, onPressed: onPressed, width: width, height: height, key: Key('${key}ButtonAddition'));
  }
}

class ButtonSubtraction extends StatelessWidget{
  final Function()? onPressed;
  final double? height;
  final double? width;
  const ButtonSubtraction({Key? key, this.onPressed, this.height, this.width}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurButtonIcon (icon: CupertinoIcons.minus, onPressed: onPressed, width: width, height: height, key: Key('${key}ButtonSubtraction'));
  }
}

