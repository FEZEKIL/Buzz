import 'package:flutter/material.dart';
import '../consts/constants.dart';

class BrowserBox extends StatelessWidget {
  const BrowserBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: secondaryColor,
      ),
    );
  }
}