import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class AppBarDetails{
  static Image image = Image.asset(
    "assets/images/logo.png",
  );
  static Image photouser = Image.asset(
    "assets/images/photouser.png",
    width: 56,
    height:50,
  );
 static Text text=Text("Moody", style: GoogleFonts.nunitoSans(color: Colors.black));
 static Text nameuser=Text("Hello, Jade",
   style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 16),);
 static Badge badge=   Badge(
     alignment: Alignment.topRight,
     child: Icon(
       FontAwesomeIcons.bell,
       color: Colors.black,
     ));


}