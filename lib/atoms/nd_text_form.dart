import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../fundation/color_fundation.dart';
import '../tokens/sizes_elements.dart';
import '../tokens/typography.dart';

class OurTextForm extends StatelessWidget{
  
  final String label;
  final TextInputType keyBoardType;
  final List<TextInputFormatter>? formatter;
  final String? Function(String?)? validator;
  final Function(String value)? onChanged;
  final IconData? prefixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final int? maxLength;
  final bool? enabled;

  const OurTextForm ({ 
      Key? key, 
      required this.label, 
      required this.keyBoardType, 
      this.formatter, 
      this.validator, 
      this.onChanged, 
      this.prefixIcon, 
      this.obscureText, 
      required this.decoration, 
      this.controller, 
      this.maxLength, 
      this.enabled, 
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(textFormPadding),
      child: TextFormField(
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: formatter,
        cursorColor: textFormCursorColor,
        autocorrect: false,
        keyboardType: keyBoardType,
        decoration: decoration,
        enabled: enabled,
        maxLength: maxLength,
        controller: controller,
      ),
    );
  }
}

class TextForm extends StatelessWidget{
  final String label;
  final TextInputType keyBoardType;
  final List<TextInputFormatter>? formatter;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool? buttonDelete;
  final int? maxLength;
  final bool? enabled;

  const TextForm({
    Key? key, 
    required this.label, 
    required this.keyBoardType, 
    this.formatter, 
    this.validator, 
    this.controller, 
    this.buttonDelete,
    this.maxLength, 
    this.enabled, 
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return OurTextForm (
        key: Key('${key}TextForm'),
        label: label, 
        keyBoardType: keyBoardType, 
        formatter: formatter, 
        validator: validator, 
        controller: controller, 
        maxLength: maxLength,
        enabled: enabled,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(textFormContentPadding),
          fillColor: textFormBackground,
          filled: true,
          labelText: label,
          labelStyle: TextStyle(color: textFormColor , fontSize: textFormSize),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: textFormBorderColor),
            borderRadius: BorderRadius.circular(textFormBorderRadius)
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide( color: textFormBorderColor , width: textFormBorderWidth),
            borderRadius: BorderRadius.circular(textFormBorderRadius)
          ),
          suffixIconColor: textFormIconColor,
          suffix: buttonDelete ?? false ? IconButton(icon: const Icon(Icons.close), onPressed: () { controller?.clear(); },
              ):null
        )
      );
  }
}

class TextFormAuth extends StatelessWidget{
  final String label;
  final TextInputType keyBoardType;
  final List<TextInputFormatter>? formatter;
  final String? Function(String?)? validator;
  final Function(dynamic value) onChanged;
  final IconData? prefixIcon;
  final bool? obscureText;
  final Function()? onPressedObscureTextFalse;
  final Function()? onPressedObscureTextTrue;
  final Color? colorText;
  final Color? colorIcon;
  final Color? colorBorder;
  final double? fontSize;
  final double? widthBorder;
  final double? contentPadding;

  const TextFormAuth({
    Key? key, 
    required this.label, 
    required this.keyBoardType, 
    this.formatter, 
    this.validator, 
    required this.onChanged, 
    this.prefixIcon, 
    this.obscureText, 
    this.onPressedObscureTextFalse, 
    this.onPressedObscureTextTrue, 
    this.colorText, 
    this.colorIcon, 
    this.colorBorder, 
    this.fontSize, 
    this.widthBorder, 
    this.contentPadding,
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return OurTextForm (
        key: Key('${key}TextFormAuth'),
        label: label, 
        keyBoardType: keyBoardType, 
        formatter: formatter, 
        validator: validator,
        onChanged: onChanged,
        prefixIcon: prefixIcon,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all( contentPadding ?? textFormContentPadding),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: colorIcon ?? textFormIconColor): null,
          fillColor: textFormBackground,
          filled: true,
          labelText: label,
          labelStyle: TextStyle(color: colorText ?? textFormColor , fontSize: fontSize ?? textFormSize),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder( borderSide: BorderSide( color: colorBorder ?? textFormBorderColor), borderRadius: BorderRadius.circular(textFormBorderRadius)),
          focusedBorder:  OutlineInputBorder(borderSide: BorderSide( color: colorBorder ?? textFormBorderColor , width: widthBorder ?? textFormBorderWidth),borderRadius: BorderRadius.circular(textFormBorderRadius)
          ),
          suffixIcon: obscureText != null ? obscureText!
                    ? IconButton(onPressed: onPressedObscureTextTrue , icon: const Icon(Icons.remove_red_eye, color: textFormObscureTextVisibleColor,))
                    : IconButton(onPressed: onPressedObscureTextFalse , icon: const Icon(Icons.visibility_off,color: textFormObscureTextNotVisibleColor,))
                    : null,
        )
      );
  }
}