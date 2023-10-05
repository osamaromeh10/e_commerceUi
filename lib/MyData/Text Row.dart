import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextRow extends StatelessWidget {
  String text;


  TextRow({required this.text});

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Text(
          text,
          style: GoogleFonts.nunitoSans(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(width: MediaQuery.of(context).size.width/2.3,),
        Text(
          "See More",
          style: TextStyle(color: Colors.green, fontSize: 17),
        ),
        SizedBox(width: MediaQuery.of(context).size.width/50,),

        Icon(Icons.arrow_forward, size: 18, color: Colors.green),
      ],
    );
  }


}
