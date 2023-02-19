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

  const OurSelect ({ 
      Key? key, 
      required this.label, 
      required this.hint,
      this.icon, 
      required this.list, 
      required this.controller, 
      this.validator, 
      this.onTap, 
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
                            icon: const Icon(Icons.arrow_drop_down_circle_rounded, color: selectIconColor), 
                            hint: Text(hint),
                            dropdownColor: selectDropdownColor,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: selectBorderColor),
                                borderRadius: BorderRadius.circular(selectBorderRadius)
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide:  BorderSide( color: selectBorderColor, width: selectBorderWidth),
                                borderRadius: BorderRadius.circular(selectBorderRadius)
                              ),
                              labelText: label,
                              labelStyle: TextStyle(color: selectTextColor , fontSize: selectTextSize),
                              suffixIconColor: selectIconColor,
                              prefixIcon: icon != null ? Icon(icon, color: selectIconColor,) : null,
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