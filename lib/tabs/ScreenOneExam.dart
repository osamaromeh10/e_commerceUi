import 'package:ecommerce_ui/MyData/ApparDetails.dart';
import 'package:ecommerce_ui/MyData/Container_Slider.dart';
import 'package:ecommerce_ui/MyData/Default_Emoji.dart';

import 'package:ecommerce_ui/MyData/Text%20Row.dart';
import 'package:ecommerce_ui/MyData/header_Message.dart';
import 'package:ecommerce_ui/MyData/indicator_Row.dart';
import 'package:ecommerce_ui/MyData/small%20Contanier.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class ScreenOneExam extends StatelessWidget {
  static const String routeName = " screenoneexam";



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: AppBarDetails.image,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: AppBarDetails.text,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 10,),
              child: AppBarDetails.badge,
            ),
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
                children: [
              HeaderMessage(
                headermessage: "Hello,Sara Rose",
                secondmessage: "How Are You Felling Today?",
              ),
              SizedBox(
                height: height / 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultEmoji(
                      image: Image.asset("assets/images/Frame 10.png"),
                      text: "Love",
                    ),
                    DefaultEmoji(
                      image: Image.asset("assets/images/cool.png"),
                      text: "Cool",
                    ),
                    DefaultEmoji(
                      image: Image.asset("assets/images/Frame 8.png"),
                      text: "Happy",
                    ),
                    DefaultEmoji(
                      image: Image.asset("assets/images/Frame 12.png"),
                      text: "Sad",
                    ),
                  ]),
              SizedBox(
                height: height / 30,
              ),
              TextRow(text: "Feature"),
              SizedBox(
                height: height / 40,
              ),
              ContainerSlider(),
              SizedBox(
                height: height / 40,
              ),
              indactorRow(
                  selectedcolor: Colors.grey,
                  unselectedcolor: Colors.grey.shade300),
              SizedBox(
                height: height / 40,
              ),
              TextRow(text: "Exercise"),
              SizedBox(
                height: height / 40,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SmallConrainer(
                            image: Image.asset("assets/images/face.png"),
                            color: const Color(0xffb89bf9).withOpacity(0.2),
                            text: "Relaxing"),
                      ),
                      Expanded(
                        child: SmallConrainer(
                            color: const Color(0xffffb2e2).withOpacity(0.2),
                            image:
                                Image.asset("assets/images/Meditation.png"),
                            text: "Meditation"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SmallConrainer(
                              color: const Color(0xfffcb679).withOpacity(0.2),
                              image:
                                  Image.asset("assets/images/Beathing.png"),
                              text: "Beathing")),
                      Expanded(
                          child: SmallConrainer(
                              color: const Color(0xffadd3e8).withOpacity(0.2),
                              image: Image.asset("assets/images/yoga.png"),
                              text: "Yoga")),
                    ],
                  ),

                ],
              ),


            ]),
          ),
        ));
  }
}
