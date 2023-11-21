
import 'package:flutter/material.dart';

import '../consts/constants.dart';

import '../widgets/profile_widget.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
             Container(
              padding: const EdgeInsets.all(16),
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor.withOpacity(.5),
                        width: 5.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: ExactAssetImage('assets/images/profile.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .3,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            'Fezekile',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        const SizedBox(width: 4,),
                        SizedBox(
                            height: 20,
                            child: Image.asset("assets/images/icons/verified.png")),
                      ],
                    ),
                  ),
                  Text(
                    'fezekile.gxalaba@gmail.com',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.3),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: size.height * .6,
                    width: size.width,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        ProfileWidget(
                          icon: Icons.person,
                          title: 'My Profile',
                        ),
                        ProfileWidget(
                          icon: Icons.settings,
                          title: 'Settings',
                        ),
                        ProfileWidget(
                          icon: Icons.notifications,
                          title: 'Notifications',
                        ),
                        ProfileWidget(
                          icon: Icons.chat,
                          title: 'FAQs',
                        ),
                        ProfileWidget(
                          icon: Icons.share,
                          title: 'Share',
                        ),
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
                  ]
                ),
          )),
    );
    
    
  }
}
