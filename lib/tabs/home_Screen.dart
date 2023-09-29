import 'package:ecommerce_ui/tabs/card_Shooping_Screen.dart';
import 'package:ecommerce_ui/tabs/fav_Screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  int currentindex = 0;
  int selectedvalue = 0;
  List<Widget> screens = [
    HomeScreen(),
    FavScreen(),
    cardShoopingScreen(),

  ];
  List<String> aseets = [
    "assets/images/download1.jpeg",
    "assets/images/download.jpeg",
    "assets/images/shoes.jpg",
    "assets/images/Men_Shoes.png",
    "assets/images/shoes_men.jpeg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          leading: Image.asset("assets/images/logo.png"),
            iconTheme: const IconThemeData(color: Colors.black),
            title: Text(
              "Name App",
              style: GoogleFonts.nunitoSans(color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(
                    FontAwesomeIcons.bell,
                    size: 19,
                    color: Colors.black,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(
                  "assets/images/imagr2.jpeg",
                ),
              ),
            ]),
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
        body: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.transparent)),
                      contentPadding: const EdgeInsets.only(left: -20),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      hintText: "Search Product",
                      hintStyle:
                          GoogleFonts.nunitoSans(color: Colors.grey.shade500),
                      filled: true,
                    )),
              ),
            ),
            SizedBox(
              height: 220.h,
              width: double.infinity.w,
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.7),
                  pageSnapping: false,
                  padEnds: false,
                  onPageChanged: (value) {
                    currentindex = value;
                    setState(() {});
                  },
                  itemCount: aseets.length,
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      margin: const EdgeInsets.all(8),
                      child: Image.asset(aseets[index], fit: BoxFit.cover),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    );
                  }),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 60.0),
            TabPageSelector(
              selectedColor: Colors.black,
              indicatorSize: 10,
              controller: TabController(
                  length: aseets.length,
                  vsync: this,
                  initialIndex: currentindex),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Expanded(
              child: SizedBox(
                height:MediaQuery.of(context).size.height,
                child:MasonryGridView.builder(
                  itemCount: 4,
                    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Stack(
                        children:[
                          const CircleAvatar(radius: 15,child: Icon(Icons.favorite)),
                          Container(
                          height: 200.h,
child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.asset(aseets[index],fit: BoxFit.cover)),
                        ),
                      ]),
                    ),


                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
