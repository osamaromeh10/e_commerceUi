import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormDefault extends StatelessWidget {

String labelText;
String errorMessage;
final IconData iconData;

final bool obscureText;
final TextInputType type;
final TextInputAction action;
var controller=TextEditingController();
TextFormDefault({super.key,
  required this.labelText,
  required this.iconData,
  required this.obscureText,
  required this.type,
  required this.action,
  required this.errorMessage,
  required this.controller,



});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 16),

controller:  controller,
textInputAction:action,
obscureText: obscureText,
keyboardType:type,
decoration: InputDecoration(
  labelText: labelText,
  labelStyle:  GoogleFonts.nunitoSans(
    color: Color(0xff464444)
  ),
  prefixIcon: Icon(iconData,color:const Color(0xff464444)),


  filled: true,
  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.grey,width: 1)

  ),

 border: OutlineInputBorder(

    borderRadius: BorderRadius.circular(25),
    borderSide: const BorderSide(color: Colors.grey,width: 1)
  ),
  focusedErrorBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.red,width: 1)

  ),



),
      validator: (value) {
        if(value!.isEmpty){
          return errorMessage;
        }
        return null;
      },





    );


  }
}
