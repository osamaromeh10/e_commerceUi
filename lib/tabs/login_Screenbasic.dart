import 'package:ecommerce_ui/Text_Form_Custom.dart';
import 'package:ecommerce_ui/tabs/home_Screen.dart';
import 'package:ecommerce_ui/tabs/sign_upScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  static const String routeName = "login";
  var Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(alignment: Alignment.topCenter, children: [
              ClipPath(
                clipper: DrawCliper(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color(0xffA09D9D),
                      Color(0xff6D6B6B),
                      Color(0xff1D1D1D),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                  )),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 130),
                    child: Text("Welcome\n Back",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 35.sp,
                            height: 1.2,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)),
                  ),
                ),
              ),
            ]),
            SizedBox(height: MediaQuery.of(context).size.height / 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: Formkey,
                child: Column(
                  children: [
                    TextFormDefault(
                      labelText: "Email",
                      iconData: Icons.mail_outline,
                      type: TextInputType.emailAddress,
                      action: TextInputAction.next,
                      obscureText: false,
                      errorMessage: "Email must be Not Empty",
                      controller: EmailController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40.0,
                    ),
                    TextFormDefault(
                      labelText: "Password",
                      iconData: Icons.lock_outline,
                      type: TextInputType.visiblePassword,
                      action: TextInputAction.done,
                      obscureText: true,
                      errorMessage: "Password must be Not Empty",
                      controller: PasswordController,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 46.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forget Your Password?",
                            style: GoogleFonts.nunitoSans(
                                color: Color(0xff464444), fontSize: 15.5.sp)),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 25.0),
                    ElevatedButton(
                      onPressed: () {
                        if (Formkey.currentState!.validate()) {
                          print(EmailController.text);
                          print(PasswordController.text);
                        }
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23)),
                        fixedSize: const Size(250, 50),
                        backgroundColor: const Color(0xff545363),
                      ),
                      child: Text(
                        "Login",
                        style: GoogleFonts.nunitoSans(color: Colors.white,fontSize: 19),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 80.0),
                    ElevatedButton(
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.nunitoSans(color: Colors.white,fontSize: 19),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23)),
                        fixedSize: const Size(250, 50),
                        backgroundColor: const Color(0xff545363),
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class DrawCliper extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height - 100,
        size.width * 0.5, size.height - 50);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) => true;
}
