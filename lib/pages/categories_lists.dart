import 'package:flutter/material.dart';


import '../consts/constants.dart';

import '../widgets/appbar_back_button.dart';


class CategoryLits extends StatefulWidget {

 
  const CategoryLits({super.key,});

  @override
  State<CategoryLits> createState() => _CategoryLitsState();
}

class _CategoryLitsState extends State<CategoryLits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0,
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const AppBarTitle(
          title: 'Categories'),
          leading: const AppBarBackButton(),
      ),

    );
  }
}