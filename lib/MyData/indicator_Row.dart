import 'package:flutter/material.dart';

class indactorRow extends StatelessWidget {

Color selectedcolor;
Color unselectedcolor;

indactorRow({required this.selectedcolor, required this.unselectedcolor});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children:[
          CircleAvatar(radius: 5, backgroundColor: selectedcolor),
          SizedBox(
            width: MediaQuery.of(context).size.width / 60,
          ),
       CircleAvatar(radius: 5, backgroundColor: unselectedcolor),
          SizedBox(
            width: MediaQuery.of(context).size.width / 60,
          ),
       CircleAvatar(radius: 5, backgroundColor: unselectedcolor),

    ]);
  }
}
