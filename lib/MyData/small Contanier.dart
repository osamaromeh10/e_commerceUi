import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallConrainer extends StatelessWidget {

Image image;
String text;
Color color;

SmallConrainer({required this.image,required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.all(10),
margin: EdgeInsets.only(right: 20,bottom: 20),
      height: 50.h,width: 60.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color:color),
      child: Row(
        children: [
         image,
          SizedBox(
            width: 20,
          ),
          Text("${text}",style: GoogleFonts.nunitoSans(fontSize: 18)),
        ],
      ),
    );
  }
}
