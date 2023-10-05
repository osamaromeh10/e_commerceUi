import 'package:ecommerce_ui/MyData/ApparDetails.dart';

import 'package:ecommerce_ui/MyData/Container_SliderforScreenTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ScreenTwoExam extends StatelessWidget {
  static const String routeName = "ScreenTwoExam";

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leadingWidth: 220,
          leading: Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10),
            child: Row(children: [
              AppBarDetails.photouser,
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10, right: 30),
                  child: AppBarDetails.nameuser),
            ]),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 10),
              child: AppBarDetails.badge,
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: GNav(
                  backgroundColor: Colors.blueAccent,
                  iconSize: 23,
                  activeColor: Colors.white,
                  color: Colors.black,
                  padding: EdgeInsets.all(16),
                  tabs: [
                    GButton(
                      icon: Icons.home,
                    ),
                    GButton(
                      icon: Icons.favorite_border,
                    ),
                    GButton(
                      icon: FontAwesomeIcons.cartShopping,
                    ),
                    GButton(
                      icon: FontAwesomeIcons.user,
                    ),
                  ]),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Ready to workout?",
                      style: GoogleFonts.nunitoSans(fontSize: 18.sp)),
                ],
              ),
              SizedBox(
                height: Height * 0.03,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 65.h,
                width: 300.w,
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/heart.png"),
                            SizedBox(
                              width: Width * 0.02,
                            ),
                            Text(
                              "Heart Rarte",
                              style: GoogleFonts.nunitoSans(fontSize: 15.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Height * 0.01,
                        ),
                        Text(
                          "81 Bpm",
                          style: GoogleFonts.nunitoSans(fontSize: 15.sp),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/list.png"),
                            SizedBox(
                              width: Width * 0.02,
                            ),
                            Text(
                              "To_Do",
                              style: GoogleFonts.nunitoSans(fontSize: 15.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Height * 0.01,
                        ),
                        Text(
                          "32,5 %",
                          style: GoogleFonts.nunitoSans(fontSize: 15.sp),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/calo.png"),
                            SizedBox(
                              width: Width * 0.02,
                            ),
                            Text(
                              "calo",
                              style: GoogleFonts.nunitoSans(fontSize: 15.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Height * 0.01,
                        ),
                        Text(
                          "1000  Cal",
                          style: GoogleFonts.nunitoSans(fontSize: 15.sp),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text(
                  "Workout Programs",
                  style: GoogleFonts.nunitoSans(
                      fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: Height * 0.03,
              ),
              Container(
                height: 40.h,
                child: TabBar(

                    indicatorPadding: EdgeInsets.only(top: 15),
                    indicatorColor: Color(0xff363F72),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Text("All Type",
                          style:
                              GoogleFonts.nunitoSans(color: Color(0xff363F72))),
                      Text("FullBody", style: GoogleFonts.nunitoSans()),
                      Text("Upper", style: GoogleFonts.nunitoSans()),
                      Text("Lower", style: GoogleFonts.nunitoSans()),
                    ]
                ),
              ),
              SizedBox(
                height: Height * 0.03,
              ),
              ContainerSliderTwo(
                TextOne: '7 days',
                TextTwo: "Morning Yoga\nImprove mental focus.",
                image: "assets/images/photocontainer.png",
              ),
              SizedBox(
                height: Height * 0.02,
              ),
              ContainerSliderTwo(
                TextOne: "3 days",
                TextTwo: "Plank Exercise\nImprove posture and \nstability.",
                image: "assets/images/pngwing 1.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
