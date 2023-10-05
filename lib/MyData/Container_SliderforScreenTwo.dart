import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerSliderTwo extends StatelessWidget {

String TextOne;
String TextTwo;
String image;

ContainerSliderTwo({required this.TextOne, required this.TextTwo, required this.image});

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
              color: Color(0xffEAECF5),
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
                    Container(
                      padding: REdgeInsets.all(5),
                      height: 30.h,width: 60.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),   color: Colors.white,),

                      child: Text(
                       TextOne,
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16.sp,
                            color: Color(0xff252d3b)),
                      ),
                    ),
                    SizedBox(
                      height:
                      MediaQuery.of(context).size.height / 70,
                    ),
                    Text(
                     TextTwo,
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
                            "assets/images/icon.png"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width /
                              40,
                        ),
                        Text("30 min",
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
                 image,
                  height: 80.h,
                  width: 80.w,
                )
              ],
            ),
          ),
        ]);
  }
}
