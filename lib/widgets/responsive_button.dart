import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
   ResponsiveButton({super.key, this.width, this.isResponsive = false });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: width,
     height: 50,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      
     ),
    
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/button-one.png')
      ]),
    );
  }
}