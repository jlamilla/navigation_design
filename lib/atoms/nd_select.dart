import 'package:flutter/material.dart';
import 'package:navigation_design/fundation/color_fundation.dart';
import '../tokens/sizes_elements.dart';
import '../tokens/typography.dart';

class OurSelect extends StatelessWidget{
  
  final String label;
  final String hint;
  final IconData? icon;
  final List<String> list;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final Color? iconColor;
  final Color? dropdownColor;
  final Color? borderColor;
  final double? borderWidth;
  final Color? colorText;
  final double? fontSize;

  const OurSelect ({ 
      Key? key, 
      required this.label, 
      required this.hint,
      this.icon, 
      required this.list, 
      required this.controller, 
      this.validator, 
      this.onTap, 
      this.iconColor, 
      this.dropdownColor, 
      this.borderColor, 
      this.borderWidth, 
      this.colorText, 
      this.fontSize,
    }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Center(
            child: ValueListenableBuilder(
                      valueListenable: controller,
                      builder: (_, value , __ ) { 
                        return Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: DropdownButtonFormField<String>(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            value: controller.text != '' ? controller.text : null,
                            isExpanded: true,
                            validator: validator,
                            icon: Icon(Icons.arrow_drop_down_circle_rounded, color: iconColor ?? selectIconColor), 
                            hint: Text(hint),
                            dropdownColor: dropdownColor ?? selectDropdownColor,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: borderColor ?? selectBorderColor),
                                borderRadius: BorderRadius.circular(selectBorderRadius)
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide:  BorderSide( color: borderColor ?? selectBorderColor, width: borderWidth ?? selectBorderWidth),
                                borderRadius: BorderRadius.circular(selectBorderRadius)
                              ),
                              labelText: label,
                              labelStyle: TextStyle(color: colorText ?? selectTextColor , fontSize: fontSize ?? selectTextSize),
                              suffixIconColor: iconColor ?? selectIconColor,
                              prefixIcon: icon != null ? Icon(icon, color: iconColor ?? selectIconColor,) : null,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(selectBorderRadius))),
                            onChanged: (_) {},
                            items: list.map((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                onTap: onTap, 
                                child: Text(value)
                                );
                              }).toList(),
                          ),
                        );
                      },
                    ),
              );
  }
}