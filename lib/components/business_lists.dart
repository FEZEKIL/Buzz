import 'package:flutter/material.dart';

import '../models/buzz.dart';

import 'business_card.dart';

class BusinessList extends StatelessWidget {
  const BusinessList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: topBusinesss.length,
     
      itemBuilder: (context, index) {
        return GestureDetector(
       onTap: () {
       Navigator.of(context).pushNamed('/business_details',
       arguments: Business(
        businessName: topBusinesss[index].businessName,
        businessDescription: topBusinesss[index].businessDescription,
        businessHospital: topBusinesss[index].businessHospital,
        businessIsOpen: topBusinesss[index].businessIsOpen,
        businessNumberOfPatient: topBusinesss[index].businessNumberOfPatient,
        businessPicture: topBusinesss[index].businessPicture,
        businessRating: topBusinesss[index].businessRating,
        businessSpecialty: topBusinesss[index].businessSpecialty,
        businessYearOfExperience: topBusinesss[index].businessYearOfExperience
       ),
       );
       },
       child: BusinessCard(
        business: topBusinesss[index],
       ),
        );
      },
    );
  }
}