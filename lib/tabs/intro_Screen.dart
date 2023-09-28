
import 'package:ecommerce_ui/image_list_view.dart';

import 'package:ecommerce_ui/tabs/login_Screenbasic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName="introScreen";
  final _Controller = PageController();

  IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242122),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: _Controller,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
               Positioned(
                    top: -10,
                    left: -150,
                    child: Row(
                      children: [
                        imageListView(0),
                        imageListView(1),
                        imageListView(2),
                      ],
                    ),
                  ),
                   Positioned(
                    top: 80,
                    child: Text(
                      "Name app",
                      style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.60,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.white60,
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                      )),
                      child:  Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your Appearance \n Shows your Quality",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 25.sp,
                                height: 1.2.h,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 30),
                            Text(
                              " Change The Quality of Your\n Apperence with app",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                height: 1.5.h,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/20.0),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 110),
            child: SmoothPageIndicator(
              controller: _Controller,
              count: 2,
              effect: SwapEffect(
                activeDotColor: const Color(0xff242122),
                dotColor: const Color(0xff242122).withOpacity(0.3),
                dotHeight: 8,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: SizedBox(
                height: MediaQuery.of(context).size.height/14,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff242122),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.pushNamed(context, Login.routeName);
                  },
                  child:  Text("Sign up with Email",style: GoogleFonts.nunitoSans(fontSize: 18.sp,fontWeight: FontWeight.w400)),
                ),
              ))
        ],
      ),
    );
  }
}
