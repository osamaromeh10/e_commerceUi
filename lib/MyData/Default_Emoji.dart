import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultEmoji extends StatelessWidget {

Image image;
String text;

DefaultEmoji({required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              child: image,
              radius: 25,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 180),
            Text(
            text,
              style: GoogleFonts.nunitoSans(
                  fontSize: 15.sp, color: Colors.black),
            )
          ],
        ),
      ],
    );
  }
}
