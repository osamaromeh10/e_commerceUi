import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderMessage extends StatelessWidget {

String headermessage;
String secondmessage;

HeaderMessage({required this.headermessage,required this.secondmessage});


  @override
  Widget build(BuildContext context) {
    return Text(
      "${headermessage}\n ${secondmessage}",
      style: GoogleFonts.nunitoSans(fontSize: 18.sp),
    );
  }
}
