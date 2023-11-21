import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';


import '../consts/constants.dart';
import '../models/buzz.dart';

class BusinessDetails extends StatelessWidget {
  const BusinessDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Business;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'assets/images/${args.businessPicture}',
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/${args.businessPicture}',
                      ),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/svg/back-icon.png'
                                  ) 
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/svg/bookmark-icon.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Hero(
                    tag: args.businessName,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        args.businessName,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    '${args.businessSpecialty} • ${args.businessHospital} ',
                    style: const TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '${args.businessName} • ${args.businessDescription} ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Spacer(),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Experience',
                              style:
                                 TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  args.businessYearOfExperience,
                                  style:const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'yr',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const VerticalDivider(
                          thickness: 1,
                          color: primaryColor,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Patient',
                              style:
                                 TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  args.businessNumberOfPatient,
                                  style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'ps',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const VerticalDivider(
                          thickness: 1,
                          color: secondaryColor,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Rating',
                              style:
                                 TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  args.businessRating,
                                  style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                 
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: primaryColor,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/svg/icon-chat.png',
                            ),
                            
                            // image: Svg(
                            //   'assets/images/svg/icon-chat.svg',
                            //   size: Size(
                            //     36,
                            //     36,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: primaryColor,
                        ),
                        child: const Center(
                          child: Text(
                            'Contact Them',
                            style:
                                TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}