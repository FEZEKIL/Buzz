import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
 

   final String coffeeImagePath;
   final String coffeeName;
   final String coffeePrice;
  
   const CoffeeTile({super.key,  required this.coffeeImagePath, required  this.coffeeName, required  this.coffeePrice,});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: 190,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                       color: Colors.black54,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Coffee Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                          child: Image.asset(coffeeImagePath),
                          ),
                          // Coffee name
                        Padding(padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text(coffeeName,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        
                          ),
                            const SizedBox(height: 4,),

                          Text('12km away',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                          ),
                          ],
                        ),
                        ),
                        // Price
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(coffeePrice),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  decoration: BoxDecoration( 
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Icon(Icons.star)
                                  ),
                              ),
                            ],
                          ),
                        )
                        ],
                      ),
                    ),
                  ),
                );
               
  }
}