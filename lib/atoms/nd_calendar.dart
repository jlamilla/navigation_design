/*
import 'package:flutter/material.dart';
import '../../../infrastructure/helpers/app_screen.dart';
import '../../styles/app_color.dart';

class CalendarCustom extends StatefulWidget {
   
  const CalendarCustom({
    Key? key,
    required this.label,
    required this.controller, 
  }
  ) : super(key: key);

  @override
  State<CalendarCustom> createState() => _CalendarCustomState();
    final String label;
    final TextEditingController controller;
}

class _CalendarCustomState extends State<CalendarCustom> {
  Future _selectDateFromPicker(BuildContext context) async {
    final DateTime? picked = await _calendarCustom(context, widget.label);
    if (picked != null) {
      setState(() { widget.controller.text = "${picked.day}/${picked.month}/${picked.year}";});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: GestureDetector(
        onTap: () => _selectDateFromPicker(context),
        child: TextFormField(
                controller: widget.controller,
                readOnly: true,
                cursorColor:AppColorThemeLight.primaryColor,
                autocorrect: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColorThemeLight.primaryColor),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderSide: const BorderSide( color: AppColorThemeLight.primaryColor,width: 2),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: widget.label,
                  labelStyle: TextStyle(color: AppColorThemeLight.primaryColor, fontSize: AppScreen.getDiagonalInPercent(1.8)),
                  suffixIconColor: AppColorThemeLight.primaryColor,
                  suffixIcon: IconButton(
                     onPressed: () => _selectDateFromPicker(context),
                     icon: const Icon(Icons.calendar_today_outlined, color: AppColorThemeLight.primaryColor,),
                     ),
                ),
        ),
      ),
    );
  }
}

Future _calendarCustom(context,label) async{
return showDatePicker(
      helpText: label,
      context: context,
      initialDate: DateTime(DateTime.now().year-18),
      firstDate: DateTime(DateTime.now().year - 80),
      lastDate: DateTime(DateTime.now().year-18),
      builder: (context, child) {
      return Theme(
        data: ThemeData.dark().copyWith(
            colorScheme:  const ColorScheme.light(
                onPrimary: AppColorThemeLight.primaryColor,
                onSurface: Colors.white,
                primary: Colors.white
              ),
              focusColor: Colors.white,
              highlightColor: Colors.white,
              hintColor:Colors.white,
              hoverColor:Colors.white,
            dialogBackgroundColor: AppColorThemeLight.primaryColor,
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, textStyle: const TextStyle(

                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        fontFamily: 'Quicksand'),
                    backgroundColor: AppColorThemeLight.secondaryColor, // Background color
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50))))),
        child: child!,
      );
    }
    );
}



*/