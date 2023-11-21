import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../consts/constants.dart';
import '../models/buzz.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key, this.business});

 final Business? business;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Padding(
        
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: onBackground,
          height: 82,
          width: MediaQuery.of(context).size.width-30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/${business!.businessPicture}'),
                    fit: BoxFit.cover
                    )
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(business!.businessName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight:FontWeight.bold,
                        color: Colors.black
                      ),
                      ),
                        Text(
                          '${business!.businessSpecialty } • ${business!.businessHospital}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600
                      ),
                      
                      ),
                      const Spacer(),
                      SizedBox(width:  MediaQuery.of(context).size.width-136 ,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                          
                            children: [
                             RatingBar.builder(
                              itemSize: 16,
                              initialRating: double.parse(business!.businessRating,
                              
                              ),
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: EdgeInsets.zero,
                              itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber
                              ),
                              onRatingUpdate: (rating) {
                                debugPrint(rating.toString());
                              },
                              unratedColor: Colors.grey,
                             ),
                             const SizedBox(width: 4,),
                             Text(business!.businessNumberOfPatient,
                             style: const TextStyle(
                              color: Colors.black
                             ),
                             
                             ),
                            ],
                          ),
                          Container(
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: primaryColor,
                            ),
                            child: const Text('Open',
                             style: TextStyle(
                              color: Colors.white
                             ),
                            ),
                          )
                        ],
                      ),
                   
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}