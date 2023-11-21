import 'package:flutter/material.dart';

import '../consts/constants.dart';



class MyMessageHandler{
 static void showSnackBar (var scaffoldKey, String message){
    scaffoldKey.currentState!.hideCurrentSnackBar();
    scaffoldKey.currentState!.showSnackBar( SnackBar(
                            duration: const Duration(seconds: 2),
                            backgroundColor: primaryColor,
                            content: Text( message,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            )));
  }
}