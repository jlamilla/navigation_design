import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_design/atoms/nd_text.dart';
import '../fundation/color_fundation.dart';
import '../tokens/sizes_elements.dart';

class Loading extends StatelessWidget {

  final String? title;
  const Loading({Key? key, this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CupertinoActivityIndicator(
          color: loadingColor,
          radius: loadingRadius,
        ),
        SizedBox(
          height: loadingHeight,
        ),
        H2(text: title ?? 'Cargando'),
      ],
    ),
    );
  }
}