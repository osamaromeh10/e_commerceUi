import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FavScreen extends StatefulWidget {
  static const String routeName = "favscreen";

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> with TickerProviderStateMixin {
  List<String> photos = [
    "assets/images/Walking the Dog.png",
    "assets/images/Walking the Dog.png",
    "assets/images/Walking the Dog.png",
  ];
  int currentindex = 0;
  int selectedvalue = 0;

  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/logo.png",
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title:
            Text("Moody", style: GoogleFonts.nunitoSans(color: Colors.black)),
        actions: [
          Badge(
              alignment: Alignment.topRight,
              child: Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Hello,Sara Rose",
                style: GoogleFonts.nunitoSans(fontSize: 18.sp),
              ),
              Text(
                "How Are You Felling Today?",
                style: GoogleFonts.nunitoSans(fontSize: 18.sp),
              ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/Frame 10.png"),
                      radius: 25,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 180),
                    Text(
                      "Love",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 15.sp, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/cool.png"),
                      radius: 25,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 180),
                    Text(
                      "Cool",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 15.sp, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/Frame 8.png"),
                      radius: 25,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 180),
                    Text(
                      "Happy",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 15.sp, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/Frame 12.png"),
                      radius: 25,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 180),
                    Text(
                      "Sad",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 15.sp, color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Row(
              children: [
                Text(
                  "Feature",
                  style: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "See More",
                  style: TextStyle(color: Colors.green, fontSize: 17),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward, size: 18, color: Colors.green),
              ],
            ),
            CarouselSlider(items:[
              Container(
                height: 100,width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 140,top: 120),
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/Walking the Dog.png",width: 60,height: 60),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]
                , options: CarouselOptions(

                ))

          ],
        ),
      ),
    );
  }
}
