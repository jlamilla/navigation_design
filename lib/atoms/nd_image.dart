import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  final String placeholder;
  final ImageProvider<Object> image;
  final double? widthImage;
  final double? heightImage;
  const OurImage({super.key,  required this.image, this.widthImage, this.heightImage, required this.placeholder,});

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
          placeholder: AssetImage(placeholder),
          image: image,
          width:widthImage ,
          height: heightImage,
          fit: BoxFit.cover,
        );
  }
}

class OurNetworkImage extends StatelessWidget {
  final String url;
  final String placeholder;
  final double? widthImage;
  final double? heightImage;
  const OurNetworkImage({super.key,  required this.url, this.widthImage, this.heightImage, required this.placeholder,});

  @override
  Widget build(BuildContext context) {
    return OurImage(image: NetworkImage(url), widthImage : widthImage , heightImage : heightImage, placeholder: placeholder,);
  }
}

class OurAssetImage extends StatelessWidget {
  final String assetName;
  final String placeholder;
  final double? widthImage;
  final double? heightImage;
  const OurAssetImage({super.key,  required this.assetName, this.widthImage, this.heightImage, required this.placeholder,});

  @override
  Widget build(BuildContext context) {
    return OurImage(image: AssetImage(assetName), widthImage : widthImage , heightImage : heightImage, placeholder: placeholder,);
  }
}



