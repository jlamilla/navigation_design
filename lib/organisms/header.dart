import 'package:flutter/material.dart';
import 'package:navigation_design/fundation/color_fundation.dart';
import '../atoms/nd_text.dart';
import '../tokens/colors.dart';
import '../tokens/sizes_elements.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {

  const AppBarCustom({ 
    Key? key, 
    required this.title, 
    this.backButton = false, 
    this.onPressed,
    this.actions,
    }) : super(key: key);

  final String title;
  final bool backButton;
  final Widget? actions;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      centerTitle: false,
      title: H1(text: title),
      leading: (backButton)
          ? IconButton(
              icon: Icon( Icons.arrow_back_ios_new_rounded, color: headerIconColor, size: headerIconSize,),
              onPressed: onPressed ?? (() => Navigator.of(context).pop()), 
            ): IconButton(
              icon:  Icon(Icons.sort, color: headerIconColor ,size: headerIconSize,),
              onPressed: onPressed,
            ),
      toolbarHeight: headerSize,
      actions: actions != null ? [actions!] : null ,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(headerSize);
}