import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerSlider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return     CarouselSlider(
        options: CarouselOptions(
          padEnds: false,
          viewportFraction: 1,
        ),
        items: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.green.shade50,
            ),
            padding: EdgeInsets.all(15),
            width: 328.w,
            height: 120.h,
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height:
                      MediaQuery.of(context).size.height / 150,
                    ),
                    Text(
                      "Positive Vibes",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18.sp,
                          color: Color(0xff252d3b)),
                    ),
                    SizedBox(
                      height:
                      MediaQuery.of(context).size.height / 70,
                    ),
                    Text(
                      "Boost your mood with\nPositive vibes",
                      style:
                      GoogleFonts.nunitoSans(fontSize: 20.sp),
                    ),
                    SizedBox(
                      height:
                      MediaQuery.of(context).size.height / 40,
                    ),
                    Row(
                      children: [
                        Image.asset(
                            "assets/images/_Play button.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width /
                              40,
                        ),
                        Text("10 min",
                            style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Image.asset(
                  "assets/images/Walking the Dog.png",
                  height: 80.h,
                  width: 80,
                )
              ],
            ),
          ),
        ]);
  }
}
