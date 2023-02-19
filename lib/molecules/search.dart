import 'package:flutter/material.dart';
import '../fundation/color_fundation.dart';
import '../tokens/sizes_elements.dart';

class SearchBox extends StatelessWidget {
  
  final ValueChanged onChanged;
  final String hinText;
  final Color? color;
  final IconData? icon;
  const SearchBox({ Key? key, required this.onChanged, required this.hinText, this.color, this.icon, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(searchMargin),
      padding: EdgeInsets.symmetric( horizontal: searchWeight, vertical: searchHeight),
      decoration: BoxDecoration(color: color ?? searchColor,
      borderRadius: BorderRadius.circular(20)),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: searchTextColor),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(icon ?? Icons.search, color: searchIconColor),
          hintText: hinText,
          hintStyle: const TextStyle(color: searchTextColor)),
      ),
    );
  }
}